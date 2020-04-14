package com.xiaomi.hy.dj.d;

import android.text.TextUtils;
import com.android.volley.VolleyError;
import com.xiaomi.hy.dj.f.j;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.f.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class f
  extends com.xiaomi.hy.dj.a.a
{
  f(b paramb, String paramString) {}
  
  public void a(VolleyError paramVolleyError)
  {
    com.xiaomi.hy.dj.e.b.a().a(3060);
    b.b(this.b).a();
  }
  
  public void a(String paramString)
  {
    Object localObject1;
    String str1;
    String str2;
    try
    {
      paramString = new String(n.a(paramString), "UTF-8");
      com.xiaomi.hy.dj.b.a.e("getPayInfo", paramString);
      localObject1 = new JSONObject(paramString);
      paramString = ((JSONObject)localObject1).optString("sign");
      str1 = ((JSONObject)localObject1).optString("data");
      str2 = ((JSONObject)localObject1).optString("errorMsg");
      localObject1 = ((JSONObject)localObject1).optString("errcode");
      Object localObject2 = new HashMap();
      ((Map)localObject2).put("errcode", localObject1);
      ((Map)localObject2).put("errorMsg", str2);
      ((Map)localObject2).put("data", str1);
      com.xiaomi.hy.dj.b.a.e("data", str1);
      if ((!j.a(k.a((Map)localObject2) + "&uri=/order-manager/order/v3/getTransactionData", b.c(this.b) + "&key").equals(paramString)) || (!((String)localObject1).equals("200"))) {
        break label522;
      }
      paramString = new String(com.xiaomi.hy.dj.f.a.c(n.a(str1), com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61")), "UTF-8");
      com.xiaomi.hy.dj.b.a.e("getPayInfo onSuccess", paramString);
      localObject2 = new JSONObject(paramString);
      paramString = ((JSONObject)localObject2).optString("schemeUrl");
      str1 = ((JSONObject)localObject2).optString("codeUrl");
      str2 = ((JSONObject)localObject2).optString("mwebUrl");
      localObject1 = ((JSONObject)localObject2).optString("referer");
      if ("PAYECO".equals(this.a))
      {
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("Amount", ((JSONObject)localObject2).optString("Amount"));
          localJSONObject.put("MerchOrderId", ((JSONObject)localObject2).optString("MerchOrderId"));
          localJSONObject.put("MerchantId", ((JSONObject)localObject2).optString("MerchantId"));
          localJSONObject.put("Sign", ((JSONObject)localObject2).optString("Sign"));
          localJSONObject.put("OrderId", ((JSONObject)localObject2).optString("OrderId"));
          localJSONObject.put("TradeTime", ((JSONObject)localObject2).optString("TradeTime"));
          localJSONObject.put("Version", ((JSONObject)localObject2).optString("Version"));
          b.b(this.b).a(this.a, localJSONObject.toString(), null);
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      com.xiaomi.hy.dj.b.a.e("mwebUrl", str2);
      com.xiaomi.hy.dj.b.a.e("referer", (String)localObject1);
      if (!TextUtils.isEmpty(paramString))
      {
        b.b(this.b).a(this.a, paramString, null);
        return;
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      com.xiaomi.hy.dj.e.b.a().a(3063);
      b.b(this.b).a(3063);
      return;
    }
    if (!TextUtils.isEmpty(str2))
    {
      b.b(this.b).a(this.a, str2, (String)localObject1);
      return;
    }
    b.b(this.b).a(this.a, str1, null);
    return;
    label522:
    com.xiaomi.hy.dj.e.b.a().a(3063);
    b.b(this.b).a(3063);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */