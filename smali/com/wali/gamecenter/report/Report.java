package com.wali.gamecenter.report;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.wali.gamecenter.report.utils.Base64;
import com.wali.gamecenter.report.utils.ReportUtils;
import java.net.URLEncoder;
import java.util.Calendar;
import org.json.JSONObject;

public class Report
  implements Parcelable
{
  public static final Parcelable.Creator<Report> CREATOR = new Report.1();
  private String action;
  private String adsCv;
  private String adsId;
  private String adsType;
  private String cid;
  private String client;
  private String curPage;
  private String curPageId;
  private String curPagePkgName;
  private String from;
  private String fromId;
  private String fromLabel;
  private String gamecenterVersion;
  private String imei;
  private String level;
  boolean mHasCallCreate = false;
  private String moduleId;
  private String origin;
  private String position;
  private String pp1;
  private String pp2;
  private String tm;
  private String trace;
  private String tt;
  private ReportType type;
  
  Report() {}
  
  Report(Parcel paramParcel)
  {
    this.level = paramParcel.readString();
    this.action = paramParcel.readString();
    this.type = ReportType.fromInt(paramParcel.readInt());
    this.origin = paramParcel.readString();
    this.client = paramParcel.readString();
    this.gamecenterVersion = paramParcel.readString();
    this.pp1 = paramParcel.readString();
    this.pp2 = paramParcel.readString();
    this.imei = paramParcel.readString();
    this.from = paramParcel.readString();
    this.fromId = paramParcel.readString();
    this.fromLabel = paramParcel.readString();
    this.curPage = paramParcel.readString();
    this.curPageId = paramParcel.readString();
    this.position = paramParcel.readString();
    this.adsId = paramParcel.readString();
    this.tm = paramParcel.readString();
    this.tt = paramParcel.readString();
    this.cid = paramParcel.readString();
    this.adsType = paramParcel.readString();
    this.adsCv = paramParcel.readString();
    this.moduleId = paramParcel.readString();
  }
  
  public void apply(ReportParams paramReportParams)
  {
    if (paramReportParams.action == null)
    {
      this.action = "gamecenter";
      if (paramReportParams.type != null) {
        break label158;
      }
    }
    label158:
    for (this.type = ReportType.STATISTICS;; this.type = paramReportParams.type)
    {
      this.client = paramReportParams.client;
      this.from = paramReportParams.from;
      this.fromId = paramReportParams.fromId;
      this.fromLabel = paramReportParams.fromLabel;
      this.curPage = paramReportParams.curPage;
      this.curPageId = paramReportParams.curPageId;
      this.position = paramReportParams.position;
      this.cid = paramReportParams.cid;
      this.tt = paramReportParams.tt;
      this.moduleId = paramReportParams.moduleId;
      this.trace = paramReportParams.trace;
      this.curPagePkgName = paramReportParams.curPagePkgName;
      if (!TextUtils.isEmpty(paramReportParams.originManual)) {
        this.origin = paramReportParams.originManual;
      }
      this.mHasCallCreate = true;
      return;
      this.action = paramReportParams.action;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return this.action;
  }
  
  public String getClient()
  {
    return this.client;
  }
  
  String getParamsToJSON(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(this.action)) {
          this.action = "gamecenter";
        }
        localJSONObject.put("ac", this.action);
        if (TextUtils.isEmpty(this.adsType)) {
          continue;
        }
        localJSONObject.put("type", this.adsType);
        if (!TextUtils.isEmpty(this.adsId)) {
          localJSONObject.put("adId", URLEncoder.encode(this.adsId, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.adsCv)) {
          localJSONObject.put("cv", URLEncoder.encode(this.adsCv, "UTF-8"));
        }
        if (TextUtils.isEmpty(this.origin)) {
          this.origin = ReportOrigin.getOrigin(paramContext);
        }
        if (TextUtils.isEmpty(this.origin)) {
          this.origin = "other";
        }
        localJSONObject.put("origin", URLEncoder.encode(this.origin, "UTF-8"));
        if (!TextUtils.isEmpty(this.client)) {
          localJSONObject.put("client", this.client);
        }
        if (!TextUtils.isEmpty(this.from)) {
          localJSONObject.put("from", URLEncoder.encode(this.from, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.fromId)) {
          localJSONObject.put("fromId", URLEncoder.encode(this.fromId, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.fromLabel)) {
          localJSONObject.put("fromLabel", URLEncoder.encode(this.fromLabel, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.curPage))
        {
          if ((this.curPage.startsWith("http")) || (this.curPage.startsWith("https"))) {
            this.curPage = Base64.encode(this.curPage.getBytes("UTF-8"));
          }
          localJSONObject.put("curPage", URLEncoder.encode(this.curPage, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.curPageId)) {
          localJSONObject.put("curPageId", URLEncoder.encode(this.curPageId, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.position)) {
          localJSONObject.put("position", URLEncoder.encode(this.position, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.tt)) {
          localJSONObject.put("tt", this.tt);
        }
        if (!TextUtils.isEmpty(this.moduleId)) {
          localJSONObject.put("moduleId", this.moduleId);
        }
        if (!TextUtils.isEmpty(this.trace)) {
          localJSONObject.put("trace", URLEncoder.encode(this.trace, "UTF-8"));
        }
        if (!TextUtils.isEmpty(this.curPagePkgName)) {
          localJSONObject.put("curPagePkgName", URLEncoder.encode(this.curPagePkgName, "UTF-8"));
        }
        ReportBaseParams.getInstance().setBaseParamsToJSON(localJSONObject);
        if (!TextUtils.isEmpty(this.cid)) {
          localJSONObject.put("cid", URLEncoder.encode(this.cid, "UTF-8"));
        }
        paramContext = ReportUtils.getSecurityParameters(ReportBaseParams.getInstance().uid, this.curPageId, this.type.toString());
        if ((paramContext != null) && (paramContext.length > 0))
        {
          localJSONObject.put("pp1", paramContext[0]);
          localJSONObject.put("pp2", paramContext[1]);
        }
        localJSONObject.put("tm", Calendar.getInstance().getTimeInMillis());
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        continue;
      }
      return localJSONObject.toString();
      if (this.type == null) {
        this.type = ReportType.STATISTICS;
      }
      localJSONObject.put("type", this.type.toString());
    }
  }
  
  String getParamsToString(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(this.action)) {
          this.action = "gamecenter";
        }
        localStringBuilder.append("ac=").append(this.action).append("&");
        if (TextUtils.isEmpty(this.adsType)) {
          continue;
        }
        localStringBuilder.append("type=").append(this.adsType).append("&");
        if (!TextUtils.isEmpty(this.adsId)) {
          localStringBuilder.append("adId").append(URLEncoder.encode(this.adsId, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.adsCv)) {
          localStringBuilder.append("cv=").append(URLEncoder.encode(this.adsCv, "UTF-8")).append("&");
        }
        if (TextUtils.isEmpty(this.origin)) {
          this.origin = ReportOrigin.getOrigin(paramContext);
        }
        if (TextUtils.isEmpty(this.origin)) {
          this.origin = "other";
        }
        localStringBuilder.append("origin=").append(URLEncoder.encode(this.origin, "UTF-8")).append("&");
        if (!TextUtils.isEmpty(this.client)) {
          localStringBuilder.append("client=").append(this.client).append("&");
        }
        if (!TextUtils.isEmpty(this.from)) {
          localStringBuilder.append("from=").append(URLEncoder.encode(this.from, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.fromId)) {
          localStringBuilder.append("fromId=").append(URLEncoder.encode(this.fromId, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.fromLabel)) {
          localStringBuilder.append("fromLabel=").append(URLEncoder.encode(this.fromLabel, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.curPage))
        {
          if ((this.curPage.startsWith("http")) || (this.curPage.startsWith("https"))) {
            this.curPage = Base64.encode(this.curPage.getBytes("UTF-8"));
          }
          localStringBuilder.append("curPage=").append(URLEncoder.encode(this.curPage, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.curPageId)) {
          localStringBuilder.append("curPageId=").append(URLEncoder.encode(this.curPageId, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.position)) {
          localStringBuilder.append("position=").append(URLEncoder.encode(this.position, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.tt)) {
          localStringBuilder.append("tt=").append(this.tt).append("&");
        }
        if (!TextUtils.isEmpty(this.moduleId)) {
          localStringBuilder.append("moduleId=").append(this.moduleId).append("&");
        }
        if (!TextUtils.isEmpty(this.trace)) {
          localStringBuilder.append("trace=").append(URLEncoder.encode(this.trace, "UTF-8")).append("&");
        }
        if (!TextUtils.isEmpty(this.curPagePkgName)) {
          localStringBuilder.append("curPagePkgName=").append(URLEncoder.encode(this.curPagePkgName, "UTF-8")).append("&");
        }
        localStringBuilder.append(ReportBaseParams.getInstance().getBaseParamsString(false));
        if (!TextUtils.isEmpty(this.cid)) {
          localStringBuilder.append("cid=").append(this.cid).append("&");
        }
        paramContext = ReportUtils.getSecurityParameters(ReportBaseParams.getInstance().uid, this.curPageId, this.type.toString());
        if ((paramContext != null) && (paramContext.length > 0))
        {
          localStringBuilder.append("pp1=").append(paramContext[0]).append("&");
          localStringBuilder.append("pp2=").append(paramContext[1]).append("&");
        }
        localStringBuilder.append("tm=").append(Calendar.getInstance().getTimeInMillis());
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        continue;
      }
      return localStringBuilder.toString();
      if (this.type == null) {
        this.type = ReportType.STATISTICS;
      }
      localStringBuilder.append("type=").append(this.type.toString()).append("&");
    }
  }
  
  public ReportType getType()
  {
    return this.type;
  }
  
  public void save()
  {
    ReportManager.getInstance().saveReport(this);
  }
  
  public void send()
  {
    if ((ReportManager.getInstance().isDebugging) && (!this.mHasCallCreate)) {
      throw new IllegalArgumentException("have not call create method");
    }
    ReportManager.getInstance().sendReport(this);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.level);
    paramParcel.writeString(this.action);
    paramParcel.writeInt(this.type.ordinal());
    paramParcel.writeString(this.origin);
    paramParcel.writeString(this.client);
    paramParcel.writeString(this.gamecenterVersion);
    paramParcel.writeString(this.pp1);
    paramParcel.writeString(this.pp2);
    paramParcel.writeString(this.imei);
    paramParcel.writeString(this.from);
    paramParcel.writeString(this.fromId);
    paramParcel.writeString(this.fromLabel);
    paramParcel.writeString(this.curPage);
    paramParcel.writeString(this.curPageId);
    paramParcel.writeString(this.position);
    paramParcel.writeString(this.adsId);
    paramParcel.writeString(this.tm);
    paramParcel.writeString(this.tt);
    paramParcel.writeString(this.cid);
    paramParcel.writeString(this.adsType);
    paramParcel.writeString(this.adsCv);
    paramParcel.writeString(this.moduleId);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\Report.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */