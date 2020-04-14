package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;

public final class a
{
  public static final String a = "alipay_cashier_statistic_record";
  private static c b;
  
  public static void a(Context paramContext)
  {
    if (b != null) {
      return;
    }
    b = new c(paramContext);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    int i = 0;
    Object localObject1;
    c localc;
    try
    {
      localObject1 = b;
      if (localObject1 == null) {}
      for (;;)
      {
        return;
        localc = b;
        if (!TextUtils.isEmpty(localc.P)) {
          break;
        }
        paramString = "";
        new Thread(new b(paramContext, paramString)).start();
        b = null;
      }
      arrayOfString1 = paramString.split("&");
    }
    finally {}
    String[] arrayOfString1;
    label92:
    Object localObject2;
    String str;
    if (arrayOfString1 != null)
    {
      int j = arrayOfString1.length;
      localObject1 = null;
      paramString = null;
      localObject2 = localObject1;
      str = paramString;
      if (i < j)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=");
        localObject2 = localObject1;
        str = paramString;
        if (arrayOfString2 == null) {
          break label387;
        }
        localObject2 = localObject1;
        str = paramString;
        if (arrayOfString2.length != 2) {
          break label387;
        }
        if (arrayOfString2[0].equalsIgnoreCase("partner"))
        {
          arrayOfString2[1].replace("\"", "");
          localObject2 = localObject1;
          str = paramString;
        }
        else if (arrayOfString2[0].equalsIgnoreCase("out_trade_no"))
        {
          str = arrayOfString2[1].replace("\"", "");
          localObject2 = localObject1;
        }
        else
        {
          localObject2 = localObject1;
          str = paramString;
          if (arrayOfString2[0].equalsIgnoreCase("trade_no"))
          {
            localObject2 = arrayOfString2[1].replace("\"", "");
            str = paramString;
          }
        }
      }
    }
    for (;;)
    {
      paramString = c.a((String)localObject2);
      localObject1 = c.a(str);
      localc.I = String.format("%s,%s,-,%s,-,-,-", new Object[] { paramString, localObject1, c.a((String)localObject1) });
      paramString = String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", new Object[] { localc.H, localc.I, localc.J, localc.K, localc.L, localc.M, localc.N, localc.O, localc.P, localc.Q });
      break;
      label387:
      i += 1;
      localObject1 = localObject2;
      paramString = str;
      break label92;
      localObject2 = null;
      str = null;
    }
  }
  
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    if (b == null) {
      return;
    }
    b.a(paramString1, paramString2, paramString3);
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (b == null) {
      return;
    }
    b.a(paramString1, paramString2, paramThrowable);
  }
  
  private static void a(String paramString1, String paramString2, Throwable paramThrowable, String paramString3)
  {
    if (b == null) {
      return;
    }
    b.a(paramString1, paramString2, c.a(paramThrowable), paramString3);
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (b == null) {}
    while (paramThrowable.getClass() == null) {
      return;
    }
    b.a(paramString, paramThrowable.getClass().getSimpleName(), paramThrowable);
  }
  
  private static void b(Context paramContext, String paramString)
  {
    new Thread(new b(paramContext, paramString)).start();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\statistic\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */