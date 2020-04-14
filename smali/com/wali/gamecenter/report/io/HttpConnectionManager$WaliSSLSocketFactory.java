package com.wali.gamecenter.report.io;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

class HttpConnectionManager$WaliSSLSocketFactory
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public HttpConnectionManager$WaliSSLSocketFactory(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramKeyStore = new HttpConnectionManager.WaliSSLSocketFactory.1(this);
    this.sslContext.init(null, new TrustManager[] { paramKeyStore }, null);
  }
  
  public Socket createSocket()
  {
    return this.sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$WaliSSLSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */