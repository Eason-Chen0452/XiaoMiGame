package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class SqlDateTypeAdapter
  extends TypeAdapter<Date>
{
  public static final TypeAdapterFactory FACTORY = new SqlDateTypeAdapter.1();
  private final DateFormat format = new SimpleDateFormat("MMM d, yyyy");
  
  /* Error */
  public final Date read(com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader paramJsonReader)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 42	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:peek	()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;
    //   6: getstatic 48	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken:NULL	Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;
    //   9: if_acmpne +13 -> 22
    //   12: aload_1
    //   13: invokevirtual 51	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:nextNull	()V
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 53	java/sql/Date
    //   25: dup
    //   26: aload_0
    //   27: getfield 29	com/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/SqlDateTypeAdapter:format	Ljava/text/DateFormat;
    //   30: aload_1
    //   31: invokevirtual 57	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:nextString	()Ljava/lang/String;
    //   34: invokevirtual 63	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   37: invokevirtual 69	java/util/Date:getTime	()J
    //   40: invokespecial 72	java/sql/Date:<init>	(J)V
    //   43: astore_1
    //   44: goto -26 -> 18
    //   47: astore_1
    //   48: new 74	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 77	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	SqlDateTypeAdapter
    //   0	62	1	paramJsonReader	com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader
    // Exception table:
    //   from	to	target	type
    //   22	44	47	java/text/ParseException
    //   2	16	57	finally
    //   22	44	57	finally
    //   48	57	57	finally
  }
  
  public final void write(JsonWriter paramJsonWriter, Date paramDate)
  {
    if (paramDate == null) {}
    for (paramDate = null;; paramDate = this.format.format(paramDate)) {
      try
      {
        paramJsonWriter.value(paramDate);
        return;
      }
      finally {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\SqlDateTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */