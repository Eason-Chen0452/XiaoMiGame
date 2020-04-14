package com.alipay.sdk.util;

import java.io.PrintWriter;
import java.io.StringWriter;

public final class c
{
  public static final boolean a = false;
  public static final String b = "mspstd";
  
  private static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }
  
  private static void a() {}
  
  private static void a(Object paramObject)
  {
    if (!(paramObject instanceof Exception)) {}
  }
  
  private static void b() {}
  
  private static void c() {}
  
  private static void d() {}
  
  private static void e() {}
  
  private static void f() {}
  
  private static void g() {}
  
  private static void h() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */