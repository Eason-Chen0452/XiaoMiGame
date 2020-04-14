package com.wali.gamecenter.report;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Log;
import com.wali.gamecenter.report.db.DBManager;
import com.wali.gamecenter.report.db.ReportData;
import com.wali.gamecenter.report.db.ReportDataDao;
import com.wali.gamecenter.report.log.ReportLog;
import com.wali.gamecenter.report.model.BaseReport;
import com.wali.gamecenter.report.utils.AutoThreadFactory;
import com.wali.gamecenter.report.utils.ReportUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class ReportManager
{
  private static long DELAY_LOOP_TIME = 60000L;
  static final String GET_URL = "https://data.game.xiaomi.com/1px.gif?";
  public static final int MAX_REPORT_COUNT = 10;
  public static final int METHOD_GET = 0;
  public static final int METHOD_POST = 1;
  private static int MSG_FORCE_SEND_REPORT = 0;
  static final String POST_URL = "https://data.game.xiaomi.com/p.do";
  private static final String REPORT_VERSION = "report_sdk_1.0.1";
  private static String[] SYNCUPLOADAC = { "bid522", "xmsdk", "xm_client" };
  static final String TAG = "ReportManager";
  static Object mDBSyncObj = new Object();
  private static ReportManager mInstance;
  private Context ctx;
  boolean isCTAluseable = false;
  boolean isDebugging = false;
  private ReportDBObserver mDBObserver;
  private Handler mHandler;
  private ReportLog mReportLog;
  private HandlerThread mReportThread;
  
  static
  {
    MSG_FORCE_SEND_REPORT = 48;
  }
  
  ReportManager(Context paramContext)
  {
    this.ctx = paramContext;
    try
    {
      this.mReportThread = new HandlerThread("gamecenter_report");
      if (this.mReportThread != null)
      {
        this.mReportThread.start();
        this.mHandler = new ReportManager.1(this, this.mReportThread.getLooper());
      }
      DBManager.init(paramContext);
      this.mDBObserver = new ReportDBObserver(paramContext);
      this.mReportLog = new ReportLog(paramContext, "report.log");
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
  }
  
  public static void Init(Context paramContext)
  {
    if (mInstance == null) {
      mInstance = new ReportManager(paramContext);
    }
  }
  
  public static void Init(Context paramContext, boolean paramBoolean)
  {
    if (mInstance == null)
    {
      mInstance = new ReportManager(paramContext);
      if (paramBoolean) {
        mInstance.forceSendReport();
      }
    }
  }
  
  public static ReportManager getInstance()
  {
    return mInstance;
  }
  
  private String report_string_post(ArrayList<String> paramArrayList)
  {
    localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("uid", ReportBaseParams.getInstance().uid);
      localJSONObject.put("os", ReportBaseParams.getInstance().os);
      localJSONObject.put("app_version", ReportBaseParams.getInstance().version_name);
      JSONArray localJSONArray = new JSONArray();
      localJSONObject.put("content", localJSONArray);
      int i = 0;
      while (i < paramArrayList.size())
      {
        if (!TextUtils.isEmpty((CharSequence)paramArrayList.get(i))) {
          localJSONArray.put(i, new JSONObject((String)paramArrayList.get(i)));
        }
        i += 1;
      }
      return localJSONObject.toString();
    }
    catch (Throwable paramArrayList)
    {
      paramArrayList.printStackTrace();
      if (this.isDebugging) {
        Log.e("report_string_post", localJSONObject.toString());
      }
    }
  }
  
  public static ArrayList<String> spiltReportToJson(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("content"))
      {
        JSONArray localJSONArray = paramString.optJSONArray("content");
        int i = 0;
        for (;;)
        {
          paramString = localArrayList;
          if (i >= localJSONArray.length()) {
            break;
          }
          localArrayList.add(localJSONArray.getJSONObject(i).toString());
          i += 1;
        }
      }
      return paramString;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
      paramString = null;
    }
  }
  
  void checkTime()
  {
    if (this.mHandler != null)
    {
      if (this.mHandler.hasMessages(MSG_FORCE_SEND_REPORT)) {
        this.mHandler.removeMessages(MSG_FORCE_SEND_REPORT);
      }
      this.mHandler.sendEmptyMessageDelayed(MSG_FORCE_SEND_REPORT, DELAY_LOOP_TIME);
    }
  }
  
  public void forceSendReport()
  {
    if (this.mDBObserver != null) {
      this.mDBObserver.onChange(false);
    }
  }
  
  public boolean isDebug()
  {
    return this.isDebugging;
  }
  
  protected boolean isSyncUpload(String paramString)
  {
    boolean bool2 = false;
    String[] arrayOfString = SYNCUPLOADAC;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramString.equals(arrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  void postReport(ArrayList<String> paramArrayList)
  {
    AutoThreadFactory.AppendTask("_rr_", new InsertRecord(report_string_post(paramArrayList), 1), 1);
  }
  
  public void release()
  {
    if (this.mDBObserver != null) {
      this.mDBObserver = null;
    }
  }
  
  public ReportLog reportLog()
  {
    return this.mReportLog;
  }
  
  public void saveReport(Report paramReport)
  {
    if (paramReport == null) {
      return;
    }
    saveReportToDB("post", paramReport.getParamsToJSON(this.ctx), false);
  }
  
  public void saveReportToDB(String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      ReportData localReportData = new ReportData(null, paramString1, ReportUtils.encryptUrl(paramString2));
      synchronized (mDBSyncObj)
      {
        DBManager.getReportDao().insert(localReportData);
        if (this.isDebugging) {
          Log.e("ReportManager", "save data:" + paramString1 + "<<>>" + paramString2);
        }
        if ((this.mDBObserver != null) && (paramBoolean)) {
          this.mDBObserver.onChange(true);
        }
        return;
      }
      return;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public void sendReport(Report paramReport)
  {
    if (paramReport == null) {
      return;
    }
    ReportType localReportType = paramReport.getType();
    if (this.isDebugging) {
      Log.e("ReportManager", "type=" + localReportType);
    }
    String str = paramReport.getClient();
    if ((localReportType != ReportType.VIEW) || (TextUtils.equals(str, "track")))
    {
      if (this.isCTAluseable)
      {
        saveReportToDB("get", paramReport.getParamsToString(this.ctx), false);
        return;
      }
      AutoThreadFactory.AppendTask("_rr_", new InsertRecord(paramReport.getParamsToString(this.ctx), 0), 1);
      return;
    }
    saveReportToDB("post", paramReport.getParamsToJSON(this.ctx), true);
  }
  
  public void sendReport(BaseReport paramBaseReport)
  {
    if (paramBaseReport == null) {
      return;
    }
    ReportType localReportType = paramBaseReport.getType();
    if (this.isDebugging) {
      Log.e("ReportManager", "type=" + localReportType);
    }
    if (isSyncUpload(paramBaseReport.getAc()))
    {
      if (this.isCTAluseable)
      {
        saveReportToDB("get", paramBaseReport.toString(), false);
        return;
      }
      if (localReportType == ReportType.JARCRASH)
      {
        saveReportToDB("post", paramBaseReport.toJson(), true);
        forceSendReport();
        return;
      }
      AutoThreadFactory.AppendTask("_rr_", new InsertRecord(paramBaseReport.toString(), 0), 1);
      return;
    }
    saveReportToDB("post", paramBaseReport.toJson(), true);
  }
  
  public void setCTAUseable(boolean paramBoolean)
  {
    this.isCTAluseable = paramBoolean;
  }
  
  public void setDebug(boolean paramBoolean)
  {
    this.isDebugging = paramBoolean;
  }
  
  void stopCheck()
  {
    if ((this.mHandler != null) && (this.mHandler.hasMessages(MSG_FORCE_SEND_REPORT))) {
      this.mHandler.removeMessages(MSG_FORCE_SEND_REPORT);
    }
  }
  
  public void syncReport()
  {
    if (this.mDBObserver != null) {
      this.mDBObserver.onChange(true);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */