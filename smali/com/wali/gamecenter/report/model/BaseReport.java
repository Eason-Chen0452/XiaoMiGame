package com.wali.gamecenter.report.model;

import android.content.Context;
import android.text.TextUtils;
import com.wali.gamecenter.report.ReportManager;
import com.wali.gamecenter.report.ReportType;
import com.wali.gamecenter.report.utils.TelUtils;
import com.xiaomi.gamecenter.sdk.bo;
import com.xiaomi.gson.Gson;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class BaseReport
{
  private String ac;
  public String carrier;
  private String client;
  protected EXT ext;
  @bo(a="3gmac")
  public String gmac;
  @bo(a="IMEI")
  public String imei;
  public String index;
  public String jarver;
  protected String oaid;
  private ReportType type = ReportType.STATISTICS;
  public String ua;
  protected String udid;
  public String ver;
  
  public BaseReport(Context paramContext)
  {
    this.ver = TelUtils.getVersionCode(paramContext);
    this.imei = TelUtils.getDeviceId(paramContext);
    this.index = TelUtils.getRandomIndex();
    this.carrier = TelUtils.getSIMOperatorName(paramContext);
    this.gmac = TelUtils.get3gMacAddress(paramContext);
    this.jarver = TelUtils.versionCode;
    this.ua = TelUtils.get_device_agent_(paramContext);
  }
  
  public String getAc()
  {
    return this.ac;
  }
  
  public String getClient()
  {
    return this.client;
  }
  
  public EXT getExt()
  {
    return this.ext;
  }
  
  public String getOaid()
  {
    return this.oaid;
  }
  
  public ReportType getType()
  {
    return this.type;
  }
  
  public String getUdid()
  {
    return this.udid;
  }
  
  public void send()
  {
    ReportManager.getInstance().sendReport(this);
  }
  
  public void setAc(String paramString)
  {
    this.ac = paramString;
  }
  
  public void setClient(String paramString)
  {
    this.client = paramString;
  }
  
  public void setExt(EXT paramEXT)
  {
    this.ext = paramEXT;
  }
  
  public void setOaid(String paramString)
  {
    this.oaid = paramString;
  }
  
  public void setType(ReportType paramReportType)
  {
    this.type = paramReportType;
  }
  
  public void setUdid(String paramString)
  {
    this.udid = paramString;
  }
  
  public String toJson()
  {
    return new Gson().a(this);
  }
  
  public String toString()
  {
    Object localObject1 = toJson();
    Object localObject2 = (Map)new Gson().a((String)localObject1, new BaseReport.1(this).getType());
    localObject1 = new StringBuilder();
    localObject2 = ((Map)localObject2).entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      if (((StringBuilder)localObject1).length() > 0) {
        ((StringBuilder)localObject1).append("&");
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getValue()))
      {
        ((StringBuilder)localObject1).append((String)localEntry.getKey());
        ((StringBuilder)localObject1).append("=");
        try
        {
          ((StringBuilder)localObject1).append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
    }
    return ((StringBuilder)localObject1).toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\BaseReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */