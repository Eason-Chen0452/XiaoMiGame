package com.xiaomi.hy.dj.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.HurlStack;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.wali.gamecenter.report.utils.TelUtils;
import com.wali.gamecenter.report.utils.ZSIMInfo;
import com.xiaomi.hy.dj.f.m;
import com.xiaomi.hy.dj.pb.HttpTransfer.ResponseInfo;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public class b
{
  public static RequestQueue a;
  private static Context b;
  private static volatile b c;
  private static final Handler d = new Handler(Looper.getMainLooper());
  
  public b(Context paramContext)
  {
    b = paramContext;
    a = Volley.newRequestQueue(paramContext, new HurlStack(null, c()));
  }
  
  public static void a(Context paramContext)
  {
    if (c == null) {
      c = new b(paramContext);
    }
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, a parama)
  {
    parama.a();
    new Thread(new l(paramString4, paramString2, paramString3, paramString1, parama)).start();
  }
  
  public static void a(String paramString, Map<String, String> paramMap, a parama)
  {
    parama.a();
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Object localObject = paramMap.entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        try
        {
          localStringBuilder.append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
        }
        catch (Exception localException) {}
      }
      if ((!localStringBuilder.toString().equals("")) && (!localStringBuilder.toString().equals("?")))
      {
        localObject = new StringBuilder().append(paramString);
        if (paramString.contains("?"))
        {
          paramString = "&";
          paramString = paramString;
          paramString = paramString + localStringBuilder.toString();
        }
      }
    }
    for (;;)
    {
      paramString = new f(0, paramString, new c(parama), new e(parama), paramMap);
      paramString.setRetryPolicy(new DefaultRetryPolicy(12500, 0, 1.0F));
      paramString.setTag(b.class);
      a.add(paramString);
      return;
      paramString = "?";
      break;
    }
  }
  
  public static Map<String, Object> b(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("imei", TelUtils.getDeviceId(paramContext));
    try
    {
      localHashMap.put("imsi", ZSIMInfo.getIMSI(paramContext));
      localHashMap.put("mac", ZSIMInfo.getMacAddress(paramContext));
      localHashMap.put("ua", m.d(paramContext));
      localHashMap.put("clientType", "android");
      localHashMap.put("carrierInfo", ZSIMInfo.getSIMOperator(paramContext));
      localHashMap.put("channelId", com.xiaomi.hy.dj.f.i.a(paramContext));
      localHashMap.put("sdkVersion", "SDK_VISITOR_DJPAY_1.1.6");
      localHashMap.put("nonceStr", UUID.randomUUID().toString());
      localHashMap.put("timeStamp", System.currentTimeMillis());
      localHashMap.put("publishChannel", "mi");
      localHashMap.put("oaid", m.b());
      return localHashMap;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public static void b(String paramString, Map<String, String> paramMap, a parama)
  {
    Object localObject2 = null;
    parama.a();
    Object localObject1 = localObject2;
    if (com.xiaomi.hy.dj.c.b.a().b())
    {
      localObject1 = localObject2;
      if (TextUtils.isEmpty(com.xiaomi.hy.dj.c.a.a(paramString))) {}
    }
    try
    {
      localObject1 = com.xiaomi.hy.dj.c.b.a().b(paramString, null, paramMap);
      if (localObject1 != null)
      {
        paramString = ((HttpTransfer.ResponseInfo)localObject1).getBody();
        com.xiaomi.hy.dj.b.a.e("milink post result-->", paramString);
        d.post(new h(parama, paramString));
        return;
      }
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      d.post(new g(parama));
      return;
    }
    paramString = new k(1, paramString, new i(parama), new j(parama), paramMap);
    paramString.setRetryPolicy(new DefaultRetryPolicy(12500, 0, 1.0F));
    paramString.setTag(b.class);
    a.add(paramString);
  }
  
  private static SSLSocketFactory c()
  {
    Object localObject = new d();
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      SecureRandom localSecureRandom = new SecureRandom();
      localSSLContext.init(null, new TrustManager[] { localObject }, localSecureRandom);
      localObject = localSSLContext.getSocketFactory();
      return (SSLSocketFactory)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
      return null;
    }
    catch (KeyManagementException localKeyManagementException)
    {
      localKeyManagementException.printStackTrace();
    }
    return null;
  }
  
  public b a()
  {
    return c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */