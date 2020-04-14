package com.xiaomi.hy.dj.d;

import android.os.Bundle;
import com.android.volley.VolleyError;
import com.xiaomi.hy.dj.f.j;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.f.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class e
  extends com.xiaomi.hy.dj.a.a
{
  e(b paramb) {}
  
  public void a(VolleyError paramVolleyError)
  {
    com.xiaomi.hy.dj.e.b.a().a(3060);
    b.b(this.a).a();
  }
  
  public void a(String paramString)
  {
    try
    {
      paramString = new String(n.a(paramString), "UTF-8");
      com.xiaomi.hy.dj.b.a.e("createUndefineOrder--->", paramString);
      Object localObject3 = new JSONObject(paramString);
      paramString = ((JSONObject)localObject3).optString("sign");
      Object localObject1 = ((JSONObject)localObject3).optString("data");
      Object localObject2 = ((JSONObject)localObject3).optString("errorMsg");
      localObject3 = ((JSONObject)localObject3).optString("errcode");
      HashMap localHashMap = new HashMap();
      localHashMap.put("errcode", localObject3);
      localHashMap.put("errorMsg", localObject2);
      localHashMap.put("data", localObject1);
      com.xiaomi.hy.dj.b.a.e("createUndefineOrder", (String)localObject1);
      localObject2 = j.a(k.a(localHashMap) + "&uri=/order-manager/order/v3/createUnifiedOrder", b.c(this.a) + "&key");
      if ((((String)localObject2).equals(paramString)) && (((String)localObject3).equals("200")))
      {
        paramString = new String(com.xiaomi.hy.dj.f.a.c(n.a((String)localObject1), com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61")), "UTF-8");
        com.xiaomi.hy.dj.b.a.e("createUndefineOrder onSuccess", paramString);
        paramString = new JSONObject(paramString);
        b.a(this.a, paramString.optString("orderId"));
        b.b(this.a, paramString.optString("feeValue"));
        if ((b.d(this.a) == null) || ("".equals(b.d(this.a)))) {
          b.c(this.a, paramString.getString("displayName"));
        }
        paramString = paramString.optString("paymentList");
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("miOrderId", b.e(this.a));
        ((Bundle)localObject1).putString("displayName", b.d(this.a));
        ((Bundle)localObject1).putString("feeValue", b.f(this.a));
        ((Bundle)localObject1).putString("appId", b.g(this.a));
        ((Bundle)localObject1).putString("appKey", b.c(this.a));
        paramString = new JSONArray(paramString);
        localObject1 = new HashMap();
        ((Map)localObject1).put("miOrderId", b.e(this.a));
        ((Map)localObject1).put("displayName", b.d(this.a));
        ((Map)localObject1).put("feeValue", b.f(this.a));
        ((Map)localObject1).put("appId", b.g(this.a));
        ((Map)localObject1).put("appKey", b.c(this.a));
        if (paramString.length() > 0)
        {
          int i = 0;
          while (i < paramString.length())
          {
            localObject2 = paramString.optJSONObject(i);
            ((Map)localObject1).put(((JSONObject)localObject2).optString("payment"), Integer.valueOf(((JSONObject)localObject2).optInt("status")));
            i += 1;
          }
        }
        b.b(this.a).a((Map)localObject1);
        return;
      }
      if ((((String)localObject2).equals(paramString)) && (((String)localObject3).equals("5010")))
      {
        b.b(this.a).a(184);
        return;
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      com.xiaomi.hy.dj.e.b.a().a(3062);
      b.b(this.a).a(3062);
      return;
    }
    com.xiaomi.hy.dj.e.b.a().a(3062);
    b.b(this.a).a(3062);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */