package com.alipay.sdk.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public final class a
{
  public static final String a = "application/octet-stream;binary/octet-stream";
  public String b;
  private Context c;
  
  private a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public a(Context paramContext, String paramString)
  {
    this.c = paramContext;
    this.b = paramString;
  }
  
  private String a()
  {
    return this.b;
  }
  
  private void a(String paramString)
  {
    this.b = paramString;
  }
  
  private URL b()
  {
    try
    {
      URL localURL = new URL(this.b);
      return localURL;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private HttpHost c()
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localObject = g();
      if ((localObject == null) || (((String)localObject).contains("wap"))) {}
    }
    int i;
    do
    {
      do
      {
        String str;
        do
        {
          do
          {
            return null;
            localObject = b();
          } while (localObject == null);
          "https".equalsIgnoreCase(((URL)localObject).getProtocol());
          localObject = System.getProperty("https.proxyHost");
          str = System.getProperty("https.proxyPort");
        } while (TextUtils.isEmpty((CharSequence)localObject));
        return new HttpHost((String)localObject, Integer.parseInt(str));
        localObject = f();
      } while ((localObject == null) || (!((NetworkInfo)localObject).isAvailable()) || (((NetworkInfo)localObject).getType() != 0));
      localObject = Proxy.getDefaultHost();
      i = Proxy.getDefaultPort();
    } while (localObject == null);
    return new HttpHost((String)localObject, i);
  }
  
  private HttpHost d()
  {
    Object localObject2 = null;
    Object localObject3 = f();
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject1 = localObject2;
      if (((NetworkInfo)localObject3).isAvailable())
      {
        localObject1 = localObject2;
        if (((NetworkInfo)localObject3).getType() == 0)
        {
          localObject3 = Proxy.getDefaultHost();
          int i = Proxy.getDefaultPort();
          localObject1 = localObject2;
          if (localObject3 != null) {
            localObject1 = new HttpHost((String)localObject3, i);
          }
        }
      }
    }
    return (HttpHost)localObject1;
  }
  
  private HttpHost e()
  {
    Object localObject = g();
    if ((localObject != null) && (!((String)localObject).contains("wap"))) {}
    String str;
    do
    {
      do
      {
        return null;
        localObject = b();
      } while (localObject == null);
      "https".equalsIgnoreCase(((URL)localObject).getProtocol());
      localObject = System.getProperty("https.proxyHost");
      str = System.getProperty("https.proxyPort");
    } while (TextUtils.isEmpty((CharSequence)localObject));
    return new HttpHost((String)localObject, Integer.parseInt(str));
  }
  
  private NetworkInfo f()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
      return localNetworkInfo;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private String g()
  {
    try
    {
      Object localObject = f();
      if ((localObject != null) && (((NetworkInfo)localObject).isAvailable()))
      {
        if (((NetworkInfo)localObject).getType() == 1) {
          return "wifi";
        }
        localObject = ((NetworkInfo)localObject).getExtraInfo().toLowerCase();
        return (String)localObject;
      }
      return "none";
    }
    catch (Exception localException) {}
    return "none";
  }
  
  public final HttpResponse a(byte[] paramArrayOfByte, List<Header> paramList)
    throws Throwable
  {
    Object localObject2 = null;
    Object localObject1 = null;
    new StringBuilder("requestUrl : ").append(this.b);
    b localb = b.a();
    if (localb == null) {
      paramArrayOfByte = (byte[])localObject1;
    }
    label188:
    label259:
    label331:
    do
    {
      do
      {
        do
        {
          return paramArrayOfByte;
          for (;;)
          {
            try
            {
              HttpParams localHttpParams = localb.c.getParams();
              if (Build.VERSION.SDK_INT < 11) {
                break label259;
              }
              localObject1 = g();
              if ((localObject1 == null) || (((String)localObject1).contains("wap"))) {
                break label188;
              }
              localObject1 = localObject2;
              if (localObject1 != null) {
                localHttpParams.setParameter("http.route.default-proxy", localObject1);
              }
              if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {
                break label331;
              }
              paramArrayOfByte = new HttpGet(this.b);
              if (paramList == null) {
                break;
              }
              paramList = paramList.iterator();
              if (!paramList.hasNext()) {
                break;
              }
              paramArrayOfByte.addHeader((Header)paramList.next());
              continue;
              try
              {
                paramList = localb.c.getConnectionManager();
                if (paramList != null)
                {
                  paramList.shutdown();
                  b.b = null;
                }
              }
              catch (Throwable paramList)
              {
                Object localObject3;
                String str;
                int i;
                for (;;) {}
              }
            }
            catch (Throwable paramArrayOfByte)
            {
              if (localb == null) {}
            }
            throw paramArrayOfByte;
            localObject3 = b();
            localObject1 = localObject2;
            if (localObject3 != null)
            {
              "https".equalsIgnoreCase(((URL)localObject3).getProtocol());
              localObject3 = System.getProperty("https.proxyHost");
              str = System.getProperty("https.proxyPort");
              localObject1 = localObject2;
              if (!TextUtils.isEmpty((CharSequence)localObject3))
              {
                localObject1 = new HttpHost((String)localObject3, Integer.parseInt(str));
                continue;
                localObject3 = f();
                localObject1 = localObject2;
                if (localObject3 != null)
                {
                  localObject1 = localObject2;
                  if (((NetworkInfo)localObject3).isAvailable())
                  {
                    localObject1 = localObject2;
                    if (((NetworkInfo)localObject3).getType() == 0)
                    {
                      localObject3 = Proxy.getDefaultHost();
                      i = Proxy.getDefaultPort();
                      localObject1 = localObject2;
                      if (localObject3 != null)
                      {
                        localObject1 = new HttpHost((String)localObject3, i);
                        continue;
                        localObject1 = new HttpPost(this.b);
                        paramArrayOfByte = new ByteArrayEntity(paramArrayOfByte);
                        paramArrayOfByte.setContentType("application/octet-stream;binary/octet-stream");
                        ((HttpPost)localObject1).setEntity(paramArrayOfByte);
                        ((HttpUriRequest)localObject1).addHeader("Accept-Charset", "UTF-8");
                        ((HttpUriRequest)localObject1).addHeader("Connection", "Keep-Alive");
                        ((HttpUriRequest)localObject1).addHeader("Keep-Alive", "timeout=180, max=100");
                        paramArrayOfByte = (byte[])localObject1;
                      }
                    }
                  }
                }
              }
            }
          }
          paramList = localb.a(paramArrayOfByte);
          paramArrayOfByte = paramList.getHeaders("X-Hostname");
          if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0) && (paramArrayOfByte[0] != null)) {
            paramList.getHeaders("X-Hostname")[0].toString();
          }
          localObject1 = paramList.getHeaders("X-ExecuteTime");
          paramArrayOfByte = paramList;
        } while (localObject1 == null);
        paramArrayOfByte = paramList;
      } while (localObject1.length <= 0);
      paramArrayOfByte = paramList;
    } while (localObject1[0] == null);
    paramList.getHeaders("X-ExecuteTime")[0].toString();
    return paramList;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\net\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */