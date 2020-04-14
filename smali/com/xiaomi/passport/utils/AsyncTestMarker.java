package com.xiaomi.passport.utils;

public final class AsyncTestMarker
{
  private static final a a;
  private static volatile a b;
  
  static
  {
    b localb = new b((byte)0);
    a = localb;
    b = localb;
  }
  
  public static abstract interface a {}
  
  private static final class b
    implements AsyncTestMarker.a
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\utils\AsyncTestMarker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */