"""
Comprehensive asset extraction from Real Chess 3D.
Extracts: textures, meshes, audio, materials, shaders, fonts, animations, text assets,
scene hierarchy, and component references.
"""
import UnityPy
import json
from pathlib import Path
from collections import Counter, defaultdict
from datetime import datetime

# Paths
DATA_DIR = "/home/z/my-project/download/chess-re/native/base_apk_assets/assets/bin/Data"
OUT_DIR = Path("/home/z/my-project/download/chess-re/extracted-assets")
SCENE_DIR = Path("/home/z/my-project/download/chess-re/scene-data")
SCENE_DIR.mkdir(parents=True, exist_ok=True)

# Ensure subdirs
for sub in ["textures", "meshes", "audio", "materials", "fonts", "text", 
            "animations", "shaders", "compute-shaders", "cubemaps", "sprites",
            "prefabs", "controllers", "scripts_meta"]:
    (OUT_DIR / sub).mkdir(parents=True, exist_ok=True)

print(f"[{datetime.now().strftime('%H:%M:%S')}] Loading: {DATA_DIR}")
env = UnityPy.load(DATA_DIR)

# Type counts
type_counts = Counter()
for obj in env.objects:
    type_counts[obj.type.name] += 1

print(f"Total objects: {sum(type_counts.values()):,}")
print("\nType counts (top 20):")
for t, c in sorted(type_counts.items(), key=lambda x: -x[1])[:20]:
    print(f"  {t:30s} {c}")

# ============== Helper ==============
def sanitize(name):
    return "".join(c for c in str(name) if c.isalnum() or c in "._- ")

def unique_path(directory, name, ext):
    p = directory / f"{name}{ext}"
    i = 1
    while p.exists():
        p = directory / f"{name}_{i}{ext}"
        i += 1
    return p

# ============== Extract Everything ==============
stats = defaultdict(int)
errors = defaultdict(int)

# Collect GameObjects, Transforms, MonoBehaviours for scene hierarchy
gameobjects = {}
transforms = {}
transform_to_gameobject = {}
gameobject_to_transform = {}
components_by_go = defaultdict(list)
monobehaviours = []
scripts = {}

print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Starting extraction...")

for obj in env.objects:
    type_name = obj.type.name
    
    try:
        if type_name in ("Texture2D", "Sprite"):
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"{type_name}_{obj.path_id}"
            name = sanitize(name)
            img = data.image
            if img:
                subdir = "sprites" if type_name == "Sprite" else "textures"
                out_path = unique_path(OUT_DIR / subdir, name, ".png")
                img.save(str(out_path))
                stats[type_name] += 1
        
        elif type_name == "Mesh":
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"mesh_{obj.path_id}"
            name = sanitize(name)
            obj_str = data.export()
            out_path = unique_path(OUT_DIR / "meshes", name, ".obj")
            out_path.write_text(obj_str)
            stats["mesh"] += 1
        
        elif type_name == "AudioClip":
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"audio_{obj.path_id}"
            name = sanitize(name)
            samples = list(data.samples)
            for i, (sample_data, ext) in enumerate(samples):
                if len(samples) > 1:
                    out_path = unique_path(OUT_DIR / "audio", f"{name}_{i}", ext)
                else:
                    out_path = unique_path(OUT_DIR / "audio", name, ext)
                out_path.write_bytes(sample_data)
                stats["audio"] += 1
        
        elif type_name == "Font":
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"font_{obj.path_id}"
            name = sanitize(name)
            if data.m_FontData:
                ext = ".otf" if data.m_FontData[:4] == b"OTTO" else ".ttf"
                out_path = unique_path(OUT_DIR / "fonts", name, ext)
                out_path.write_bytes(data.m_FontData)
                stats["font"] += 1
        
        elif type_name == "TextAsset":
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"text_{obj.path_id}"
            name = sanitize(name)
            text = data.m_Script
            if isinstance(text, str):
                out_path = unique_path(OUT_DIR / "text", name, ".txt")
                out_path.write_text(text)
            else:
                out_path = unique_path(OUT_DIR / "text", name, ".bytes")
                out_path.write_bytes(text)
            stats["text"] += 1
        
        elif type_name == "Material":
            data = obj.read()
            name = getattr(data, 'm_Name', '') or f"material_{obj.path_id}"
            name = sanitize(name)
            try:
                tt = obj.read_typetree()
                out_path = unique_path(OUT_DIR / "materials", name, ".json")
                out_path.write_text(json.dumps(tt, indent=2, default=str))
                stats["material"] += 1
            except Exception:
                pass
        
        elif type_name == "Shader":
            data = obj.read()
            name = ""
            try:
                if hasattr(data, 'm_ParsedForm'):
                    name = data.m_ParsedForm.m_Name
            except Exception:
                pass
            name = sanitize(name or f"shader_{obj.path_id}")
            try:
                if hasattr(data, 'm_Script'):
                    out_path = unique_path(OUT_DIR / "shaders", name, ".shader")
                    out_path.write_bytes(data.m_Script)
                    stats["shader"] += 1
            except Exception:
                pass
        
        elif type_name == "ComputeShader":
            data = obj.read()
            name = sanitize(getattr(data, 'm_Name', '') or f"compute_{obj.path_id}")
            try:
                if hasattr(data, 'm_Script'):
                    out_path = unique_path(OUT_DIR / "compute-shaders", name, ".compute")
                    out_path.write_bytes(data.m_Script)
                    stats["compute_shader"] += 1
            except Exception:
                pass
        
        elif type_name == "Cubemap":
            data = obj.read()
            name = sanitize(getattr(data, 'm_Name', '') or f"cubemap_{obj.path_id}")
            img = data.image
            if img:
                out_path = unique_path(OUT_DIR / "cubemaps", name, ".png")
                img.save(str(out_path))
                stats["cubemap"] += 1
        
        elif type_name == "AnimationClip":
            data = obj.read()
            name = sanitize(getattr(data, 'm_Name', '') or f"anim_{obj.path_id}")
            try:
                tt = obj.read_typetree()
                out_path = unique_path(OUT_DIR / "animations", name, ".json")
                out_path.write_text(json.dumps(tt, indent=2, default=str))
                stats["animation"] += 1
            except Exception:
                pass
        
        elif type_name == "RuntimeAnimatorController":
            data = obj.read()
            name = sanitize(getattr(data, 'm_Name', '') or f"controller_{obj.path_id}")
            try:
                tt = obj.read_typetree()
                out_path = unique_path(OUT_DIR / "controllers", name, ".json")
                out_path.write_text(json.dumps(tt, indent=2, default=str))
                stats["controller"] += 1
            except Exception:
                pass
        
        elif type_name == "MonoScript":
            data = obj.read()
            name = sanitize(getattr(data, 'm_Name', '') or f"script_{obj.path_id}")
            scripts[obj.path_id] = {
                "name": data.m_Name if hasattr(data, 'm_Name') else "",
                "namespace": data.m_Namespace if hasattr(data, 'm_Namespace') else "",
                "class_name": data.m_ClassName if hasattr(data, 'm_ClassName') else "",
                "assembly_name": data.m_AssemblyName if hasattr(data, 'm_AssemblyName') else "",
            }
            # Save a .cs.meta file with this info
            meta = {
                "type": "MonoScript",
                "path_id": obj.path_id,
                **scripts[obj.path_id]
            }
            out_path = unique_path(OUT_DIR / "scripts_meta", name, ".json")
            out_path.write_text(json.dumps(meta, indent=2))
        
        # Scene data collection
        elif type_name == "GameObject":
            data = obj.read()
            gameobjects[obj.path_id] = {
                "name": data.m_Name,
                "active": data.m_IsActive if hasattr(data, 'm_IsActive') else True,
                "components": [],
                "path_id": obj.path_id,
            }
        
        elif type_name == "Transform":
            data = obj.read()
            father_id = data.m_Father.path_id if data.m_Father else None
            children_ids = [c.path_id for c in data.m_Children] if hasattr(data, 'm_Children') else []
            transforms[obj.path_id] = {
                "father": father_id,
                "children": children_ids,
                "position": [data.m_LocalPosition.x, data.m_LocalPosition.y, data.m_LocalPosition.z],
                "rotation": [data.m_LocalRotation.x, data.m_LocalRotation.y, 
                             data.m_LocalRotation.z, data.m_LocalRotation.w],
                "scale": [data.m_LocalScale.x, data.m_LocalScale.y, data.m_LocalScale.z],
            }
        
        elif type_name == "RectTransform":
            data = obj.read()
            father_id = data.m_Father.path_id if data.m_Father else None
            children_ids = [c.path_id for c in data.m_Children] if hasattr(data, 'm_Children') else []
            transforms[obj.path_id] = {
                "father": father_id,
                "children": children_ids,
                "position": [data.m_LocalPosition.x, data.m_LocalPosition.y, data.m_LocalPosition.z],
                "rotation": [data.m_LocalRotation.x, data.m_LocalRotation.y, 
                             data.m_LocalRotation.z, data.m_LocalRotation.w],
                "scale": [data.m_LocalScale.x, data.m_LocalScale.y, data.m_LocalScale.z],
            }
        
        elif type_name == "MonoBehaviour":
            data = obj.read()
            script_path_id = data.m_Script.path_id if hasattr(data, 'm_Script') else None
            go_id = data.m_GameObject.path_id if hasattr(data, 'm_GameObject') else None
            
            tt = None
            try:
                tt = obj.read_typetree()
            except Exception:
                pass
            
            mb = {
                "path_id": obj.path_id,
                "script_path_id": script_path_id,
                "gameobject_path_id": go_id,
                "enabled": data.m_Enabled if hasattr(data, 'm_Enabled') else True,
                "typetree": tt,
            }
            monobehaviours.append(mb)
            if go_id:
                components_by_go[go_id].append({
                    "type": "MonoBehaviour",
                    "path_id": obj.path_id,
                    "script_path_id": script_path_id,
                })
        
        # Other components
        elif type_name in ("MeshRenderer", "MeshFilter", "MeshCollider",
                           "BoxCollider", "SphereCollider", "CapsuleCollider",
                           "AudioSource", "AudioListener",
                           "Camera", "Light",
                           "Canvas", "CanvasRenderer",
                           "Animator", "Animation",
                           "ParticleSystem", "ParticleSystemRenderer",
                           "Rigidbody"):
            data = obj.read()
            go_id = data.m_GameObject.path_id if hasattr(data, 'm_GameObject') else None
            
            comp_info = {
                "type": type_name,
                "path_id": obj.path_id,
                "gameobject_path_id": go_id,
            }
            
            # Extract type-specific data
            if type_name == "MeshFilter" and hasattr(data, 'm_Mesh'):
                comp_info["mesh_path_id"] = data.m_Mesh.path_id if data.m_Mesh else None
            elif type_name == "MeshRenderer" and hasattr(data, 'm_Materials'):
                comp_info["materials"] = [m.path_id if m else None for m in data.m_Materials]
            elif type_name == "Camera":
                comp_info["field_of_view"] = getattr(data, 'fieldOfView', None) or getattr(data, 'm_FieldOfView', None)
            elif type_name == "AudioSource":
                comp_info["audio_clip_path_id"] = data.m_AudioClip.path_id if hasattr(data, 'm_AudioClip') and data.m_AudioClip else None
            
            if go_id:
                components_by_go[go_id].append(comp_info)
    
    except Exception as e:
        errors[type_name] += 1

# ============== Build Scene Hierarchy ==============
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] Building scene hierarchy...")

# Link GameObjects to their Transform
for obj in env.objects:
    if obj.type.name == "GameObject":
        data = obj.read()
        for component in data.m_Components:
            try:
                comp_path_id = component.component.path_id if hasattr(component, 'component') else component.path_id
            except Exception:
                comp_path_id = None
            if comp_path_id and comp_path_id in transforms:
                gameobject_to_transform[obj.path_id] = comp_path_id
                transform_to_gameobject[comp_path_id] = obj.path_id
                gameobjects[obj.path_id]["transform"] = comp_path_id
                break

# Build tree
def build_tree(transform_id):
    if transform_id not in transforms:
        return None
    t = transforms[transform_id]
    go_id = transform_to_gameobject.get(transform_id)
    go = gameobjects.get(go_id, {})
    
    node = {
        "name": go.get("name", "?"),
        "active": go.get("active", True),
        "path_id": go_id,
        "position": t["position"],
        "rotation": t["rotation"],
        "scale": t["scale"],
        "components": components_by_go.get(go_id, []),
        "children": []
    }
    for child_t_id in t["children"]:
        child = build_tree(child_t_id)
        if child:
            node["children"].append(child)
    return node

# Find roots
roots = [t_id for t_id, t in transforms.items() if t["father"] is None]
hierarchy = [build_tree(r) for r in roots if build_tree(r)]

# Save scene hierarchy
(SCENE_DIR / "scene_hierarchy.json").write_text(json.dumps(hierarchy, indent=2, default=str))
print(f"  Scene hierarchy: {len(hierarchy)} root objects, {len(gameobjects)} total GameObjects")

# Save components
all_components = {}
for comps in components_by_go.values():
    for c in comps:
        all_components[c["path_id"]] = c
(SCENE_DIR / "components.json").write_text(json.dumps(all_components, indent=2, default=str))
print(f"  Components: {len(all_components)}")

# Save MonoBehaviours
(SCENE_DIR / "monobehaviours.json").write_text(json.dumps(monobehaviours, indent=2, default=str))
print(f"  MonoBehaviours: {len(monobehaviours)}")

# Save scripts lookup
(SCENE_DIR / "scripts.json").write_text(json.dumps(scripts, indent=2, default=str))
print(f"  MonoScripts: {len(scripts)}")

# Save type counts
(OUT_DIR / "type_counts.json").write_text(json.dumps(dict(type_counts), indent=2))

# ============== Final Summary ==============
print(f"\n[{datetime.now().strftime('%H:%M:%S')}] === EXTRACTION COMPLETE ===\n")

print("Extracted asset counts:")
for k, v in sorted(stats.items()):
    print(f"  {k:20s} {v}")

print(f"\nErrors:")
for k, v in sorted(errors.items()):
    print(f"  {k:20s} {v} errors")

# Show chess-specific findings
print("\n=== Chess-Specific Assets ===")
chess_textures = list((OUT_DIR / "textures").glob("*[Pp]awn*")) + \
                 list((OUT_DIR / "textures").glob("*[Rr]ook*")) + \
                 list((OUT_DIR / "textures").glob("*[Kk]night*")) + \
                 list((OUT_DIR / "textures").glob("*[Bb]ishop*")) + \
                 list((OUT_DIR / "textures").glob("*[Qq]ueen*")) + \
                 list((OUT_DIR / "textures").glob("*[Kk]ing*")) + \
                 list((OUT_DIR / "textures").glob("*[Bb]oard*"))
print(f"Chess textures: {len(chess_textures)}")

chess_meshes = list((OUT_DIR / "meshes").glob("*[Pp]awn*")) + \
               list((OUT_DIR / "meshes").glob("*[Rr]ook*")) + \
               list((OUT_DIR / "meshes").glob("*[Kk]night*")) + \
               list((OUT_DIR / "meshes").glob("*[Bb]ishop*")) + \
               list((OUT_DIR / "meshes").glob("*[Qq]ueen*")) + \
               list((OUT_DIR / "meshes").glob("*[Kk]ing*")) + \
               list((OUT_DIR / "meshes").glob("*[Bb]oard*"))
print(f"Chess meshes: {len(chess_meshes)}")

# Top scripts used
print("\n=== Top Scripts Used in Scene ===")
script_usage = Counter()
for mb in monobehaviours:
    sid = mb["script_path_id"]
    if sid and sid in scripts:
        sname = scripts[sid]["name"]
        script_usage[sname] += 1
for name, count in script_usage.most_common(15):
    print(f"  {name:40s} {count}")

# Top GameObject names
print("\n=== Top GameObject Names ===")
go_name_counts = Counter()
for go in gameobjects.values():
    go_name_counts[go["name"]] += 1
for name, count in go_name_counts.most_common(20):
    print(f"  {name:40s} {count}")
