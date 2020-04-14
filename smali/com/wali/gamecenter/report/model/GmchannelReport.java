package com.wali.gamecenter.report.model;

import android.content.Context;

public class GmchannelReport
  extends BaseReport
{
  private String j;
  
  public GmchannelReport(Context paramContext)
  {
    super(paramContext);
    setAc("gm_channel");
  }
  
  public String getJ()
  {
    return this.j;
  }
  
  public void setJ(String paramString)
  {
    this.j = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\GmchannelReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */