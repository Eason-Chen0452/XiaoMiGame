package com.xiaomi.hy.dj.a;

import com.android.volley.AuthFailureError;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.toolbox.StringRequest;
import java.util.Map;

final class f
  extends StringRequest
{
  f(int paramInt, String paramString, Response.Listener paramListener, Response.ErrorListener paramErrorListener, Map paramMap)
  {
    super(paramInt, paramString, paramListener, paramErrorListener);
  }
  
  protected final Map<String, String> getParams()
    throws AuthFailureError
  {
    return this.a;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */