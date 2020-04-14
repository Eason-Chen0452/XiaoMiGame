package com.xiaomi.gson;

import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

final class DefaultDateTypeAdapter
  implements p<Date>, q<Date>
{
  private final DateFormat a;
  private final DateFormat b;
  
  DefaultDateTypeAdapter()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }
  
  public DefaultDateTypeAdapter(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }
  
  private DefaultDateTypeAdapter(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    this.a = paramDateFormat1;
    this.b = paramDateFormat2;
  }
  
  private JsonElement a(Date paramDate)
  {
    synchronized (this.b)
    {
      paramDate = new JsonPrimitive(this.a.format(paramDate));
      return paramDate;
    }
  }
  
  private Date a(JsonElement paramJsonElement)
  {
    Date localDate2;
    synchronized (this.b)
    {
      try
      {
        Date localDate1 = this.b.parse(paramJsonElement.b());
        return localDate1;
      }
      catch (ParseException localParseException1) {}
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(DefaultDateTypeAdapter.class.getSimpleName());
    localStringBuilder.append('(').append(this.b.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\DefaultDateTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */