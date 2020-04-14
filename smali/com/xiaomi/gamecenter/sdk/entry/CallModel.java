package com.xiaomi.gamecenter.sdk.entry;

import com.xiaomi.gamecenter.sdk.pay.b;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public class CallModel
  implements Serializable
{
  private static Map map = Collections.synchronizedMap(new HashMap());
  private static AtomicLong value = new AtomicLong();
  
  public static long add(b paramb)
  {
    if (paramb == null) {
      return 0L;
    }
    long l = value.incrementAndGet();
    map.put(Long.valueOf(l), paramb);
    return l;
  }
  
  public static b get(long paramLong)
  {
    return (b)map.get(Long.valueOf(paramLong));
  }
  
  public static boolean isExist(long paramLong)
  {
    return map.containsKey(Long.valueOf(paramLong));
  }
  
  public static b remove(long paramLong)
  {
    return (b)map.remove(Long.valueOf(paramLong));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\CallModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */