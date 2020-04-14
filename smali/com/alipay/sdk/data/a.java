package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import org.json.JSONObject;

public final class a
{
  public static final int a = 3500;
  public static final String b = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";
  public static final int c = 1000;
  public static final int d = 20000;
  public static final String e = "alipay_cashier_dynamic_config";
  public static final String f = "timeout";
  public static final String g = "st_sdk_config";
  public static final String h = "tbreturl";
  private static a k;
  int i = 3500;
  public String j = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";
  
  private void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      paramString = new JSONObject(paramString);
      this.i = paramString.optInt("timeout", 3500);
      this.j = paramString.optString("tbreturl", "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&").trim();
      return;
    }
    catch (Throwable paramString) {}
  }
  
  public static a b()
  {
    a locala;
    Object localObject;
    if (k == null)
    {
      locala = new a();
      k = locala;
      localObject = i.b(com.alipay.sdk.sys.b.a().a, "alipay_cashier_dynamic_config", null);
      if (TextUtils.isEmpty((CharSequence)localObject)) {}
    }
    try
    {
      localObject = new JSONObject((String)localObject);
      locala.i = ((JSONObject)localObject).optInt("timeout", 3500);
      locala.j = ((JSONObject)localObject).optString("tbreturl", "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&").trim();
      return k;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  private void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      paramString = new JSONObject(paramString).optJSONObject("st_sdk_config");
      this.i = paramString.optInt("timeout", 3500);
      this.j = paramString.optString("tbreturl", "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&").trim();
      return;
    }
    catch (Throwable paramString) {}
  }
  
  private String c()
  {
    return this.j;
  }
  
  private void d()
  {
    Object localObject = i.b(com.alipay.sdk.sys.b.a().a, "alipay_cashier_dynamic_config", null);
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    try
    {
      localObject = new JSONObject((String)localObject);
      this.i = ((JSONObject)localObject).optInt("timeout", 3500);
      this.j = ((JSONObject)localObject).optString("tbreturl", "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&").trim();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private void e()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("timeout", a());
      localJSONObject.put("tbreturl", this.j);
      i.a(com.alipay.sdk.sys.b.a().a, "alipay_cashier_dynamic_config", localJSONObject.toString());
      return;
    }
    catch (Exception localException) {}
  }
  
  public final int a()
  {
    if ((this.i < 1000) || (this.i > 20000)) {
      return 3500;
    }
    new StringBuilder("DynamicConfig::getJumpTimeout >").append(this.i);
    return this.i;
  }
  
  public final void a(Context paramContext)
  {
    new Thread(new b(this, paramContext)).start();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\data\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */