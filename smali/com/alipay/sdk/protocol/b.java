package com.alipay.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class b
{
  public a a;
  public String[] b;
  private String c;
  
  private b(String paramString)
  {
    this.c = paramString;
  }
  
  private b(String paramString, a parama)
  {
    this.c = paramString;
    this.a = parama;
  }
  
  private String a()
  {
    return this.c;
  }
  
  public static List<b> a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null) {
      return localArrayList;
    }
    Object localObject = paramJSONObject.optString("name", "");
    paramJSONObject = null;
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      paramJSONObject = ((String)localObject).split(";");
    }
    int i = 0;
    while (i < paramJSONObject.length)
    {
      localObject = a.a(paramJSONObject[i]);
      if (localObject != a.a)
      {
        localObject = new b(paramJSONObject[i], (a)localObject);
        ((b)localObject).b = a(paramJSONObject[i]);
        localArrayList.add(localObject);
      }
      i += 1;
    }
    return localArrayList;
  }
  
  private static void a(b paramb)
  {
    paramb = paramb.b;
    if (paramb.length != 3) {}
    Context localContext;
    com.alipay.sdk.tid.b localb;
    do
    {
      do
      {
        return;
      } while (!TextUtils.equals("tid", paramb[0]));
      localContext = com.alipay.sdk.sys.b.a().a;
      localb = com.alipay.sdk.tid.b.a();
    } while ((TextUtils.isEmpty(paramb[1])) || (TextUtils.isEmpty(paramb[2])));
    localb.a = paramb[1];
    localb.b = paramb[2];
    paramb = new com.alipay.sdk.tid.a(localContext);
    try
    {
      paramb.a(com.alipay.sdk.util.a.a(localContext).a(), com.alipay.sdk.util.a.a(localContext).b(), localb.a, localb.b);
      paramb.close();
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      paramb.close();
      return;
    }
    finally
    {
      localObject = finally;
      paramb.close();
      throw ((Throwable)localObject);
    }
  }
  
  private static String[] a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramString.indexOf('(');
    int j = paramString.lastIndexOf(')');
    if ((i == -1) || (j == -1) || (j <= i)) {
      return null;
    }
    paramString = paramString.substring(i + 1, j).split(",");
    if (paramString != null)
    {
      i = 0;
      while (i < paramString.length)
      {
        if (!TextUtils.isEmpty(paramString[i])) {
          localArrayList.add(paramString[i].trim().replaceAll("'", "").replaceAll("\"", ""));
        }
        i += 1;
      }
    }
    return (String[])localArrayList.toArray(new String[0]);
  }
  
  private a b()
  {
    return this.a;
  }
  
  private static String[] b(String paramString)
  {
    String[] arrayOfString = null;
    if (!TextUtils.isEmpty(paramString)) {
      arrayOfString = paramString.split(";");
    }
    return arrayOfString;
  }
  
  private String[] c()
  {
    return this.b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\protocol\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */