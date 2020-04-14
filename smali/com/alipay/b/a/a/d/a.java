package com.alipay.b.a.a.d;

import java.io.File;

public final class a
{
  public static String a(String paramString)
  {
    Object localObject1 = "";
    try
    {
      localObject2 = System.getProperty(paramString);
      localObject1 = localObject2;
    }
    catch (Throwable localThrowable)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (com.alipay.b.a.a.a.a.a((String)localObject1)) {
      localObject2 = b.a(".SystemConfig" + File.separator + paramString);
    }
    return (String)localObject2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */