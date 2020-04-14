package com.alipay.sdk.util;

import com.alipay.sdk.app.i;
import com.alipay.sdk.app.statistic.a;
import java.util.HashMap;
import java.util.Map;

public final class j
{
  public static final String a = "resultStatus";
  public static final String b = "memo";
  public static final String c = "result";
  
  private static String a(String paramString1, String paramString2)
  {
    paramString2 = paramString2 + "={";
    int i = paramString1.indexOf(paramString2);
    return paramString1.substring(paramString2.length() + i, paramString1.lastIndexOf("}"));
  }
  
  private static Map<String, String> a()
  {
    i locali = i.a(i.c.h);
    HashMap localHashMap = new HashMap();
    localHashMap.put("resultStatus", Integer.toString(locali.h));
    localHashMap.put("memo", locali.i);
    localHashMap.put("result", "");
    return localHashMap;
  }
  
  public static Map<String, String> a(String paramString)
  {
    i locali = i.a(i.c.h);
    HashMap localHashMap = new HashMap();
    localHashMap.put("resultStatus", Integer.toString(locali.h));
    localHashMap.put("memo", locali.i);
    localHashMap.put("result", "");
    try
    {
      paramString = b(paramString);
      return paramString;
    }
    catch (Throwable paramString)
    {
      a.a("biz", "FormatResultEx", paramString);
    }
    return localHashMap;
  }
  
  private static Map<String, String> b(String paramString)
  {
    paramString = paramString.split(";");
    HashMap localHashMap = new HashMap();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramString[i];
      String str1 = ((String)localObject).substring(0, ((String)localObject).indexOf("={"));
      String str2 = str1 + "={";
      int k = ((String)localObject).indexOf(str2);
      localHashMap.put(str1, ((String)localObject).substring(str2.length() + k, ((String)localObject).lastIndexOf("}")));
      i += 1;
    }
    return localHashMap;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */