package com.mi.milink.sdk.base.os;

import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class MyX509TrustManager
  implements X509TrustManager
{
  X509TrustManager sunJSSEX509TrustManager;
  
  MyX509TrustManager()
    throws Exception
  {
    Object localObject = KeyStore.getInstance("JKS");
    ((KeyStore)localObject).load(new FileInputStream("trustedCerts"), "passphrase".toCharArray());
    TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance("SunX509", "SunJSSE");
    localTrustManagerFactory.init((KeyStore)localObject);
    localObject = localTrustManagerFactory.getTrustManagers();
    int i = 0;
    while (i < localObject.length)
    {
      if ((localObject[i] instanceof X509TrustManager))
      {
        this.sunJSSEX509TrustManager = ((X509TrustManager)localObject[i]);
        return;
      }
      i += 1;
    }
    throw new Exception("Couldn't initialize");
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    try
    {
      this.sunJSSEX509TrustManager.checkClientTrusted(paramArrayOfX509Certificate, paramString);
      return;
    }
    catch (CertificateException paramArrayOfX509Certificate) {}
  }
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    try
    {
      this.sunJSSEX509TrustManager.checkServerTrusted(paramArrayOfX509Certificate, paramString);
      return;
    }
    catch (CertificateException paramArrayOfX509Certificate) {}
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return this.sunJSSEX509TrustManager.getAcceptedIssuers();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\MyX509TrustManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */