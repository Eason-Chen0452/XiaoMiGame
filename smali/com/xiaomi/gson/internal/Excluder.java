package com.xiaomi.gson.internal;

import com.xiaomi.gamecenter.sdk.bm;
import com.xiaomi.gamecenter.sdk.bp;
import com.xiaomi.gamecenter.sdk.bq;
import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.FieldAttributes;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.a;
import com.xiaomi.gson.u;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder
  implements u, Cloneable
{
  public static final Excluder a = new Excluder();
  private double b = -1.0D;
  private int c = 136;
  private boolean d = true;
  private boolean e;
  private List<a> f = Collections.emptyList();
  private List<a> g = Collections.emptyList();
  
  private Excluder a()
  {
    try
    {
      Excluder localExcluder = (Excluder)super.clone();
      return localExcluder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  private boolean a(bp parambp, bq parambq)
  {
    if ((parambp != null) && (parambp.a() > this.b))
    {
      i = 0;
      if (i == 0) {
        break label60;
      }
      if ((parambq == null) || (parambq.a() > this.b)) {
        break label55;
      }
    }
    label55:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label60;
      }
      return true;
      i = 1;
      break;
    }
    label60:
    return false;
  }
  
  private static boolean a(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }
  
  private static boolean b(Class<?> paramClass)
  {
    if (paramClass.isMemberClass())
    {
      if ((paramClass.getModifiers() & 0x8) != 0) {}
      for (int i = 1; i == 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    Class localClass = parambr.getRawType();
    boolean bool1 = a(localClass, true);
    boolean bool2 = a(localClass, false);
    if ((!bool1) && (!bool2)) {
      return null;
    }
    return new q(this, bool2, bool1, paramGson, parambr);
  }
  
  public final boolean a(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.b != -1.0D) && (!a((bp)paramClass.getAnnotation(bp.class), (bq)paramClass.getAnnotation(bq.class)))) {
      return true;
    }
    if ((!this.d) && (b(paramClass))) {
      return true;
    }
    if (a(paramClass)) {
      return true;
    }
    if (paramBoolean) {}
    for (paramClass = this.f;; paramClass = this.g)
    {
      paramClass = paramClass.iterator();
      do
      {
        if (!paramClass.hasNext()) {
          break;
        }
      } while (!((a)paramClass.next()).b());
      return true;
    }
    return false;
  }
  
  public final boolean a(Field paramField, boolean paramBoolean)
  {
    if ((this.c & paramField.getModifiers()) != 0) {
      return true;
    }
    if ((this.b != -1.0D) && (!a((bp)paramField.getAnnotation(bp.class), (bq)paramField.getAnnotation(bq.class)))) {
      return true;
    }
    if (paramField.isSynthetic()) {
      return true;
    }
    if (this.e)
    {
      localObject = (bm)paramField.getAnnotation(bm.class);
      if (localObject != null)
      {
        if (!paramBoolean) {
          break label97;
        }
        if (((bm)localObject).a()) {
          break label106;
        }
      }
      label97:
      while (!((bm)localObject).b()) {
        return true;
      }
    }
    label106:
    if ((!this.d) && (b(paramField.getType()))) {
      return true;
    }
    if (a(paramField.getType())) {
      return true;
    }
    if (paramBoolean) {}
    for (Object localObject = this.f; !((List)localObject).isEmpty(); localObject = this.g)
    {
      new FieldAttributes(paramField);
      paramField = ((List)localObject).iterator();
      do
      {
        if (!paramField.hasNext()) {
          break;
        }
      } while (!((a)paramField.next()).a());
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\Excluder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */