package com.xiaomi.accountsdk.utils;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public class ServerTimeUtil
{
  private static volatile a a;
  private static final CopyOnWriteArraySet<b> b = new CopyOnWriteArraySet();
  
  public static a a()
  {
    return a;
  }
  
  public static void a(b paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("listener == null");
    }
    b.add(paramb);
  }
  
  public static void b()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a();
    }
  }
  
  public static void b(b paramb)
  {
    b.remove(paramb);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString1, String paramString2);
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\ServerTimeUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */