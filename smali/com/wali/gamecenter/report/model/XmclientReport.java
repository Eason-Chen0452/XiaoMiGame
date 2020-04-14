package com.wali.gamecenter.report.model;

import android.content.Context;
import com.wali.gamecenter.report.ReportBaseParams;
import com.wali.gamecenter.report.ReportType;
import com.wali.gamecenter.report.utils.ReportUtils;
import com.xiaomi.gamecenter.sdk.bo;
import java.util.Calendar;

public class XmclientReport
  extends BaseReport
{
  @bo(a="cv")
  private String adsCv;
  @bo(a="adId")
  private String adsId;
  private String adsType;
  private String cid;
  private String curPage;
  private String curPageId;
  private String from;
  private String fromId;
  private String fromLabel;
  private String moduleId;
  private String origin;
  private String position;
  private String pp1;
  private String pp2;
  private String tm;
  private String tt;
  
  public XmclientReport(Context paramContext)
  {
    super(paramContext);
    setAc("game_center");
    paramContext = ReportUtils.getSecurityParameters(ReportBaseParams.getInstance().uid, this.curPageId, getType().toString());
    setPp1(paramContext[0]);
    setPp2(paramContext[1]);
    setTm(Calendar.getInstance().getTimeInMillis());
  }
  
  public String getAdsCv()
  {
    return this.adsCv;
  }
  
  public String getAdsId()
  {
    return this.adsId;
  }
  
  public String getAdsType()
  {
    return this.adsType;
  }
  
  public String getCid()
  {
    return this.cid;
  }
  
  public String getCurPage()
  {
    return this.curPage;
  }
  
  public String getCurPageId()
  {
    return this.curPageId;
  }
  
  public String getFrom()
  {
    return this.from;
  }
  
  public String getFromId()
  {
    return this.fromId;
  }
  
  public String getFromLabel()
  {
    return this.fromLabel;
  }
  
  public String getModuleId()
  {
    return this.moduleId;
  }
  
  public String getOrigin()
  {
    return this.origin;
  }
  
  public String getPosition()
  {
    return this.position;
  }
  
  public String getPp1()
  {
    return this.pp1;
  }
  
  public String getPp2()
  {
    return this.pp2;
  }
  
  public String getTm()
  {
    return this.tm;
  }
  
  public String getTt()
  {
    return this.tt;
  }
  
  public void setAdsCv(String paramString)
  {
    this.adsCv = paramString;
  }
  
  public void setAdsId(String paramString)
  {
    this.adsId = paramString;
  }
  
  public void setAdsType(String paramString)
  {
    this.adsType = paramString;
  }
  
  public void setCid(String paramString)
  {
    this.cid = paramString;
  }
  
  public void setCurPage(String paramString)
  {
    this.curPage = paramString;
  }
  
  public void setCurPageId(String paramString)
  {
    this.curPageId = paramString;
  }
  
  public void setFrom(String paramString)
  {
    this.from = paramString;
  }
  
  public void setFromId(String paramString)
  {
    this.fromId = paramString;
  }
  
  public void setFromLabel(String paramString)
  {
    this.fromLabel = paramString;
  }
  
  public void setModuleId(String paramString)
  {
    this.moduleId = paramString;
  }
  
  public void setOrigin(String paramString)
  {
    this.origin = paramString;
  }
  
  public void setPosition(String paramString)
  {
    this.position = paramString;
  }
  
  public void setPp1(String paramString)
  {
    this.pp1 = paramString;
  }
  
  public void setPp2(String paramString)
  {
    this.pp2 = paramString;
  }
  
  public void setTm(String paramString)
  {
    this.tm = paramString;
  }
  
  public void setTt(String paramString)
  {
    this.tt = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\XmclientReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */