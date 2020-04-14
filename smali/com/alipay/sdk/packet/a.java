package com.alipay.sdk.packet;

import android.text.TextUtils;

public final class a
{
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "";
    }
    label81:
    Object localObject1;
    label104:
    label139:
    label194:
    label203:
    label213:
    do
    {
      return paramString;
      String[] arrayOfString = paramString.split("&");
      if (arrayOfString.length == 0) {
        return "";
      }
      int j = arrayOfString.length;
      int i = 0;
      Object localObject4 = null;
      Object localObject3 = null;
      Object localObject5 = null;
      Object localObject6 = null;
      if (i < j)
      {
        String str = arrayOfString[i];
        paramString = (String)localObject6;
        Object localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject6))
        {
          if (!str.contains("biz_type")) {
            paramString = null;
          }
        }
        else
        {
          localObject1 = localObject5;
          if (TextUtils.isEmpty((CharSequence)localObject5))
          {
            if (str.contains("biz_no")) {
              break label194;
            }
            localObject1 = null;
          }
          localObject2 = localObject3;
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            if ((str.contains("trade_no")) && (!str.startsWith("out_trade_no"))) {
              break label203;
            }
            localObject2 = null;
          }
          localObject3 = localObject4;
          if (TextUtils.isEmpty((CharSequence)localObject4)) {
            if (str.contains("app_userid")) {
              break label213;
            }
          }
        }
        for (localObject3 = null;; localObject3 = e(str))
        {
          i += 1;
          localObject4 = localObject3;
          localObject6 = paramString;
          localObject5 = localObject1;
          localObject3 = localObject2;
          break;
          paramString = e(str);
          break label81;
          localObject1 = e(str);
          break label104;
          localObject2 = e(str);
          break label139;
        }
      }
      paramString = new StringBuilder();
      if (!TextUtils.isEmpty((CharSequence)localObject6)) {
        paramString.append("biz_type=" + (String)localObject6 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject5)) {
        paramString.append("biz_no=" + (String)localObject5 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject3)) {
        paramString.append("trade_no=" + (String)localObject3 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject4)) {
        paramString.append("app_userid=" + (String)localObject4 + ";");
      }
      localObject1 = paramString.toString();
      paramString = (String)localObject1;
    } while (!((String)localObject1).endsWith(";"));
    return ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
  }
  
  private static String b(String paramString)
  {
    if (!paramString.contains("biz_type")) {
      return null;
    }
    return e(paramString);
  }
  
  private static String c(String paramString)
  {
    if (!paramString.contains("biz_no")) {
      return null;
    }
    return e(paramString);
  }
  
  private static String d(String paramString)
  {
    if ((!paramString.contains("trade_no")) || (paramString.startsWith("out_trade_no"))) {
      return null;
    }
    return e(paramString);
  }
  
  private static String e(String paramString)
  {
    Object localObject = paramString.split("=");
    paramString = null;
    if (localObject.length > 1)
    {
      localObject = localObject[1];
      paramString = (String)localObject;
      if (((String)localObject).contains("\"")) {
        paramString = ((String)localObject).replaceAll("\"", "");
      }
    }
    return paramString;
  }
  
  private static String f(String paramString)
  {
    if (!paramString.contains("app_userid")) {
      return null;
    }
    return e(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\packet\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */