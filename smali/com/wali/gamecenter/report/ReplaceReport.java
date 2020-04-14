package com.wali.gamecenter.report;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.wali.gamecenter.report.utils.ReportUtils;
import java.net.URLEncoder;
import java.util.Calendar;
import org.json.JSONObject;

public class ReplaceReport
  extends Report
{
  public static final Parcelable.Creator<ReplaceReport> CREATOR = new ReplaceReport.1();
  String action;
  String client;
  String curPageid;
  String fromApp;
  String fromPkgName;
  String installtype;
  String iuid;
  String loginstatus;
  String mipackagename;
  String otherplatform;
  String packagename;
  String path;
  String pvcode;
  String type;
  
  ReplaceReport() {}
  
  ReplaceReport(Parcel paramParcel)
  {
    this.action = paramParcel.readString();
    this.client = paramParcel.readString();
    this.type = paramParcel.readString();
    this.curPageid = paramParcel.readString();
    this.fromPkgName = paramParcel.readString();
    this.fromApp = paramParcel.readString();
    this.pvcode = paramParcel.readString();
    this.path = paramParcel.readString();
    this.otherplatform = paramParcel.readString();
    this.packagename = paramParcel.readString();
    this.mipackagename = paramParcel.readString();
    this.loginstatus = paramParcel.readString();
    this.installtype = paramParcel.readString();
    this.iuid = paramParcel.readString();
  }
  
  public void apply(ReplaceReportParams paramReplaceReportParams)
  {
    this.action = paramReplaceReportParams.action;
    this.type = paramReplaceReportParams.type;
    this.client = paramReplaceReportParams.client;
    this.curPageid = paramReplaceReportParams.curPageid;
    this.fromPkgName = paramReplaceReportParams.fromPkgName;
    this.fromApp = paramReplaceReportParams.fromApp;
    this.pvcode = paramReplaceReportParams.pvcode;
    this.path = paramReplaceReportParams.path;
    this.otherplatform = paramReplaceReportParams.otherplatform;
    this.packagename = paramReplaceReportParams.packagename;
    this.mipackagename = paramReplaceReportParams.mipackagename;
    this.loginstatus = paramReplaceReportParams.loginstatus;
    this.installtype = paramReplaceReportParams.installtype;
    this.mHasCallCreate = true;
  }
  
  String getParamsToJSON(Context paramContext)
  {
    paramContext = new JSONObject();
    try
    {
      paramContext.put("ac", this.action);
      if (!TextUtils.isEmpty(this.type)) {
        paramContext.put("type", URLEncoder.encode(this.type, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.client)) {
        paramContext.put("client", this.client);
      }
      if (!TextUtils.isEmpty(this.curPageid)) {
        paramContext.put("curPageid", URLEncoder.encode(this.curPageid, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.fromApp)) {
        paramContext.put("cid", URLEncoder.encode(this.fromApp, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.pvcode)) {
        paramContext.put("pvcode", URLEncoder.encode(this.pvcode, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.path)) {
        paramContext.put("path", URLEncoder.encode(this.path, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.otherplatform)) {
        paramContext.put("otherplatform", URLEncoder.encode(this.otherplatform, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.packagename)) {
        paramContext.put("packagename", URLEncoder.encode(this.packagename, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.mipackagename)) {
        paramContext.put("mipackagename", URLEncoder.encode(this.mipackagename, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.loginstatus)) {
        paramContext.put("loginstatus", URLEncoder.encode(this.loginstatus, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.installtype)) {
        paramContext.put("installtype", URLEncoder.encode(this.installtype, "UTF-8"));
      }
      if (!TextUtils.isEmpty(this.iuid)) {
        paramContext.put("iuid", URLEncoder.encode(this.iuid, "UTF-8"));
      }
      ReportBaseParams.getInstance().setBaseParamsToJSON(paramContext);
      if (!TextUtils.isEmpty(this.fromPkgName)) {
        paramContext.put("fuid", URLEncoder.encode(this.fromPkgName, "UTF-8"));
      }
      String[] arrayOfString = ReportUtils.getSecurityParameters(ReportBaseParams.getInstance().uid, this.curPageid, this.type);
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        paramContext.put("pp1", arrayOfString[0]);
        paramContext.put("pp2", arrayOfString[1]);
      }
      paramContext.put("tm", Calendar.getInstance().getTimeInMillis());
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
    return paramContext.toString();
  }
  
  String getParamsToString(Context paramContext)
  {
    paramContext = new StringBuilder();
    try
    {
      paramContext.append("ac=").append(this.action).append("&");
      if (!TextUtils.isEmpty(this.type)) {
        paramContext.append("type=").append(URLEncoder.encode(this.type, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.client)) {
        paramContext.append("client=").append(this.client).append("&");
      }
      if (!TextUtils.isEmpty(this.curPageid)) {
        paramContext.append("curPageid=").append(URLEncoder.encode(this.curPageid, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.fromApp)) {
        paramContext.append("cid=").append(URLEncoder.encode(this.fromApp, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.fromPkgName)) {
        paramContext.append("fuid=").append(URLEncoder.encode(this.fromPkgName, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.pvcode)) {
        paramContext.append("pvcode=").append(URLEncoder.encode(this.pvcode, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.path)) {
        paramContext.append("path=").append(URLEncoder.encode(this.path, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.otherplatform)) {
        paramContext.append("otherplatform=").append(URLEncoder.encode(this.otherplatform, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.packagename)) {
        paramContext.append("packagename=").append(URLEncoder.encode(this.packagename, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.mipackagename)) {
        paramContext.append("mipackagename=").append(URLEncoder.encode(this.mipackagename, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.loginstatus)) {
        paramContext.append("loginstatus=").append(URLEncoder.encode(this.loginstatus, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.installtype)) {
        paramContext.append("installtype=").append(URLEncoder.encode(this.installtype, "UTF-8")).append("&");
      }
      if (!TextUtils.isEmpty(this.iuid)) {
        paramContext.append("iuid=").append(this.iuid);
      }
      paramContext.append(ReportBaseParams.getInstance().getBaseParamsString(true));
      String[] arrayOfString = ReportUtils.getSecurityParameters(ReportBaseParams.getInstance().uid, this.curPageid, this.type);
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        paramContext.append("pp1=").append(arrayOfString[0]).append("&");
        paramContext.append("pp2=").append(arrayOfString[1]).append("&");
      }
      paramContext.append("tm=").append(Calendar.getInstance().getTimeInMillis());
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
    return paramContext.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.action);
    paramParcel.writeString(this.client);
    paramParcel.writeString(this.type);
    paramParcel.writeString(this.curPageid);
    paramParcel.writeString(this.fromPkgName);
    paramParcel.writeString(this.fromApp);
    paramParcel.writeString(this.pvcode);
    paramParcel.writeString(this.path);
    paramParcel.writeString(this.otherplatform);
    paramParcel.writeString(this.packagename);
    paramParcel.writeString(this.mipackagename);
    paramParcel.writeString(this.loginstatus);
    paramParcel.writeString(this.installtype);
    paramParcel.writeString(this.iuid);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReplaceReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */