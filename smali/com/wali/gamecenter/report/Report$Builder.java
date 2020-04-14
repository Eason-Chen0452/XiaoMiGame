package com.wali.gamecenter.report;

public class Report$Builder
{
  ReportParams P = new ReportParams();
  
  public Report create()
  {
    Report localReport = new Report();
    localReport.apply(this.P);
    return localReport;
  }
  
  public Builder setAction(String paramString)
  {
    this.P.action = paramString;
    return this;
  }
  
  public Builder setAdsCv(String paramString)
  {
    this.P.adsCv = paramString;
    return this;
  }
  
  public Builder setAdsId(String paramString)
  {
    this.P.adsId = paramString;
    return this;
  }
  
  public Builder setAdsType(String paramString)
  {
    this.P.adsType = paramString;
    return this;
  }
  
  public Builder setCid(String paramString)
  {
    this.P.cid = paramString;
    return this;
  }
  
  public Builder setClient(String paramString)
  {
    this.P.client = paramString;
    return this;
  }
  
  public Builder setCurPage(String paramString)
  {
    this.P.curPage = paramString;
    return this;
  }
  
  public Builder setCurPageId(String paramString)
  {
    this.P.curPageId = paramString;
    return this;
  }
  
  public Builder setCurPagePkgName(String paramString)
  {
    this.P.curPagePkgName = paramString;
    return this;
  }
  
  public Builder setDownloadMode(String paramString)
  {
    this.P.tt = paramString;
    return this;
  }
  
  public Builder setFrom(String paramString)
  {
    this.P.from = paramString;
    return this;
  }
  
  public Builder setFromId(String paramString)
  {
    this.P.fromId = paramString;
    return this;
  }
  
  public Builder setFromLabel(String paramString)
  {
    this.P.fromLabel = paramString;
    return this;
  }
  
  public Builder setModuleId(String paramString)
  {
    this.P.moduleId = paramString;
    return this;
  }
  
  public Builder setOriginManual(String paramString)
  {
    this.P.originManual = paramString;
    return this;
  }
  
  public Builder setPosition(String paramString)
  {
    this.P.position = paramString;
    return this;
  }
  
  public Builder setTrace(String paramString)
  {
    this.P.trace = paramString;
    return this;
  }
  
  public Builder setType(ReportType paramReportType)
  {
    this.P.type = paramReportType;
    return this;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\Report$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */