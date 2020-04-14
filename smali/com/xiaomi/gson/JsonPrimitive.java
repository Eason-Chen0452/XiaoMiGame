package com.xiaomi.gson;

import com.xiaomi.gson.internal.LazilyParsedNumber;
import com.xiaomi.gson.internal.a;
import java.math.BigInteger;

public final class JsonPrimitive
  extends JsonElement
{
  private static final Class<?>[] a = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object b;
  
  public JsonPrimitive(Boolean paramBoolean)
  {
    a(paramBoolean);
  }
  
  public JsonPrimitive(Character paramCharacter)
  {
    a(paramCharacter);
  }
  
  public JsonPrimitive(Number paramNumber)
  {
    a(paramNumber);
  }
  
  public JsonPrimitive(String paramString)
  {
    a(paramString);
  }
  
  private void a(Object paramObject)
  {
    boolean bool = false;
    if ((paramObject instanceof Character))
    {
      this.b = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    int i;
    if (!(paramObject instanceof Number))
    {
      if (!(paramObject instanceof String)) {
        break label59;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {
        bool = true;
      }
      a.a(bool);
      this.b = paramObject;
      return;
      label59:
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = a;
      int j = arrayOfClass.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label105;
        }
        if (arrayOfClass[i].isAssignableFrom(localClass))
        {
          i = 1;
          break;
        }
        i += 1;
      }
      label105:
      i = 0;
    }
  }
  
  private static boolean a(JsonPrimitive paramJsonPrimitive)
  {
    if ((paramJsonPrimitive.b instanceof Number))
    {
      paramJsonPrimitive = (Number)paramJsonPrimitive.b;
      return ((paramJsonPrimitive instanceof BigInteger)) || ((paramJsonPrimitive instanceof Long)) || ((paramJsonPrimitive instanceof Integer)) || ((paramJsonPrimitive instanceof Short)) || ((paramJsonPrimitive instanceof Byte));
    }
    return false;
  }
  
  public final Number a()
  {
    if ((this.b instanceof String)) {
      return new LazilyParsedNumber((String)this.b);
    }
    return (Number)this.b;
  }
  
  public final String b()
  {
    if ((this.b instanceof Number)) {
      return a().toString();
    }
    if ((this.b instanceof Boolean)) {
      return ((Boolean)this.b).toString();
    }
    return (String)this.b;
  }
  
  public final double c()
  {
    if ((this.b instanceof Number)) {
      return a().doubleValue();
    }
    return Double.parseDouble(b());
  }
  
  public final long d()
  {
    if ((this.b instanceof Number)) {
      return a().longValue();
    }
    return Long.parseLong(b());
  }
  
  public final int e()
  {
    if ((this.b instanceof Number)) {
      return a().intValue();
    }
    return Integer.parseInt(b());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    double d1;
    double d2;
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (JsonPrimitive)paramObject;
          if (this.b != null) {
            break;
          }
        } while (((JsonPrimitive)paramObject).b == null);
        return false;
        if ((!a(this)) || (!a((JsonPrimitive)paramObject))) {
          break;
        }
      } while (a().longValue() == ((JsonPrimitive)paramObject).a().longValue());
      return false;
      if ((!(this.b instanceof Number)) || (!(((JsonPrimitive)paramObject).b instanceof Number))) {
        break;
      }
      d1 = a().doubleValue();
      d2 = ((JsonPrimitive)paramObject).a().doubleValue();
    } while ((d1 == d2) || ((Double.isNaN(d1)) && (Double.isNaN(d2))));
    return false;
    return this.b.equals(((JsonPrimitive)paramObject).b);
  }
  
  public final boolean f()
  {
    if ((this.b instanceof Boolean)) {
      return ((Boolean)this.b).booleanValue();
    }
    return Boolean.parseBoolean(b());
  }
  
  public final boolean h()
  {
    return this.b instanceof Boolean;
  }
  
  public final int hashCode()
  {
    if (this.b == null) {
      return 31;
    }
    long l;
    if (a(this))
    {
      l = a().longValue();
      return (int)(l ^ l >>> 32);
    }
    if ((this.b instanceof Number))
    {
      l = Double.doubleToLongBits(a().doubleValue());
      return (int)(l ^ l >>> 32);
    }
    return this.b.hashCode();
  }
  
  public final boolean i()
  {
    return this.b instanceof Number;
  }
  
  public final boolean j()
  {
    return this.b instanceof String;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonPrimitive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */