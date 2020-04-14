package com.wali.gamecenter.report.model;

public class EXT
{
  public String account;
  public String accountapi;
  public String code;
  public String exStack;
  public String exname;
  public String from;
  public String localtime;
  public String migc;
  public String misg;
  public String packageName;
  public PayInfo payInfo;
  public String sext;
  
  public PayInfo getPayInfo()
  {
    if (this.payInfo == null) {
      this.payInfo = new PayInfo();
    }
    return this.payInfo;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\EXT.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */