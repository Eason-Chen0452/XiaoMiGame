package com.wali.gamecenter.report.db;

public class ReportData
{
  private Long id;
  private String method;
  private String param;
  
  public ReportData() {}
  
  public ReportData(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public ReportData(Long paramLong, String paramString1, String paramString2)
  {
    this.id = paramLong;
    this.method = paramString1;
    this.param = paramString2;
  }
  
  public Long getId()
  {
    return this.id;
  }
  
  public String getMethod()
  {
    return this.method;
  }
  
  public String getParam()
  {
    return this.param;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMethod(String paramString)
  {
    this.method = paramString;
  }
  
  public void setParam(String paramString)
  {
    this.param = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\ReportData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */