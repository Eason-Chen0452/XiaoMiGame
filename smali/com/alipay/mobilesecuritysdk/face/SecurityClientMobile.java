package com.alipay.mobilesecuritysdk.face;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.face.APSecuritySdk;
import java.util.HashMap;
import java.util.Map;

public class SecurityClientMobile
{
  public static String GetApdid(Context paramContext, Map<String, String> paramMap)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("utdid", com.alipay.b.a.a.a.a.a(paramMap, "utdid", ""));
      localHashMap.put("tid", com.alipay.b.a.a.a.a.a(paramMap, "tid", ""));
      localHashMap.put("userId", com.alipay.b.a.a.a.a.a(paramMap, "userId", ""));
      APSecuritySdk.getInstance(paramContext).initToken(0, localHashMap, null);
      paramContext = com.alipay.apmobilesecuritysdk.a.a.a(paramContext);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\mobilesecuritysdk\face\SecurityClientMobile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */