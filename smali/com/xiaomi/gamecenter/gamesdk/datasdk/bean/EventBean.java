package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

public class EventBean
  extends BaseEntity
{
  private String errCode;
  private String id;
  private String loginType;
  private String name;
  private String payType;
  
  public String getErrCode()
  {
    return this.errCode;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getLoginType()
  {
    return this.loginType;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPayType()
  {
    return this.payType;
  }
  
  public void setErrCode(String paramString)
  {
    this.errCode = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setLoginType(String paramString)
  {
    this.loginType = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPayType(String paramString)
  {
    this.payType = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\EventBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */