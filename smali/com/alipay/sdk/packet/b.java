package com.alipay.sdk.packet;

import android.text.TextUtils;
import org.json.JSONObject;

public final class b
{
  String a;
  public String b;
  
  public b(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  private void a(String paramString)
  {
    this.a = paramString;
  }
  
  private String b()
  {
    return this.a;
  }
  
  private void b(String paramString)
  {
    this.b = paramString;
  }
  
  private String c()
  {
    return this.b;
  }
  
  public final JSONObject a()
  {
    if (TextUtils.isEmpty(this.b)) {
      return null;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(this.b);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  public final String toString()
  {
    return "\nenvelop:" + this.a + "\nbody:" + this.b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\packet\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */