package com.xiaomi.hy.dj.model;

import com.xiaomi.hy.dj.PayResultCallback;
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
  
  public static long add(PayResultCallback paramPayResultCallback)
  {
    if (paramPayResultCallback == null) {
      return 0L;
    }
    long l = value.incrementAndGet();
    map.put(Long.valueOf(l), paramPayResultCallback);
    return l;
  }
  
  public static boolean isExist(long paramLong)
  {
    return map.containsKey(Long.valueOf(paramLong));
  }
  
  public static PayResultCallback pop(long paramLong)
  {
    return (PayResultCallback)map.remove(Long.valueOf(paramLong));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\model\CallModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */