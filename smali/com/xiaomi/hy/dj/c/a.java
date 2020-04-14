package com.xiaomi.hy.dj.c;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  public static final String a = "misdk.http.";
  public static final String b = "misdk.http.pay";
  public static final String c = "gamesdk.account.anonymouslogin";
  public static Map<String, String> d;
  
  static
  {
    HashMap localHashMap = new HashMap();
    d = localHashMap;
    localHashMap.put("https://hysdk.game.xiaomi.com/fpassport/loginGuest", "gamesdk.account.anonymouslogin");
  }
  
  public static String a(String paramString)
  {
    Iterator localIterator = d.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.contains((CharSequence)localEntry.getKey())) {
        return (String)localEntry.getValue();
      }
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */