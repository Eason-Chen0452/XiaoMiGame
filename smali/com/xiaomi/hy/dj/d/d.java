package com.xiaomi.hy.dj.d;

import com.android.volley.VolleyError;
import org.json.JSONException;
import org.json.JSONObject;

class d
  extends com.xiaomi.hy.dj.a.a
{
  d(b paramb) {}
  
  public void a(VolleyError paramVolleyError)
  {
    com.xiaomi.hy.dj.e.b.a().a(3060);
    b.b(this.a).a("3065");
  }
  
  public void a(String paramString)
  {
    try
    {
      com.xiaomi.hy.dj.b.a.e("verifyID", paramString);
      paramString = new JSONObject(paramString).optString("errorCode");
      b.b(this.a).a(paramString);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      com.xiaomi.hy.dj.e.b.a().a(3066);
      b.b(this.a).a("3066");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */