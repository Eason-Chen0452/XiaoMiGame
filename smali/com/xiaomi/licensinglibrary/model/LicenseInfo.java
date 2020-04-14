package com.xiaomi.licensinglibrary.model;

import org.json.JSONException;
import org.json.JSONObject;

public final class LicenseInfo
{
  private long a = 0L;
  private String b = "";
  private String c = "";
  private String d = "";
  private int e = 0;
  private String f = "";
  
  public LicenseInfo(JSONObject paramJSONObject)
    throws JSONException
  {
    this.a = paramJSONObject.getLong("expireTime");
    this.b = paramJSONObject.getString("miid");
    this.c = paramJSONObject.getString("imei");
    this.d = paramJSONObject.getString("mac");
    this.e = paramJSONObject.getInt("versionCode");
    this.f = paramJSONObject.getString("productCode");
  }
  
  public final long a()
  {
    return this.a;
  }
  
  public final String b()
  {
    return this.b;
  }
  
  public final String c()
  {
    return this.c;
  }
  
  public final String d()
  {
    return this.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\model\LicenseInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */