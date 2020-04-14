package com.xiaomi.gamecenter.channel.writer;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class d
  implements PayloadWriter.a
{
  d(Map paramMap) {}
  
  public final a a(Map<Integer, ByteBuffer> paramMap)
  {
    if ((this.a != null) && (!this.a.isEmpty())) {
      paramMap.putAll(this.a);
    }
    a locala = new a();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      locala.a(new b(((Integer)localEntry.getKey()).intValue(), (ByteBuffer)localEntry.getValue()));
    }
    return locala;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */