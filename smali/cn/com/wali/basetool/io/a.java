package cn.com.wali.basetool.io;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class a
  implements X509TrustManager
{
  a(HttpConnectionManager.WaliSSLSocketFactory paramWaliSSLSocketFactory) {}
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {}
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {}
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\io\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */