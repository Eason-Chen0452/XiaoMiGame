package com.alipay.sdk.util;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.app.statistic.a;

public final class h
{
  public static final String a = "pref_trade_token";
  public static final String b = ";";
  public static final String c = "result={";
  public static final String d = "}";
  public static final String e = "trade_token=\"";
  public static final String f = "\"";
  public static final String g = "trade_token=";
  
  private static String a(Context paramContext)
  {
    return i.b(paramContext, "pref_trade_token", "");
  }
  
  private static String a(String paramString)
  {
    Object localObject = null;
    String[] arrayOfString1 = null;
    if (TextUtils.isEmpty(paramString)) {
      localObject = arrayOfString1;
    }
    int i;
    do
    {
      return (String)localObject;
      arrayOfString1 = paramString.split(";");
      i = 0;
      paramString = (String)localObject;
      localObject = paramString;
    } while (i >= arrayOfString1.length);
    localObject = paramString;
    String[] arrayOfString2;
    int j;
    if (arrayOfString1[i].startsWith("result={"))
    {
      localObject = paramString;
      if (arrayOfString1[i].endsWith("}"))
      {
        arrayOfString2 = arrayOfString1[i].substring(8, arrayOfString1[i].length() - 1).split("&");
        j = 0;
      }
    }
    for (;;)
    {
      localObject = paramString;
      if (j < arrayOfString2.length) {
        if ((!arrayOfString2[j].startsWith("trade_token=\"")) || (!arrayOfString2[j].endsWith("\""))) {
          break label154;
        }
      }
      for (localObject = arrayOfString2[j].substring(13, arrayOfString2[j].length() - 1);; localObject = arrayOfString2[j].substring(12))
      {
        i += 1;
        paramString = (String)localObject;
        break;
        label154:
        if (!arrayOfString2[j].startsWith("trade_token=")) {
          break label179;
        }
      }
      label179:
      j += 1;
    }
  }
  
  private static void a(Context paramContext, String paramString)
  {
    Object localObject = null;
    String[] arrayOfString1 = null;
    for (;;)
    {
      int i;
      try
      {
        if (TextUtils.isEmpty(paramString))
        {
          localObject = arrayOfString1;
          if (!TextUtils.isEmpty((CharSequence)localObject)) {
            i.a(paramContext, "pref_trade_token", (String)localObject);
          }
        }
        else
        {
          arrayOfString1 = paramString.split(";");
          i = 0;
          paramString = (String)localObject;
          localObject = paramString;
          if (i >= arrayOfString1.length) {
            continue;
          }
          localObject = paramString;
          if (!arrayOfString1[i].startsWith("result={")) {
            break label214;
          }
          localObject = paramString;
          if (!arrayOfString1[i].endsWith("}")) {
            break label214;
          }
          String[] arrayOfString2 = arrayOfString1[i].substring(8, arrayOfString1[i].length() - 1).split("&");
          int j = 0;
          localObject = paramString;
          if (j >= arrayOfString2.length) {
            break label214;
          }
          if ((arrayOfString2[j].startsWith("trade_token=\"")) && (arrayOfString2[j].endsWith("\"")))
          {
            localObject = arrayOfString2[j].substring(13, arrayOfString2[j].length() - 1);
            break label214;
          }
          if (arrayOfString2[j].startsWith("trade_token="))
          {
            localObject = arrayOfString2[j].substring(12);
            break label214;
          }
          j += 1;
          continue;
        }
        return;
      }
      catch (Throwable paramContext)
      {
        a.a("biz", "SaveTradeTokenError", paramContext);
      }
      label214:
      i += 1;
      paramString = (String)localObject;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */