// ssl-bypass.js — Universal SSL pinning bypass for Unity games
// Unity uses Mono's SSL or BoringSSL — hook both

Java.perform(() => {
  // OkHttp3 (if used)
  try {
    const CertificatePinner = Java.use('okhttp3.CertificatePinner');
    CertificatePinner.check.overload('java.lang.String', 'java.util.List').implementation = function() {
      console.log('[+] OkHttp3 CertificatePinner bypassed');
      return;
    };
  } catch (e) {}

  // TrustManagerImpl (Android system)
  try {
    const TrustManagerImpl = Java.use('com.android.org.conscrypt.TrustManagerImpl');
    TrustManagerImpl.checkTrustedRecursive.implementation = function() {
      console.log('[+] TrustManagerImpl bypassed');
      return Java.use('java.util.ArrayList').$new();
    };
  } catch (e) {}
});

// BoringSSL (used by Unity WWW/UnityWebRequest)
const ssl_verify = Module.findExportByName('libunity.so', 'SSL_CTX_set_verify');
if (ssl_verify) {
  Interceptor.attach(ssl_verify, {
    onEnter(args) {
      // arg1 = verify_mode, set to SSL_VERIFY_NONE (0)
      args[1] = ptr(0);
      console.log('[+] libunity SSL verify disabled');
    }
  });
}
