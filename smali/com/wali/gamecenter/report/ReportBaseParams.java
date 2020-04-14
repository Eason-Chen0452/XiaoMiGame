package com.wali.gamecenter.report;

import android.text.TextUtils;
import java.net.URLEncoder;
import org.json.JSONObject;

public class ReportBaseParams
{
  static ReportBaseParams mInstance;
  String carrier;
  String cuid;
  String fuid;
  String mnc;
  String os;
  String ua;
  public String uid;
  String version;
  String version_name;
  
  public static ReportBaseParams getInstance()
  {
    if (mInstance == null) {
      mInstance = new ReportBaseParams();
    }
    return mInstance;
  }
  
  public String getBaseParamsString(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(this.uid)) {
      localStringBuilder.append("uid=").append(this.uid).append("&");
    }
    if (!TextUtils.isEmpty(this.cuid)) {
      localStringBuilder.append("userId=").append(this.cuid).append("&");
    }
    if ((!paramBoolean) && (!TextUtils.isEmpty(this.fuid))) {
      localStringBuilder.append("fuid=").append(this.fuid).append("&");
    }
    if (!TextUtils.isEmpty(this.carrier)) {
      localStringBuilder.append("carrier=").append(this.carrier).append("&");
    }
    if (!TextUtils.isEmpty(this.mnc)) {
      localStringBuilder.append("mnc=").append(this.mnc).append("&");
    }
    if (!TextUtils.isEmpty(this.os)) {
      localStringBuilder.append("os=").append(this.os).append("&");
    }
    if (!TextUtils.isEmpty(this.ua)) {
      localStringBuilder.append("ua=").append(this.ua).append("&");
    }
    if (!TextUtils.isEmpty(this.version)) {
      localStringBuilder.append("version=").append(this.version).append("&");
    }
    return localStringBuilder.toString();
  }
  
  public void setBaseParamsToJSON(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    for (;;)
    {
      return;
      try
      {
        if (!TextUtils.isEmpty(this.uid)) {
          paramJSONObject.put("uid", URLEncoder.encode(this.uid, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.cuid)) {
          paramJSONObject.put("userId", URLEncoder.encode(this.cuid, "UTF-8"));
        }
        if ((!TextUtils.isEmpty(this.fuid)) && (!paramJSONObject.has("fuid"))) {
          paramJSONObject.put("fuid", URLEncoder.encode(this.fuid, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.carrier)) {
          paramJSONObject.put("carrier", URLEncoder.encode(this.carrier, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.mnc)) {
          paramJSONObject.put("mnc", URLEncoder.encode(this.mnc, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.os)) {
          paramJSONObject.put("os", URLEncoder.encode(this.os, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.ua)) {
          paramJSONObject.put("ua", URLEncoder.encode(this.ua, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.version))
        {
          paramJSONObject.put("version", URLEncoder.encode(this.version, "UTF-8"));
          return;
        }
      }
      catch (Throwable paramJSONObject)
      {
        paramJSONObject.printStackTrace();
      }
    }
  }
  
  public void setReportBaseParams(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this.uid = paramString1;
    this.cuid = paramString2;
    this.fuid = paramString3;
    this.carrier = paramString4;
    this.mnc = paramString5;
    this.os = paramString6;
    this.ua = paramString7;
    this.version = paramString8;
    this.version_name = paramString9;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportBaseParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */