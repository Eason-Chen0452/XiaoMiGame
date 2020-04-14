package com.wali.gamecenter.report.model;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.bo;
import com.xiaomi.gson.Gson;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class Bid522Report
  extends BaseReport
{
  private String appid;
  @bo(a="imei")
  private String bidImei;
  private String channelId;
  private String cpChannel;
  private String md5imei;
  private String mid;
  
  public Bid522Report(Context paramContext)
  {
    super(paramContext);
    setAc("bid522");
    this.bidImei = this.imei;
    this.imei = null;
    this.index = null;
    setType(null);
    this.ext = new EXT();
    this.ext.packageName = paramContext.getPackageName();
  }
  
  public String getAppid()
  {
    return this.appid;
  }
  
  public String getBidImei()
  {
    return this.bidImei;
  }
  
  public String getChannelId()
  {
    return this.channelId;
  }
  
  public String getCpChannel()
  {
    return this.cpChannel;
  }
  
  public String getMd5imei()
  {
    return this.md5imei;
  }
  
  public String getMid()
  {
    return this.mid;
  }
  
  public void setAppid(String paramString)
  {
    this.appid = paramString;
  }
  
  public void setBidImei(String paramString)
  {
    this.bidImei = paramString;
  }
  
  public void setChannelId(String paramString)
  {
    this.channelId = paramString;
  }
  
  public void setCpChannel(String paramString)
  {
    this.cpChannel = paramString;
  }
  
  public void setMd5imei(String paramString)
  {
    this.md5imei = paramString;
  }
  
  public void setMid(String paramString)
  {
    this.mid = paramString;
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
    localObject2 = (Map)new Gson().a((String)localObject1, new Bid522Report.1(this).getType());
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\model\Bid522Report.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */