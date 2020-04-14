package com.xiaomi.gson.internal;

import java.math.BigDecimal;

public final class LazilyParsedNumber
  extends Number
{
  private final String a;
  
  public LazilyParsedNumber(String paramString)
  {
    this.a = paramString;
  }
  
  public final double doubleValue()
  {
    return Double.parseDouble(this.a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LazilyParsedNumber)) {
        break;
      }
      paramObject = (LazilyParsedNumber)paramObject;
    } while ((this.a == ((LazilyParsedNumber)paramObject).a) || (this.a.equals(((LazilyParsedNumber)paramObject).a)));
    return false;
    return false;
  }
  
  public final float floatValue()
  {
    return Float.parseFloat(this.a);
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
  
  public final int intValue()
  {
    try
    {
      int i = Integer.parseInt(this.a);
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(this.a);
        return (int)l;
      }
      catch (NumberFormatException localNumberFormatException2) {}
    }
    return new BigDecimal(this.a).intValue();
  }
  
  public final long longValue()
  {
    try
    {
      long l = Long.parseLong(this.a);
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return new BigDecimal(this.a).longValue();
  }
  
  public final String toString()
  {
    return this.a;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\LazilyParsedNumber.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */