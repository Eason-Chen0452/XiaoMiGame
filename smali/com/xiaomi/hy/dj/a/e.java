package com.xiaomi.hy.dj.a;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

final class e
  implements Response.ErrorListener
{
  e(a parama) {}
  
  public final void onErrorResponse(VolleyError paramVolleyError)
  {
    this.a.a(paramVolleyError);
    this.a.b();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */