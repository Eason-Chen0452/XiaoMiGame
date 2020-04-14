package com.xiaomi.gamecenter.sdk.milink;

import com.xiaomi.gamecenter.sdk.protocol.ProDefine;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MiLinkCommand
{
  public static Map<String, String> a;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(ProDefine.ab, "misdk.http.login");
    a.put(ProDefine.ao, "misdk.http.login");
    a.put(ProDefine.au, "misdk.http.login");
    a.put(ProDefine.av, "misdk.http.login");
    a.put(ProDefine.aw, "misdk.http.login");
    a.put(ProDefine.B, "misdk.http.login");
    a.put(ProDefine.y, "misdk.http.pay");
    a.put(ProDefine.z, "misdk.http.pay");
    a.put(ProDefine.A, "misdk.http.pay");
  }
  
  public static String a(String paramString)
  {
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.contains((CharSequence)localEntry.getKey())) {
        return (String)localEntry.getValue();
      }
    }
    return "";
  }
  
  public static void b(String paramString)
  {
    a.put(paramString, "misdk.http.cpinit");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MiLinkCommand.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */