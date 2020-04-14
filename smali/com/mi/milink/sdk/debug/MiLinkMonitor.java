package com.mi.milink.sdk.debug;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.SimpleRequest;
import com.mi.milink.sdk.base.os.SimpleRequest.LengthPair;
import com.mi.milink.sdk.base.os.SimpleRequest.StringContent;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.client.ipc.ClientLog;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.util.CommonUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MiLinkMonitor
  extends BaseDataMonitor
{
  private static String TAG_PRE = "MiLinkMonitor_";
  private static ConcurrentHashMap<Integer, MiLinkMonitor> monitorMap = new ConcurrentHashMap();
  private static MiLinkMonitor sInstance = new MiLinkMonitor();
  private String TAG = "MiLinkMonitor_";
  private int appId;
  private boolean mEnable = false;
  
  private MiLinkMonitor()
  {
    super(TAG_PRE);
    this.appId = Global.getClientAppInfo().getAppId();
    this.TAG += this.appId;
    this.mSamplingStatisticsSwitch = false;
    this.mLoopPost = true;
    startUpload(this.mUploadInterval);
  }
  
  private MiLinkMonitor(int paramInt)
  {
    super(TAG_PRE);
    this.appId = paramInt;
    this.mSamplingStatisticsSwitch = false;
    this.mLoopPost = true;
    startUpload(this.mUploadInterval);
  }
  
  public static MiLinkMonitor getInstance()
  {
    return sInstance;
  }
  
  public static MiLinkMonitor getInstance(int paramInt)
  {
    MiLinkMonitor localMiLinkMonitor2 = (MiLinkMonitor)monitorMap.get(Integer.valueOf(paramInt));
    MiLinkMonitor localMiLinkMonitor1 = localMiLinkMonitor2;
    if (localMiLinkMonitor2 == null)
    {
      localMiLinkMonitor1 = new MiLinkMonitor();
      localMiLinkMonitor1.appId = paramInt;
      monitorMap.put(Integer.valueOf(paramInt), localMiLinkMonitor1);
    }
    return localMiLinkMonitor1;
  }
  
  protected boolean doPostData()
  {
    ConcurrentHashMap localConcurrentHashMap;
    Object localObject2;
    Object localObject1;
    if ((NetworkDash.isAvailable()) && (this.mMonitorItemMap.size() > 0))
    {
      localConcurrentHashMap = new ConcurrentHashMap();
      localConcurrentHashMap.putAll(this.mMonitorItemMap);
      this.mMonitorItemMap.clear();
      if ((this.mEnable) || (!TextUtils.isEmpty(MiAccountManager.getInstance().getUserId())))
      {
        localObject2 = toJson(localConcurrentHashMap);
        ClientLog.v(this.TAG, "ThreadId=" + Thread.currentThread().getId() + ", doPostData: dataJson=" + (String)localObject2);
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject1 = new HashMap();
          ((Map)localObject1).put("dataJson", localObject2);
          if (ClientAppInfo.isTestChannel()) {}
        }
      }
    }
    try
    {
      localObject2 = new SimpleRequest.LengthPair();
      localObject2 = SimpleRequest.postAsString(getStasticServerAddr(), (Map)localObject1, null, true, (SimpleRequest.LengthPair)localObject2);
      if (localObject2 != null)
      {
        ClientLog.v(this.TAG, "doPostData use host report succeed: " + ((SimpleRequest.StringContent)localObject2).getBody());
        return false;
      }
    }
    catch (Exception localException2)
    {
      ClientLog.v(this.TAG, "doPostData use host report failed");
      try
      {
        SimpleRequest.LengthPair localLengthPair = new SimpleRequest.LengthPair();
        localObject1 = SimpleRequest.postAsString(getStaticServerAddIp(), (Map)localObject1, null, true, getStaticServerHost(), localLengthPair);
        if (localObject1 != null)
        {
          ClientLog.v(this.TAG, "doPostData use ip report succeed: " + ((SimpleRequest.StringContent)localObject1).getBody());
          return false;
        }
      }
      catch (Exception localException1)
      {
        ClientLog.v(this.TAG, "doPostData use ip report failed");
        ClientLog.v(this.TAG, "doPostData use host and ip failed");
        this.mMonitorItemMap.putAll(localConcurrentHashMap);
      }
    }
    return false;
  }
  
  public void doPostDataAtOnce()
  {
    ClientLog.w(this.TAG, "doPostDataAtOnce()");
    startUpload(0L);
  }
  
  public void setEnableWithLogoutStatus(boolean paramBoolean)
  {
    this.mEnable = paramBoolean;
  }
  
  protected String toJson(ConcurrentHashMap<String, List<BaseDataMonitor.MonitorItem>> paramConcurrentHashMap)
  {
    JSONObject localJSONObject1;
    if (paramConcurrentHashMap != null) {
      localJSONObject1 = new JSONObject();
    }
    for (;;)
    {
      JSONArray localJSONArray1;
      Object localObject1;
      JSONObject localJSONObject2;
      int j;
      JSONArray localJSONArray2;
      BaseDataMonitor.MonitorItem localMonitorItem;
      try
      {
        localJSONObject1.put("ac", "mlink_cmd");
        localJSONObject1.put("appid", String.valueOf(Global.getClientAppInfo(this.appId).getAppId()));
        localJSONObject1.put("vid", MiAccountManager.getInstance().getUserId());
        localJSONObject1.put("cversion", String.valueOf(Global.getClientAppInfo(this.appId).getVersionCode()));
        localJSONObject1.put("mversion", String.valueOf(Global.getMiLinkVersion()));
        localJSONObject1.put("sversion", "Android" + String.valueOf(Build.VERSION.RELEASE));
        localJSONObject1.put("did", CommonUtils.miuiSHA1(DeviceDash.getInstance().getDeviceId()));
        localJSONObject1.put("dinfo", Build.MODEL);
        localJSONObject1.put("channel", Global.getClientAppInfo(this.appId).getReleaseChannel());
        localJSONArray1 = new JSONArray();
        Iterator localIterator = paramConcurrentHashMap.keySet().iterator();
        if (!localIterator.hasNext()) {
          break label563;
        }
        localObject1 = (String)localIterator.next();
        Object localObject2 = (List)paramConcurrentHashMap.get(localObject1);
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("cmd", localObject1);
        j = 0;
        localObject1 = new JSONArray();
        localJSONArray2 = new JSONArray();
        localObject2 = ((List)localObject2).iterator();
        i = 0;
        if (!((Iterator)localObject2).hasNext()) {
          break label502;
        }
        localMonitorItem = (BaseDataMonitor.MonitorItem)((Iterator)localObject2).next();
        if (localMonitorItem.isSuccess)
        {
          int m = j + 1;
          k = i;
          j = m;
          if (localMonitorItem.waste < 0L) {
            break label597;
          }
          ((JSONArray)localObject1).put(localMonitorItem.waste);
          j = m;
          continue;
          return "";
        }
      }
      catch (JSONException paramConcurrentHashMap)
      {
        ClientLog.e(this.TAG, "toJson", paramConcurrentHashMap);
      }
      int k = i + 1;
      JSONObject localJSONObject3 = new JSONObject();
      localJSONObject3.put("apn", localMonitorItem.apn);
      localJSONObject3.put("at", localMonitorItem.apnType);
      if (!TextUtils.isEmpty(localMonitorItem.accip)) {
        localJSONObject3.put("accip", localMonitorItem.accip);
      }
      if (localMonitorItem.port > 0) {
        localJSONObject3.put("accport", localMonitorItem.port);
      }
      localJSONObject3.put("errCode", localMonitorItem.errorCode);
      localJSONObject3.put("seq", localMonitorItem.seq);
      localJSONObject3.put("waste", localMonitorItem.waste);
      localJSONArray2.put(localJSONObject3);
      break label597;
      label502:
      localJSONObject2.put("successTimes", j);
      if (((JSONArray)localObject1).length() > 0) {
        localJSONObject2.put("successWasteArray", localObject1);
      }
      localJSONObject2.put("failedTimes", i);
      localJSONObject2.put("failedInfo", localJSONArray2);
      localJSONArray1.put(localJSONObject2);
      continue;
      label563:
      if (localJSONArray1.length() > 0) {
        localJSONObject1.put("data", localJSONArray1);
      }
      for (paramConcurrentHashMap = localJSONObject1.toString();; paramConcurrentHashMap = "") {
        return paramConcurrentHashMap;
      }
      label597:
      int i = k;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\MiLinkMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */