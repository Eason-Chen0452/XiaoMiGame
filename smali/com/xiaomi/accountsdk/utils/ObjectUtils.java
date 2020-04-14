package com.xiaomi.accountsdk.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ObjectUtils
{
  public static Map<String, String> a(Map<String, List<String>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = (List)((Map.Entry)localObject).getValue();
        if ((str != null) && (localObject != null) && (((List)localObject).size() > 0)) {
          localHashMap.put(str, ((List)localObject).get(0));
        }
      }
    }
    return localHashMap;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\ObjectUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */