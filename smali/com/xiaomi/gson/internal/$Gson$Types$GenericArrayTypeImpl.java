package com.xiaomi.gson.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class $Gson$Types$GenericArrayTypeImpl
  implements Serializable, GenericArrayType
{
  private final Type a;
  
  public $Gson$Types$GenericArrayTypeImpl(Type paramType)
  {
    this.a = b.a(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (b.a(this, (GenericArrayType)paramObject));
  }
  
  public final Type getGenericComponentType()
  {
    return this.a;
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
  
  public final String toString()
  {
    return b.c(this.a) + "[]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\$Gson$Types$GenericArrayTypeImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */