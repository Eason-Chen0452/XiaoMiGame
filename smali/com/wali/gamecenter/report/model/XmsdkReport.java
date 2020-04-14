package com.wali.gamecenter.report.model;

import android.content.Context;
import android.text.TextUtils;
import com.wali.gamecenter.report.utils.MD5;
import com.wali.gamecenter.report.utils.TelUtils;
import com.xiaomi.gamecenter.sdk.bo;
import com.xiaomi.gson.Gson;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class XmsdkReport
  extends BaseReport
{
  private String CID;
  private String appid;
  private String cpChannel;
  private String md5imei;
  private String num;
  private String p1;
  private String p2;
  private String step;
  private String uid;
  @bo(a="time")
  private String wasteTime;
  
  public XmsdkReport(Context paramContext)
  {
    super(paramContext);
    setAc("xmsdk");
    String str1 = MD5.getMD5((this.imei + "_" + this.appid).getBytes());
    int i = TelUtils.getRandom(20);
    int j = TelUtils.getRandom(str1.length() - i);
    str1 = str1.substring(i, i + j);
    String str2 = i + "." + j;
    setP1(str1);
    setP2(str2);
    this.ext = new EXT();
    this.ext.localtime = System.currentTimeMillis();
    this.ext.packageName = paramContext.getPackageName();
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
  
  public String getMd5imei()
  {
    return this.md5imei;
  }
  
  public String getNum()
  {
    return this.num;
  }
  
  public String getP1()
  {
    return this.p1;
  }
  
  public String getP2()
  {
    return this.p2;
  }
  
  public String getStep()
  {
    return this.step;
  }
  
  public String getUid()
  {
    return this.uid;
  }
  
  public String getWasteTime()
  {
    return this.wasteTime;
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
  
  public void setMd5imei(String paramString)
  {
    this.md5imei = paramString;
  }
  
  public void setNum(String paramString)
  {
    this.num = paramString;
  }
  
  public void setP1(String paramString)
  {
    this.p1 = paramString;
  }
  
  public void setP2(String paramString)
  {
    this.p2 = paramString;
  }
  
  public void setStep(String paramString)
  {
    this.step = paramString;
  }
  
  public void setUid(String paramString)
  {
    this.uid = paramString;
  }
  
  public void setWasteTime(String paramString)
  {
    this.wasteTime = paramString;
  }
  
  public String toString()
  {
    Object localObject1 = toJson();
    try
    {
      localObject2 = new JSONObject((String)localObject1);
      ((JSONObject)localObject2).put("ext", ((JSONObject)localObject2).optJSONObject("ext").toString());
      localObject2 = ((JSONObject)localObject2).toString();
      localObject1 = localObject2;
    }
    catch (Throwable localThrowable1)
    {
      for (;;)
      {
        Object localObject2;
        localThrowable1.printStackTrace();
      }
    }
    localObject2 = (Map)new Gson().a((String)localObject1, new XmsdkReport.1(this).getType());
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
        catch (Throwable localThrowable2)
        {
          localThrowable2.printStackTrace();
        }
      }
    }
    return ((StringBuilder)localObject1).toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\XmsdkReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */