package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;

public abstract interface HttpStack
{
  public abstract HttpResponse performRequest(Request<?> paramRequest, Map<String, String> paramMap)
    throws IOException, AuthFailureError;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\android\volley\toolbox\HttpStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */