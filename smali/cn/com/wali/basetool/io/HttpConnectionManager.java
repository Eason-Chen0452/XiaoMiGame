package cn.com.wali.basetool.io;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

public final class HttpConnectionManager
{
  public static int a = 60000;
  public static Object b = new Object();
  
  private static class ClientConnectionManager
    extends ThreadSafeClientConnManager
  {
    public ClientConnectionManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
    {
      super(paramSchemeRegistry);
    }
    
    public ClientConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
    {
      HttpConnectionManager.IdleConnectionMonitorThread.a(this);
      getConnectionsInPool();
      return super.requestConnection(paramHttpRoute, paramObject);
    }
  }
  
  static class GzipDecompressingEntity
    extends HttpEntityWrapper
  {
    public GzipDecompressingEntity(HttpEntity paramHttpEntity)
    {
      super();
    }
    
    public InputStream getContent()
      throws IOException, IllegalStateException
    {
      return new GZIPInputStream(this.wrappedEntity.getContent());
    }
    
    public long getContentLength()
    {
      return -1L;
    }
  }
  
  private static class IdleConnectionMonitorThread
    extends Thread
  {
    private static IdleConnectionMonitorThread d = null;
    private final HttpConnectionManager.ClientConnectionManager a;
    private final int b;
    private final int c;
    
    public IdleConnectionMonitorThread(HttpConnectionManager.ClientConnectionManager paramClientConnectionManager, int paramInt1, int paramInt2)
    {
      this.a = paramClientConnectionManager;
      this.b = paramInt1;
      this.c = paramInt2;
    }
    
    public static void a(HttpConnectionManager.ClientConnectionManager paramClientConnectionManager)
    {
      try
      {
        if (d == null)
        {
          paramClientConnectionManager = new IdleConnectionMonitorThread(paramClientConnectionManager, 15, 30);
          d = paramClientConnectionManager;
          paramClientConnectionManager.start();
        }
        return;
      }
      finally
      {
        paramClientConnectionManager = finally;
        throw paramClientConnectionManager;
      }
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: aload_0
      //   4: getfield 29	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:c	I
      //   7: sipush 1000
      //   10: imul
      //   11: i2l
      //   12: invokevirtual 44	java/lang/Object:wait	(J)V
      //   15: aload_0
      //   16: monitorexit
      //   17: aload_0
      //   18: getfield 25	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:a	Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;
      //   21: invokevirtual 49	cn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager:closeExpiredConnections	()V
      //   24: aload_0
      //   25: getfield 25	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:a	Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;
      //   28: aload_0
      //   29: getfield 27	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:b	I
      //   32: i2l
      //   33: getstatic 55	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
      //   36: invokevirtual 59	cn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager:closeIdleConnections	(JLjava/util/concurrent/TimeUnit;)V
      //   39: ldc 2
      //   41: monitorenter
      //   42: aload_0
      //   43: getfield 25	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:a	Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;
      //   46: invokevirtual 63	cn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager:getConnectionsInPool	()I
      //   49: ifne +22 -> 71
      //   52: aconst_null
      //   53: putstatic 18	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:d	Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;
      //   56: ldc 2
      //   58: monitorexit
      //   59: return
      //   60: astore_1
      //   61: aload_0
      //   62: monitorexit
      //   63: aload_1
      //   64: athrow
      //   65: astore_1
      //   66: aconst_null
      //   67: putstatic 18	cn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread:d	Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;
      //   70: return
      //   71: ldc 2
      //   73: monitorexit
      //   74: goto -74 -> 0
      //   77: astore_1
      //   78: ldc 2
      //   80: monitorexit
      //   81: aload_1
      //   82: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	83	0	this	IdleConnectionMonitorThread
      //   60	4	1	localObject1	Object
      //   65	1	1	localInterruptedException	InterruptedException
      //   77	5	1	localObject2	Object
      // Exception table:
      //   from	to	target	type
      //   2	17	60	finally
      //   61	63	60	finally
      //   0	2	65	java/lang/InterruptedException
      //   17	42	65	java/lang/InterruptedException
      //   63	65	65	java/lang/InterruptedException
      //   81	83	65	java/lang/InterruptedException
      //   42	59	77	finally
      //   71	74	77	finally
      //   78	81	77	finally
    }
  }
  
  private static class WaliSSLSocketFactory
    extends org.apache.http.conn.ssl.SSLSocketFactory
  {
    SSLContext a = SSLContext.getInstance("TLS");
    
    public WaliSSLSocketFactory(KeyStore paramKeyStore)
      throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
      super();
      paramKeyStore = new a(this);
      this.a.init(null, new TrustManager[] { paramKeyStore }, null);
    }
    
    public Socket createSocket()
      throws IOException
    {
      return this.a.getSocketFactory().createSocket();
    }
    
    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException, UnknownHostException
    {
      return this.a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\io\HttpConnectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */