// string-dump.js — Dump all IL2CPP string creations at runtime
const il2cpp_string_new = Module.findExportByName('libil2cpp.so', 'il2cpp_string_new');
if (il2cpp_string_new) {
  Interceptor.attach(il2cpp_string_new, {
    onLeave(retval) {
      try {
        const len = retval.add(0x10).readU32();
        if (len > 0 && len < 1024) {
          const str = retval.add(0x14).readUtf16String(len);
          if (str && str.length > 3) {
            console.log('[str]', str);
          }
        }
      } catch (e) {}
    }
  });
  console.log('[*] il2cpp_string_new hooked');
}

// Also hook il2cpp_string_new_wrapper (common variant)
const wrapper = Module.findExportByName('libil2cpp.so', 'il2cpp_string_new_wrapper');
if (wrapper) {
  Interceptor.attach(wrapper, {
    onEnter(args) {
      try {
        const s = args[0].readCString();
        if (s && s.length > 3) console.log('[str-w]', s);
      } catch (e) {}
    }
  });
}
