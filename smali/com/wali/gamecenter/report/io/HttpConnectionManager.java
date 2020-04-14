package com.wali.gamecenter.report.io;

import java.security.KeyStore;
import org.apache.http.HttpVersion;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public final class HttpConnectionManager
{
  public static final int GPRS_WAIT_TIMEOUT = 30000;
  private static final int KEEP_ALIVE_DURATION_SECS = 15;
  private static final int KEEP_ALIVE_INTERVAL_SECS = 30;
  public static final int MAX_ROUTE_CONNECTIONS = 256;
  public static final int MAX_TOTAL_CONNECTIONS = 1024;
  public static int WAIT_TIMEOUT = 30000;
  public static final int WIFI_WAIT_TIMEOUT = 15000;
  public static Object _lock_ = new Object();
  private static DefaultHttpClient client;
  private static HttpParams httpParams;
  
  static HttpConnectionManager.ClientConnectionManager Init()
  {
    WAIT_TIMEOUT = 30000;
    Object localObject1 = new BasicHttpParams();
    httpParams = (HttpParams)localObject1;
    HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(httpParams, "UTF-8");
    ConnManagerParams.setMaxTotalConnections(httpParams, 1024);
    ConnManagerParams.setTimeout(httpParams, WAIT_TIMEOUT);
    localObject1 = new ConnPerRouteBean(256);
    ConnManagerParams.setMaxConnectionsPerRoute(httpParams, (ConnPerRoute)localObject1);
    HttpConnectionParams.setConnectionTimeout(httpParams, WAIT_TIMEOUT);
    HttpConnectionParams.setSoTimeout(httpParams, WAIT_TIMEOUT);
    HttpClientParams.setRedirecting(httpParams, true);
    HttpConnectionParams.setSocketBufferSize(httpParams, 8192);
    localObject1 = new SchemeRegistry();
    ((SchemeRegistry)localObject1).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    try
    {
      Object localObject2 = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject2).load(null, null);
      localObject2 = new HttpConnectionManager.WaliSSLSocketFactory((KeyStore)localObject2);
      ((SSLSocketFactory)localObject2).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      ((SchemeRegistry)localObject1).register(new Scheme("https", (SocketFactory)localObject2, 443));
      return new HttpConnectionManager.ClientConnectionManager(httpParams, (SchemeRegistry)localObject1);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public static DefaultHttpClient getHttpClient()
  {
    synchronized (_lock_)
    {
      if (client == null)
      {
        localDefaultHttpClient = new DefaultHttpClient(Init(), httpParams);
        client = localDefaultHttpClient;
        localDefaultHttpClient.setHttpRequestRetryHandler(new HttpConnectionManager.1());
        client.addRequestInterceptor(new HttpConnectionManager.2());
        client.addResponseInterceptor(new HttpConnectionManager.3());
      }
      DefaultHttpClient localDefaultHttpClient = client;
      return localDefaultHttpClient;
    }
  }
  
  public static void reset()
  {
    synchronized (_lock_)
    {
      client = null;
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */