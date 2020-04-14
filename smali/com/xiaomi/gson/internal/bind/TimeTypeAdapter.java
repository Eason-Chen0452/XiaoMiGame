package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.u;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class TimeTypeAdapter
  extends TypeAdapter<Time>
{
  public static final u a = new l();
  private final DateFormat b = new SimpleDateFormat("hh:mm:ss a");
  
  private void a(JsonWriter paramJsonWriter, Time paramTime)
  {
    if (paramTime == null) {}
    for (paramTime = null;; paramTime = this.b.format(paramTime)) {
      try
      {
        paramJsonWriter.b(paramTime);
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  private Time b(com.xiaomi.gson.stream.JsonReader paramJsonReader)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 50	com/xiaomi/gson/stream/JsonReader:f	()Lcom/xiaomi/gson/stream/JsonToken;
    //   6: getstatic 56	com/xiaomi/gson/stream/JsonToken:NULL	Lcom/xiaomi/gson/stream/JsonToken;
    //   9: if_acmpne +13 -> 22
    //   12: aload_1
    //   13: invokevirtual 59	com/xiaomi/gson/stream/JsonReader:j	()V
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 61	java/sql/Time
    //   25: dup
    //   26: aload_0
    //   27: getfield 29	com/xiaomi/gson/internal/bind/TimeTypeAdapter:b	Ljava/text/DateFormat;
    //   30: aload_1
    //   31: invokevirtual 65	com/xiaomi/gson/stream/JsonReader:h	()Ljava/lang/String;
    //   34: invokevirtual 69	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   37: invokevirtual 75	java/util/Date:getTime	()J
    //   40: invokespecial 78	java/sql/Time:<init>	(J)V
    //   43: astore_1
    //   44: goto -26 -> 18
    //   47: astore_1
    //   48: new 80	com/xiaomi/gson/JsonSyntaxException
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 83	com/xiaomi/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	TimeTypeAdapter
    //   0	62	1	paramJsonReader	com.xiaomi.gson.stream.JsonReader
    // Exception table:
    //   from	to	target	type
    //   22	44	47	java/text/ParseException
    //   2	16	57	finally
    //   22	44	57	finally
    //   48	57	57	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\TimeTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */