package com.xiaomi.hy.dj.model;

import java.io.Serializable;

public class BundleInfo
  implements Serializable
{
  private String appid;
  private String appkey;
  private long callId;
  
  public String getAppid()
  {
    return this.appid;
  }
  
  public String getAppkey()
  {
    return this.appkey;
  }
  
  public long getCallId()
  {
    return this.callId;
  }
  
  public void setAppid(String paramString)
  {
    this.appid = paramString;
  }
  
  public void setAppkey(String paramString)
  {
    this.appkey = paramString;
  }
  
  public void setCallId(long paramLong)
  {
    this.callId = paramLong;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\model\BundleInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */