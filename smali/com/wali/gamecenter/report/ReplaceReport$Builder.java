package com.wali.gamecenter.report;

public class ReplaceReport$Builder
{
  ReplaceReportParams P = new ReplaceReportParams();
  
  public ReplaceReport create()
  {
    ReplaceReport localReplaceReport = new ReplaceReport();
    localReplaceReport.apply(this.P);
    return localReplaceReport;
  }
  
  public Builder setAction(String paramString)
  {
    this.P.action = paramString;
    return this;
  }
  
  public Builder setClient(String paramString)
  {
    this.P.client = paramString;
    return this;
  }
  
  public Builder setCurPageId(String paramString)
  {
    this.P.curPageid = paramString;
    return this;
  }
  
  public Builder setFromApp(String paramString)
  {
    this.P.fromApp = paramString;
    return this;
  }
  
  public Builder setFromPkgName(String paramString)
  {
    this.P.fromPkgName = paramString;
    return this;
  }
  
  public Builder setImei(String paramString)
  {
    this.P.iuid = paramString;
    return this;
  }
  
  public Builder setInstallType(String paramString)
  {
    this.P.installtype = paramString;
    return this;
  }
  
  public Builder setLoginStatus(String paramString)
  {
    this.P.loginstatus = paramString;
    return this;
  }
  
  public Builder setMiPkgName(String paramString)
  {
    this.P.mipackagename = paramString;
    return this;
  }
  
  public Builder setOtherPlatform(String paramString)
  {
    this.P.otherplatform = paramString;
    return this;
  }
  
  public Builder setPath(String paramString)
  {
    this.P.path = paramString;
    return this;
  }
  
  public Builder setPkgName(String paramString)
  {
    this.P.packagename = paramString;
    return this;
  }
  
  public Builder setPvcode(String paramString)
  {
    this.P.pvcode = paramString;
    return this;
  }
  
  public Builder setType(String paramString)
  {
    this.P.type = paramString;
    return this;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReplaceReport$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */