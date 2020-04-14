package com.xiaomi.gson;

import com.xiaomi.gson.internal.Excluder;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class GsonBuilder
{
  private Excluder a = Excluder.a;
  private LongSerializationPolicy b = LongSerializationPolicy.DEFAULT;
  private g c = FieldNamingPolicy.IDENTITY;
  private final Map<Type, o<?>> d = new HashMap();
  private final List<u> e = new ArrayList();
  private final List<u> f = new ArrayList();
  private boolean g = false;
  private int h = 2;
  private int i = 2;
  private boolean j = false;
  private boolean k = false;
  private boolean l = true;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\GsonBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */