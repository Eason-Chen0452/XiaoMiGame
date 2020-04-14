package com.alipay.sdk.packet.impl;

import android.content.Context;
import com.alipay.sdk.packet.b;
import com.alipay.sdk.packet.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
  extends d
{
  public static final String t = "log_v";
  
  public final b a(Context paramContext, String paramString)
    throws Throwable
  {
    return a(paramContext, paramString, "http://mcgw.alipay.com/sdklog.do", true);
  }
  
  protected final String a(String paramString, JSONObject paramJSONObject)
  {
    return paramString;
  }
  
  protected final List<Header> a(boolean paramBoolean, String paramString)
  {
    paramString = new ArrayList();
    paramString.add(new BasicHeader("msp-gzip", String.valueOf(paramBoolean)));
    paramString.add(new BasicHeader("content-type", "application/octet-stream"));
    paramString.add(new BasicHeader("des-mode", "CBC"));
    return paramString;
  }
  
  protected final JSONObject a()
    throws JSONException
  {
    return null;
  }
  
  protected final String c()
    throws JSONException
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("api_name", "/sdk/log");
    localHashMap1.put("api_version", "1.0.0");
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("log_v", "1.0");
    return a(localHashMap1, localHashMap2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\packet\impl\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */