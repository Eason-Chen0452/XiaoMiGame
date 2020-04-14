package com.xiaomi.gamecenter.gamesdk.datasdk.b.a;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class b
  extends SSLSocketFactory
{
  private static final String[] b = { "TLSv1.1", "TLSv1.2" };
  final SSLSocketFactory a;
  
  public b(SSLSocketFactory paramSSLSocketFactory)
  {
    this.a = paramSSLSocketFactory;
  }
  
  private static Socket a(Socket paramSocket)
  {
    if ((paramSocket instanceof SSLSocket)) {
      ((SSLSocket)paramSocket).setEnabledProtocols(b);
    }
    return paramSocket;
  }
  
  public Socket createSocket(String paramString, int paramInt)
  {
    return a(this.a.createSocket(paramString, paramInt));
  }
  
  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return a(this.a.createSocket(paramString, paramInt1, paramInetAddress, paramInt2));
  }
  
  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    return a(this.a.createSocket(paramInetAddress, paramInt));
  }
  
  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return a(this.a.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2));
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return a(this.a.createSocket(paramSocket, paramString, paramInt, paramBoolean));
  }
  
  public String[] getDefaultCipherSuites()
  {
    return this.a.getDefaultCipherSuites();
  }
  
  public String[] getSupportedCipherSuites()
  {
    return this.a.getSupportedCipherSuites();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */