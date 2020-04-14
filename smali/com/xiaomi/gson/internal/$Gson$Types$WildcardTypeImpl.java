package com.xiaomi.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class $Gson$Types$WildcardTypeImpl
  implements Serializable, WildcardType
{
  private final Type a;
  private final Type b;
  
  public $Gson$Types$WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    if (paramArrayOfType2.length <= 1)
    {
      bool1 = true;
      a.a(bool1);
      if (paramArrayOfType1.length != 1) {
        break label87;
      }
      bool1 = true;
      label27:
      a.a(bool1);
      if (paramArrayOfType2.length != 1) {
        break label97;
      }
      a.a(paramArrayOfType2[0]);
      b.e(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] != Object.class) {
        break label92;
      }
    }
    label87:
    label92:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      a.a(bool1);
      this.b = b.a(paramArrayOfType2[0]);
      this.a = Object.class;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label27;
    }
    label97:
    a.a(paramArrayOfType1[0]);
    b.e(paramArrayOfType1[0]);
    this.b = null;
    this.a = b.a(paramArrayOfType1[0]);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (b.a(this, (WildcardType)paramObject));
  }
  
  public final Type[] getLowerBounds()
  {
    if (this.b != null) {
      return new Type[] { this.b };
    }
    return b.a;
  }
  
  public final Type[] getUpperBounds()
  {
    return new Type[] { this.a };
  }
  
  public final int hashCode()
  {
    if (this.b != null) {}
    for (int i = this.b.hashCode() + 31;; i = 1) {
      return i ^ this.a.hashCode() + 31;
    }
  }
  
  public final String toString()
  {
    if (this.b != null) {
      return "? super " + b.c(this.b);
    }
    if (this.a == Object.class) {
      return "?";
    }
    return "? extends " + b.c(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\$Gson$Types$WildcardTypeImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */