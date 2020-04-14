package com.wali.gamecenter.report.io;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class HttpConnectionManager$WaliSSLSocketFactory$1
  implements X509TrustManager
{
  HttpConnectionManager$WaliSSLSocketFactory$1(HttpConnectionManager.WaliSSLSocketFactory paramWaliSSLSocketFactory) {}
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    paramArrayOfX509Certificate[0].checkValidity();
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$WaliSSLSocketFactory$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */