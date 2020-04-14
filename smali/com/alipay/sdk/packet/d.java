package com.alipay.sdk.packet;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class d
{
  public static final String a = "msp-gzip";
  public static final String b = "Msp-Param";
  public static final String c = "Operation-Type";
  public static final String d = "content-type";
  public static final String e = "Version";
  public static final String f = "AppId";
  public static final String g = "des-mode";
  public static final String h = "namespace";
  public static final String i = "api_name";
  public static final String j = "api_version";
  public static final String k = "data";
  public static final String l = "params";
  public static final String m = "public_key";
  public static final String n = "device";
  public static final String o = "action";
  public static final String p = "type";
  public static final String q = "method";
  private static com.alipay.sdk.net.a t;
  protected boolean r = true;
  protected boolean s = true;
  
  private b a(Context paramContext)
    throws Throwable
  {
    return a(paramContext, "", k.a(paramContext), true);
  }
  
  private b a(Context paramContext, String paramString1, String paramString2)
    throws Throwable
  {
    return a(paramContext, paramString1, paramString2, true);
  }
  
  public static String a(HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2)
    throws JSONException
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    paramHashMap1 = paramHashMap1.entrySet().iterator();
    Map.Entry localEntry;
    while (paramHashMap1.hasNext())
    {
      localEntry = (Map.Entry)paramHashMap1.next();
      localJSONObject2.put((String)localEntry.getKey(), localEntry.getValue());
    }
    paramHashMap1 = new JSONObject();
    paramHashMap2 = paramHashMap2.entrySet().iterator();
    while (paramHashMap2.hasNext())
    {
      localEntry = (Map.Entry)paramHashMap2.next();
      paramHashMap1.put((String)localEntry.getKey(), localEntry.getValue());
    }
    localJSONObject2.put("params", paramHashMap1);
    localJSONObject1.put("data", localJSONObject2);
    return localJSONObject1.toString();
  }
  
  private static String a(HttpResponse paramHttpResponse, String paramString)
  {
    if (paramHttpResponse == null) {}
    for (;;)
    {
      return null;
      paramHttpResponse = paramHttpResponse.getAllHeaders();
      if ((paramHttpResponse != null) && (paramHttpResponse.length > 0))
      {
        int i2 = paramHttpResponse.length;
        int i1 = 0;
        while (i1 < i2)
        {
          Object localObject = paramHttpResponse[i1];
          if (localObject != null)
          {
            String str = ((Header)localObject).getName();
            if ((str != null) && (str.equalsIgnoreCase(paramString))) {
              return ((Header)localObject).getValue();
            }
          }
          i1 += 1;
        }
      }
    }
  }
  
  public static JSONObject a(String paramString1, String paramString2)
    throws JSONException
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.put("type", paramString1);
    localJSONObject2.put("method", paramString2);
    localJSONObject1.put("action", localJSONObject2);
    return localJSONObject1;
  }
  
  private static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        paramString = new JSONObject(paramString).getJSONObject("data");
        if (paramString.has("params"))
        {
          paramString = paramString.getJSONObject("params").optString("public_key", null);
          if (!TextUtils.isEmpty(paramString))
          {
            com.alipay.sdk.sys.b.a();
            com.alipay.sdk.data.c.a().a(paramString);
            return true;
          }
        }
      }
      catch (JSONException paramString) {}
    }
    return false;
  }
  
  private static boolean a(HttpResponse paramHttpResponse)
  {
    Object localObject = null;
    if (paramHttpResponse == null) {
      paramHttpResponse = (HttpResponse)localObject;
    }
    Header[] arrayOfHeader;
    do
    {
      do
      {
        return Boolean.valueOf(paramHttpResponse).booleanValue();
        arrayOfHeader = paramHttpResponse.getAllHeaders();
        paramHttpResponse = (HttpResponse)localObject;
      } while (arrayOfHeader == null);
      paramHttpResponse = (HttpResponse)localObject;
    } while (arrayOfHeader.length <= 0);
    int i2 = arrayOfHeader.length;
    int i1 = 0;
    for (;;)
    {
      paramHttpResponse = (HttpResponse)localObject;
      if (i1 >= i2) {
        break;
      }
      paramHttpResponse = arrayOfHeader[i1];
      if (paramHttpResponse != null)
      {
        String str = paramHttpResponse.getName();
        if ((str != null) && (str.equalsIgnoreCase("msp-gzip")))
        {
          paramHttpResponse = paramHttpResponse.getValue();
          break;
        }
      }
      i1 += 1;
    }
  }
  
  private static com.alipay.sdk.net.a b(Context paramContext, String paramString)
  {
    if (t == null) {
      t = new com.alipay.sdk.net.a(paramContext, paramString);
    }
    for (;;)
    {
      return t;
      if (!TextUtils.equals(paramString, t.b)) {
        t.b = paramString;
      }
    }
  }
  
  /* Error */
  private static byte[] b(HttpResponse paramHttpResponse)
    throws java.lang.IllegalStateException, java.io.IOException
  {
    // Byte code:
    //   0: sipush 1024
    //   3: newarray <illegal type>
    //   5: astore 4
    //   7: aload_0
    //   8: invokeinterface 219 1 0
    //   13: invokeinterface 225 1 0
    //   18: astore_3
    //   19: new 227	java/io/ByteArrayOutputStream
    //   22: dup
    //   23: invokespecial 228	java/io/ByteArrayOutputStream:<init>	()V
    //   26: astore_2
    //   27: aload_3
    //   28: aload 4
    //   30: invokevirtual 234	java/io/InputStream:read	([B)I
    //   33: istore_1
    //   34: iload_1
    //   35: iconst_m1
    //   36: if_icmpeq +33 -> 69
    //   39: aload_2
    //   40: aload 4
    //   42: iconst_0
    //   43: iload_1
    //   44: invokevirtual 238	java/io/ByteArrayOutputStream:write	([BII)V
    //   47: goto -20 -> 27
    //   50: astore_0
    //   51: aload_3
    //   52: ifnull +7 -> 59
    //   55: aload_3
    //   56: invokevirtual 241	java/io/InputStream:close	()V
    //   59: aload_2
    //   60: ifnull +7 -> 67
    //   63: aload_2
    //   64: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   67: aload_0
    //   68: athrow
    //   69: aload_2
    //   70: invokevirtual 246	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   73: astore_0
    //   74: aload_3
    //   75: ifnull +7 -> 82
    //   78: aload_3
    //   79: invokevirtual 241	java/io/InputStream:close	()V
    //   82: aload_2
    //   83: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   86: aload_0
    //   87: areturn
    //   88: astore_3
    //   89: goto -7 -> 82
    //   92: astore_2
    //   93: aload_0
    //   94: areturn
    //   95: astore_3
    //   96: goto -37 -> 59
    //   99: astore_2
    //   100: goto -33 -> 67
    //   103: astore_0
    //   104: aconst_null
    //   105: astore_3
    //   106: aconst_null
    //   107: astore_2
    //   108: goto -57 -> 51
    //   111: astore_0
    //   112: aconst_null
    //   113: astore_2
    //   114: goto -63 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramHttpResponse	HttpResponse
    //   33	11	1	i1	int
    //   26	57	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   92	1	2	localException1	Exception
    //   99	1	2	localException2	Exception
    //   107	7	2	localObject1	Object
    //   18	61	3	localInputStream	java.io.InputStream
    //   88	1	3	localException3	Exception
    //   95	1	3	localException4	Exception
    //   105	1	3	localObject2	Object
    //   5	36	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   27	34	50	finally
    //   39	47	50	finally
    //   69	74	50	finally
    //   78	82	88	java/lang/Exception
    //   82	86	92	java/lang/Exception
    //   55	59	95	java/lang/Exception
    //   63	67	99	java/lang/Exception
    //   7	19	103	finally
    //   19	27	111	finally
  }
  
  public b a(Context paramContext, String paramString)
    throws Throwable
  {
    return a(paramContext, paramString, k.a(paramContext), true);
  }
  
  public final b a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
    throws Throwable
  {
    Object localObject2 = null;
    int i1 = 0;
    e locale = new e(this.s);
    Object localObject1;
    Object localObject4;
    do
    {
      do
      {
        try
        {
          localObject1 = locale.a(new b(c(), a(paramString1, a())), this.r);
          if (t == null) {
            t = new com.alipay.sdk.net.a(paramContext, paramString2);
          }
          Object localObject3;
          for (;;)
          {
            localObject3 = t;
            localObject4 = a(((c)localObject1).a, paramString1);
            localObject3 = ((com.alipay.sdk.net.a)localObject3).a(((c)localObject1).b, (List)localObject4);
            if (localObject3 != null) {
              break;
            }
            localObject1 = localObject2;
            localObject1 = locale.a(new c(Boolean.valueOf((String)localObject1).booleanValue(), b((HttpResponse)localObject3)));
            if ((localObject1 == null) || (!a(((b)localObject1).a)) || (!paramBoolean)) {
              break label292;
            }
            return a(paramContext, paramString1, paramString2, false);
            if (!TextUtils.equals(paramString2, t.b)) {
              t.b = paramString2;
            }
          }
          localObject4 = ((HttpResponse)localObject3).getAllHeaders();
        }
        catch (Throwable paramContext)
        {
          throw paramContext;
        }
        localObject1 = localObject2;
      } while (localObject4 == null);
      localObject1 = localObject2;
    } while (localObject4.length <= 0);
    int i2 = localObject4.length;
    for (;;)
    {
      localObject1 = localObject2;
      if (i1 >= i2) {
        break;
      }
      localObject1 = localObject4[i1];
      if (localObject1 != null)
      {
        String str = ((Header)localObject1).getName();
        if ((str != null) && (str.equalsIgnoreCase("msp-gzip")))
        {
          localObject1 = ((Header)localObject1).getValue();
          break;
        }
      }
      i1 += 1;
    }
    label292:
    return (b)localObject1;
  }
  
  public String a(String paramString, JSONObject paramJSONObject)
  {
    com.alipay.sdk.sys.b localb = com.alipay.sdk.sys.b.a();
    com.alipay.sdk.tid.b localb1 = com.alipay.sdk.tid.b.a();
    JSONObject localJSONObject = com.alipay.sdk.util.b.a(new JSONObject(), paramJSONObject);
    try
    {
      localJSONObject.put("tid", localb1.a);
      localc = com.alipay.sdk.data.c.a();
      localContext = com.alipay.sdk.sys.b.a().a;
      localObject3 = com.alipay.sdk.util.a.a(localContext);
      if (TextUtils.isEmpty(localc.a))
      {
        paramJSONObject = l.a();
        localObject1 = l.b();
        localObject2 = l.e(localContext);
        str1 = k.a(localContext);
        str1 = str1.substring(0, str1.indexOf("://"));
        str2 = l.f(localContext);
        str3 = Float.toString(new TextView(localContext).getTextSize());
        localc.a = ("Msp/15.2.2" + " (" + paramJSONObject + ";" + (String)localObject1 + ";" + (String)localObject2 + ";" + str1 + ";" + str2 + ";" + str3);
      }
      str1 = com.alipay.sdk.util.a.b(localContext).p;
      str2 = ((com.alipay.sdk.util.a)localObject3).a();
      str3 = ((com.alipay.sdk.util.a)localObject3).b();
      localObject4 = com.alipay.sdk.sys.b.a().a;
      localObject2 = ((Context)localObject4).getSharedPreferences("virtualImeiAndImsi", 0);
      paramJSONObject = ((SharedPreferences)localObject2).getString("virtual_imsi", null);
      localObject1 = paramJSONObject;
      if (TextUtils.isEmpty(paramJSONObject))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
          break label912;
        }
        paramJSONObject = com.alipay.sdk.sys.b.a().c();
        if (!TextUtils.isEmpty(paramJSONObject)) {
          break label901;
        }
        paramJSONObject = com.alipay.sdk.data.c.b();
        ((SharedPreferences)localObject2).edit().putString("virtual_imsi", paramJSONObject).commit();
        localObject1 = paramJSONObject;
      }
      localObject5 = com.alipay.sdk.sys.b.a().a;
      localObject4 = ((Context)localObject5).getSharedPreferences("virtualImeiAndImsi", 0);
      localObject2 = ((SharedPreferences)localObject4).getString("virtual_imei", null);
      paramJSONObject = (JSONObject)localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
          break label924;
        }
        paramJSONObject = com.alipay.sdk.data.c.b();
        label396:
        ((SharedPreferences)localObject4).edit().putString("virtual_imei", paramJSONObject).commit();
      }
      if (localb1 != null) {
        localc.c = localb1.b;
      }
      localObject4 = Build.MANUFACTURER.replace(";", " ");
      localObject5 = Build.MODEL.replace(";", " ");
      bool = com.alipay.sdk.sys.b.b();
      str4 = ((com.alipay.sdk.util.a)localObject3).a;
      localObject2 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localObject2 == null) {
        break label948;
      }
      localObject2 = ((WifiInfo)localObject2).getSSID();
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        com.alipay.sdk.data.c localc;
        Context localContext;
        Object localObject3;
        Object localObject1;
        String str1;
        String str2;
        String str3;
        Object localObject4;
        Object localObject5;
        boolean bool;
        String str4;
        label901:
        label912:
        label924:
        continue;
        Object localObject2 = "-1";
      }
    }
    localObject3 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
    if (localObject3 != null) {}
    for (localObject3 = ((WifiInfo)localObject3).getBSSID();; localObject3 = "00")
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localc.a).append(";").append(str1).append(";").append("-1;-1").append(";").append("1").append(";").append(str2).append(";").append(str3).append(";").append(localc.c).append(";").append((String)localObject4).append(";").append((String)localObject5).append(";").append(bool).append(";").append(str4).append(";-1;-1;").append(localc.b).append(";").append((String)localObject1).append(";").append(paramJSONObject).append(";").append((String)localObject2).append(";").append((String)localObject3);
      if (localb1 != null)
      {
        paramJSONObject = new HashMap();
        paramJSONObject.put("tid", localb1.a);
        paramJSONObject.put("utdid", com.alipay.sdk.sys.b.a().c());
        paramJSONObject = localc.b(localContext, paramJSONObject);
        if (!TextUtils.isEmpty(paramJSONObject)) {
          localStringBuilder.append(";").append(paramJSONObject);
        }
      }
      localStringBuilder.append(")");
      localJSONObject.put("user_agent", localStringBuilder.toString());
      localJSONObject.put("has_alipay", l.b(localb.a));
      localJSONObject.put("has_msp_app", l.a(localb.a));
      localJSONObject.put("external_info", paramString);
      localJSONObject.put("app_key", "2014052600006128");
      localJSONObject.put("utdid", localb.c());
      localJSONObject.put("new_client_key", localb1.b);
      return localJSONObject.toString();
      paramJSONObject = paramJSONObject.substring(3, 18);
      break;
      paramJSONObject = com.alipay.sdk.util.a.a((Context)localObject4).a();
      break;
      paramJSONObject = com.alipay.sdk.util.a.a((Context)localObject5).b();
      break label396;
    }
  }
  
  public List<Header> a(boolean paramBoolean, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicHeader("msp-gzip", String.valueOf(paramBoolean)));
    localArrayList.add(new BasicHeader("Operation-Type", "alipay.msp.cashier.dispatch.bytes"));
    localArrayList.add(new BasicHeader("content-type", "application/octet-stream"));
    localArrayList.add(new BasicHeader("Version", "2.0"));
    localArrayList.add(new BasicHeader("AppId", "TAOBAO"));
    localArrayList.add(new BasicHeader("Msp-Param", a.a(paramString)));
    localArrayList.add(new BasicHeader("des-mode", "CBC"));
    return localArrayList;
  }
  
  public abstract JSONObject a()
    throws JSONException;
  
  public String b()
  {
    return "4.9.0";
  }
  
  public String c()
    throws JSONException
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("device", Build.MODEL);
    localHashMap.put("namespace", "com.alipay.mobilecashier");
    localHashMap.put("api_name", "com.alipay.mcpay");
    localHashMap.put("api_version", b());
    return a(localHashMap, new HashMap());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\packet\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */