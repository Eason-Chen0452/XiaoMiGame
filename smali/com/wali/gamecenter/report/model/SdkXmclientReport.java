package com.wali.gamecenter.report.model;

import android.content.Context;

public class SdkXmclientReport
  extends BaseReport
{
  private String CID;
  private String appid;
  private String cpChannel;
  private String cuipage;
  private String cuipageid;
  private String from;
  private String position;
  private String uid;
  private String version;
  
  public SdkXmclientReport(Context paramContext)
  {
    super(paramContext);
    setAc("xm_client");
  }
  
  public String getAppid()
  {
    return this.appid;
  }
  
  public String getCID()
  {
    return this.CID;
  }
  
  public String getCpChannel()
  {
    return this.cpChannel;
  }
  
  public String getCuipage()
  {
    return this.cuipage;
  }
  
  public String getCuipageid()
  {
    return this.cuipageid;
  }
  
  public String getFrom()
  {
    return this.from;
  }
  
  public String getPosition()
  {
    return this.position;
  }
  
  public String getUid()
  {
    return this.uid;
  }
  
  public String getVersion()
  {
    return this.version;
  }
  
  public void setAppid(String paramString)
  {
    this.appid = paramString;
  }
  
  public void setCID(String paramString)
  {
    this.CID = paramString;
  }
  
  public void setCpChannel(String paramString)
  {
    this.cpChannel = paramString;
  }
  
  public void setCuipage(String paramString)
  {
    this.cuipage = paramString;
  }
  
  public void setCuipageid(String paramString)
  {
    this.cuipageid = paramString;
  }
  
  public void setFrom(String paramString)
  {
    this.from = paramString;
  }
  
  public void setPosition(String paramString)
  {
    this.position = paramString;
  }
  
  public void setUid(String paramString)
  {
    this.uid = paramString;
  }
  
  public void setVersion(String paramString)
  {
    this.version = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\SdkXmclientReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */