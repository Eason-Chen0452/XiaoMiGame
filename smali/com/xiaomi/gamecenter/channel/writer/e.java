package com.xiaomi.gamecenter.channel.writer;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class e
  implements PayloadWriter.a
{
  e(int paramInt) {}
  
  public final a a(Map<Integer, ByteBuffer> paramMap)
  {
    a locala = new a();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (((Integer)localEntry.getKey()).intValue() != this.a) {
        locala.a(new b(((Integer)localEntry.getKey()).intValue(), (ByteBuffer)localEntry.getValue()));
      }
    }
    return locala;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */