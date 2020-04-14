package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.bind.util.ISO8601Utils;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.u;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

public final class DateTypeAdapter
  extends TypeAdapter<Date>
{
  public static final u a = new b();
  private final DateFormat b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat c = DateFormat.getDateTimeInstance(2, 2);
  
  private Date a(String paramString)
  {
    try
    {
      Date localDate1 = this.c.parse(paramString);
      paramString = localDate1;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = this.b.parse(paramString);
        paramString = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate3 = ISO8601Utils.a(paramString, new ParsePosition(0));
          paramString = localDate3;
        }
        catch (ParseException localParseException3)
        {
          throw new JsonSyntaxException(paramString, localParseException3);
        }
      }
    }
    finally {}
    return paramString;
  }
  
  private void a(JsonWriter paramJsonWriter, Date paramDate)
  {
    if (paramDate == null) {}
    for (;;)
    {
      try
      {
        paramJsonWriter.f();
        return;
      }
      finally {}
      paramJsonWriter.b(this.b.format(paramDate));
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\DateTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */