package com.xiaomi.hy.dj.d;

import android.text.TextUtils;
import com.android.volley.VolleyError;
import com.xiaomi.hy.dj.model.TokenManager;
import org.json.JSONException;
import org.json.JSONObject;

class c
  extends com.xiaomi.hy.dj.a.a
{
  c(b paramb) {}
  
  public void a(VolleyError paramVolleyError)
  {
    paramVolleyError.printStackTrace();
    com.xiaomi.hy.dj.e.b.a().a(3060);
    b.b(this.a).a();
  }
  
  public void a(String paramString)
  {
    try
    {
      com.xiaomi.hy.dj.b.a.a("getSession" + paramString);
      if (TextUtils.equals(new JSONObject(paramString).optString("retCode"), "200"))
      {
        TokenManager.getInstance().save2File(b.a(this.a), paramString);
        b.b(this.a).b("");
        return;
      }
      com.xiaomi.hy.dj.e.b.a().a(3061);
      b.b(this.a).a(3061);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      com.xiaomi.hy.dj.e.b.a().a(3061);
      b.b(this.a).a(3061);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */