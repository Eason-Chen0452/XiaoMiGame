package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonElement;
import com.xiaomi.gson.TypeAdapter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

public final class o
{
  public static final TypeAdapter<String> A = new w();
  public static final TypeAdapter<BigDecimal> B = new x();
  public static final TypeAdapter<BigInteger> C = new y();
  public static final com.xiaomi.gson.u D = a(String.class, A);
  public static final TypeAdapter<StringBuilder> E = new z();
  public static final com.xiaomi.gson.u F = a(StringBuilder.class, E);
  public static final TypeAdapter<StringBuffer> G = new ab();
  public static final com.xiaomi.gson.u H = a(StringBuffer.class, G);
  public static final TypeAdapter<URL> I = new ac();
  public static final com.xiaomi.gson.u J = a(URL.class, I);
  public static final TypeAdapter<URI> K = new ad();
  public static final com.xiaomi.gson.u L = a(URI.class, K);
  public static final TypeAdapter<InetAddress> M = new ae();
  public static final com.xiaomi.gson.u N = b(InetAddress.class, M);
  public static final TypeAdapter<UUID> O = new af();
  public static final com.xiaomi.gson.u P = a(UUID.class, O);
  public static final TypeAdapter<Currency> Q = new ag().a();
  public static final com.xiaomi.gson.u R = a(Currency.class, Q);
  public static final com.xiaomi.gson.u S = new ah();
  public static final TypeAdapter<Calendar> T = new aj();
  public static final com.xiaomi.gson.u U = new aq(Calendar.class, GregorianCalendar.class, T);
  public static final TypeAdapter<Locale> V = new ak();
  public static final com.xiaomi.gson.u W = a(Locale.class, V);
  public static final TypeAdapter<JsonElement> X = new al();
  public static final com.xiaomi.gson.u Y = b(JsonElement.class, X);
  public static final com.xiaomi.gson.u Z = new an();
  public static final TypeAdapter<Class> a = new p();
  public static final com.xiaomi.gson.u b = a(Class.class, a);
  public static final TypeAdapter<BitSet> c = new aa();
  public static final com.xiaomi.gson.u d = a(BitSet.class, c);
  public static final TypeAdapter<Boolean> e = new am();
  public static final TypeAdapter<Boolean> f = new au();
  public static final com.xiaomi.gson.u g = a(Boolean.TYPE, Boolean.class, e);
  public static final TypeAdapter<Number> h = new av();
  public static final com.xiaomi.gson.u i = a(Byte.TYPE, Byte.class, h);
  public static final TypeAdapter<Number> j = new aw();
  public static final com.xiaomi.gson.u k = a(Short.TYPE, Short.class, j);
  public static final TypeAdapter<Number> l = new ax();
  public static final com.xiaomi.gson.u m = a(Integer.TYPE, Integer.class, l);
  public static final TypeAdapter<AtomicInteger> n = new ay().a();
  public static final com.xiaomi.gson.u o = a(AtomicInteger.class, n);
  public static final TypeAdapter<AtomicBoolean> p = new az().a();
  public static final com.xiaomi.gson.u q = a(AtomicBoolean.class, p);
  public static final TypeAdapter<AtomicIntegerArray> r = new q().a();
  public static final com.xiaomi.gson.u s = a(AtomicIntegerArray.class, r);
  public static final TypeAdapter<Number> t = new r();
  public static final TypeAdapter<Number> u = new s();
  public static final TypeAdapter<Number> v = new t();
  public static final TypeAdapter<Number> w = new u();
  public static final com.xiaomi.gson.u x = a(Number.class, w);
  public static final TypeAdapter<Character> y = new v();
  public static final com.xiaomi.gson.u z = a(Character.TYPE, Character.class, y);
  
  public static <TT> com.xiaomi.gson.u a(Class<TT> paramClass, TypeAdapter<TT> paramTypeAdapter)
  {
    return new ao(paramClass, paramTypeAdapter);
  }
  
  public static <TT> com.xiaomi.gson.u a(Class<TT> paramClass1, Class<TT> paramClass2, TypeAdapter<? super TT> paramTypeAdapter)
  {
    return new ap(paramClass1, paramClass2, paramTypeAdapter);
  }
  
  private static <T1> com.xiaomi.gson.u b(Class<T1> paramClass, TypeAdapter<T1> paramTypeAdapter)
  {
    return new ar(paramClass, paramTypeAdapter);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */