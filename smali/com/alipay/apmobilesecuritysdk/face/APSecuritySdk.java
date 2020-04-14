package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import com.alipay.apmobilesecuritysdk.f.d;
import com.alipay.apmobilesecuritysdk.f.g;
import com.alipay.apmobilesecuritysdk.f.h;
import com.alipay.apmobilesecuritysdk.f.i;
import com.alipay.apmobilesecuritysdk.g.b;
import java.util.HashMap;
import java.util.Map;

public class APSecuritySdk
{
  private static APSecuritySdk a;
  private static Object c = new Object();
  private Context b;
  
  private APSecuritySdk(Context paramContext)
  {
    this.b = paramContext;
  }
  
  public static APSecuritySdk getInstance(Context paramContext)
  {
    if (a == null) {}
    synchronized (c)
    {
      if (a == null) {
        a = new APSecuritySdk(paramContext);
      }
      return a;
    }
  }
  
  public static String getUtdid(Context paramContext)
  {
    return "";
  }
  
  public String getApdidToken()
  {
    return com.alipay.apmobilesecuritysdk.a.a.a(this.b, "");
  }
  
  public String getSdkName()
  {
    return "security-sdk-token";
  }
  
  public String getSdkVersion()
  {
    return "3.2.0-20160621";
  }
  
  /* Error */
  public TokenResult getTokenResult()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 9	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 58	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult:<init>	(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V
    //   10: astore_1
    //   11: aload_1
    //   12: aload_0
    //   13: getfield 27	com/alipay/apmobilesecuritysdk/face/APSecuritySdk:b	Landroid/content/Context;
    //   16: ldc 38
    //   18: invokestatic 45	com/alipay/apmobilesecuritysdk/a/a:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   21: putfield 62	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult:apdidToken	Ljava/lang/String;
    //   24: aload_1
    //   25: aload_0
    //   26: getfield 27	com/alipay/apmobilesecuritysdk/face/APSecuritySdk:b	Landroid/content/Context;
    //   29: invokestatic 66	com/alipay/apmobilesecuritysdk/f/h:c	(Landroid/content/Context;)Ljava/lang/String;
    //   32: putfield 69	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult:clientKey	Ljava/lang/String;
    //   35: aload_1
    //   36: aload_0
    //   37: getfield 27	com/alipay/apmobilesecuritysdk/face/APSecuritySdk:b	Landroid/content/Context;
    //   40: invokestatic 71	com/alipay/apmobilesecuritysdk/a/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   43: putfield 74	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult:apdid	Ljava/lang/String;
    //   46: aload_0
    //   47: getfield 27	com/alipay/apmobilesecuritysdk/face/APSecuritySdk:b	Landroid/content/Context;
    //   50: astore_2
    //   51: aload_1
    //   52: invokestatic 78	com/alipay/apmobilesecuritysdk/e/a:a	()Ljava/lang/String;
    //   55: putfield 81	com/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult:umidToken	Ljava/lang/String;
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: areturn
    //   62: astore_1
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_1
    //   66: athrow
    //   67: astore_2
    //   68: goto -10 -> 58
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	APSecuritySdk
    //   10	51	1	localTokenResult	TokenResult
    //   62	4	1	localObject	Object
    //   50	1	2	localContext	Context
    //   67	1	2	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	11	62	finally
    //   11	58	62	finally
    //   11	58	67	java/lang/Throwable
  }
  
  public void initToken(int paramInt, Map<String, String> paramMap, InitResultListener paramInitResultListener)
  {
    com.alipay.apmobilesecuritysdk.b.a.a().a(paramInt);
    Object localObject = h.a(this.b);
    String str1 = com.alipay.apmobilesecuritysdk.b.a.a().c();
    if ((com.alipay.b.a.a.a.a.b((String)localObject)) && (!com.alipay.b.a.a.a.a.a((String)localObject, str1)))
    {
      com.alipay.apmobilesecuritysdk.f.a.a(this.b);
      d.a(this.b);
      g.a(this.b);
      i.h();
    }
    if (!com.alipay.b.a.a.a.a.a((String)localObject, str1)) {
      h.a(this.b, str1);
    }
    localObject = com.alipay.b.a.a.a.a.a(paramMap, "utdid", "");
    str1 = com.alipay.b.a.a.a.a.a(paramMap, "tid", "");
    String str2 = com.alipay.b.a.a.a.a.a(paramMap, "userId", "");
    paramMap = (Map<String, String>)localObject;
    if (com.alipay.b.a.a.a.a.a((String)localObject))
    {
      paramMap = this.b;
      paramMap = "";
    }
    localObject = new HashMap();
    ((Map)localObject).put("utdid", paramMap);
    ((Map)localObject).put("tid", str1);
    ((Map)localObject).put("userId", str2);
    ((Map)localObject).put("appName", "");
    ((Map)localObject).put("appKeyClient", "");
    ((Map)localObject).put("appchannel", "");
    ((Map)localObject).put("rpcVersion", "3");
    b.a().a(new APSecuritySdk.1(this, (Map)localObject, paramInitResultListener));
  }
  
  public static abstract interface InitResultListener
  {
    public abstract void onResult(APSecuritySdk.TokenResult paramTokenResult);
  }
  
  public class TokenResult
  {
    public String apdid;
    public String apdidToken;
    public String clientKey;
    public String umidToken;
    
    public TokenResult() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\apmobilesecuritysdk\face\APSecuritySdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */