package com.xiaomi.hy.dj.d;

import com.android.volley.VolleyError;
import com.xiaomi.hy.dj.f.j;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.f.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class g
  extends com.xiaomi.hy.dj.a.a
{
  g(b paramb) {}
  
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
      com.xiaomi.hy.dj.b.a.e("queryOrder", paramString);
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).optString("sign");
      String str1 = ((JSONObject)localObject).optString("data");
      String str2 = ((JSONObject)localObject).optString("errorMsg");
      localObject = ((JSONObject)localObject).optString("errcode");
      HashMap localHashMap = new HashMap();
      localHashMap.put("errcode", localObject);
      localHashMap.put("errorMsg", str2);
      localHashMap.put("data", str1);
      com.xiaomi.hy.dj.b.a.e("data", str1);
      if ((j.a(k.a(localHashMap) + "&uri=/order-manager/order/v3/queryReceiptStatus", b.c(this.a) + "&key").equals(paramString)) && (((String)localObject).equals("200")))
      {
        paramString = new String(com.xiaomi.hy.dj.f.a.c(n.a(str1), com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61")), "UTF-8");
        com.xiaomi.hy.dj.b.a.e("queryOrder onSuccess", paramString);
        paramString = new JSONObject(paramString).optString("status");
        b.b(this.a).c(paramString);
        return;
      }
      b.b(this.a).a(3064);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      b.b(this.a).a(3064);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */