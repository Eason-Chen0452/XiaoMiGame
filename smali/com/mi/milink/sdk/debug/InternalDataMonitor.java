package com.mi.milink.sdk.debug;

import android.os.Build;
import android.os.Build.VERSION;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.SimpleRequest;
import com.mi.milink.sdk.base.os.SimpleRequest.LengthPair;
import com.mi.milink.sdk.base.os.SimpleRequest.StringContent;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.base.os.info.NetworkDash;
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

public class InternalDataMonitor
  extends BaseDataMonitor
{
  private static String TAG_PRE = "InternalDataMonitor";
  private static ConcurrentHashMap<Integer, InternalDataMonitor> monitorMap = new ConcurrentHashMap();
  private static InternalDataMonitor sInstance = new InternalDataMonitor();
  private String TAG = "InternalDataMonitor";
  private byte alarmArriveTimes = 0;
  private int appId;
  private long mLastUploadTime = 0L;
  
  private InternalDataMonitor()
  {
    super(TAG_PRE);
    this.appId = Global.getClientAppInfo().getAppId();
    this.TAG += this.appId;
    if (this.appId == 20002)
    {
      this.mSamplingStatisticsSwitch = false;
      return;
    }
    this.mSamplingStatisticsSwitch = true;
  }
  
  private InternalDataMonitor(int paramInt)
  {
    super(TAG_PRE);
    this.appId = paramInt;
    if (paramInt == 20002)
    {
      this.mSamplingStatisticsSwitch = false;
      return;
    }
    this.mSamplingStatisticsSwitch = true;
  }
  
  public static InternalDataMonitor getInstance()
  {
    return sInstance;
  }
  
  public static InternalDataMonitor getInstance(int paramInt)
  {
    InternalDataMonitor localInternalDataMonitor2 = (InternalDataMonitor)monitorMap.get(Integer.valueOf(paramInt));
    InternalDataMonitor localInternalDataMonitor1 = localInternalDataMonitor2;
    if (localInternalDataMonitor2 == null)
    {
      localInternalDataMonitor1 = new InternalDataMonitor();
      localInternalDataMonitor1.appId = paramInt;
      monitorMap.put(Integer.valueOf(paramInt), localInternalDataMonitor1);
    }
    return localInternalDataMonitor1;
  }
  
  protected boolean doPostData()
  {
    if (this.mMonitorItemMap.isEmpty())
    {
      MiLinkLog.v(this.TAG, "dopost but map is empty!");
      MiLinkLog.w(this.TAG, "mMonitorItemMap em()");
      return false;
    }
    if (System.currentTimeMillis() - this.mLastUploadTime < 300000L)
    {
      MiLinkLog.v(this.TAG, "dopost but has uploaded just now,cancel this!");
      return true;
    }
    if (!NetworkDash.isAvailable())
    {
      MiLinkLog.v(this.TAG, "dopost but network is available");
      return false;
    }
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    localConcurrentHashMap.putAll(this.mMonitorItemMap);
    this.mMonitorItemMap.clear();
    if ((!TextUtils.isEmpty(MiAccountManager.getInstance().getUserId())) || (MiChannelAccountManager.hasInit))
    {
      Object localObject2 = toJson(localConcurrentHashMap);
      MiLinkLog.v(this.TAG, "ThreadId=" + Thread.currentThread().getId() + ", doPostData: dataJson=" + (String)localObject2);
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        this.mLastUploadTime = System.currentTimeMillis();
        Object localObject1 = new HashMap();
        ((Map)localObject1).put("dataJson", localObject2);
        if (!ClientAppInfo.isTestChannel()) {
          try
          {
            localObject2 = new SimpleRequest.LengthPair();
            SimpleRequest.StringContent localStringContent = SimpleRequest.postAsString(getStasticServerAddr(), (Map)localObject1, null, true, (SimpleRequest.LengthPair)localObject2);
            TrafficMonitor.getInstance().traffic("c.do", ((SimpleRequest.LengthPair)localObject2).compressLength);
            TrafficMonitor.getInstance().print();
            TrafficMonitor.getInstance().printDetail();
            if (localStringContent != null)
            {
              MiLinkLog.v(this.TAG, "doPostData use host report succeed: " + localStringContent.getBody());
              return false;
            }
          }
          catch (Exception localException2)
          {
            MiLinkLog.v(this.TAG, "doPostData use host report failed");
            try
            {
              SimpleRequest.LengthPair localLengthPair = new SimpleRequest.LengthPair();
              localObject1 = SimpleRequest.postAsString(getStaticServerAddIp(), (Map)localObject1, null, true, getStaticServerHost(), localLengthPair);
              TrafficMonitor.getInstance().traffic("c.do", localLengthPair.compressLength);
              TrafficMonitor.getInstance().print();
              TrafficMonitor.getInstance().printDetail();
              if (localObject1 != null)
              {
                MiLinkLog.v(this.TAG, "doPostData use ip report succeed: " + ((SimpleRequest.StringContent)localObject1).getBody());
                return false;
              }
            }
            catch (Exception localException1)
            {
              MiLinkLog.v(this.TAG, "doPostData use ip report failed");
              MiLinkLog.v(this.TAG, "doPostData use host and ip failed");
              this.mMonitorItemMap.putAll(localConcurrentHashMap);
            }
          }
        }
      }
    }
    return false;
  }
  
  public void doPostDataAtOnce()
  {
    MiLinkLog.w(this.TAG, "doPostDataAtOnce()");
    startUpload(0L);
  }
  
  @RequiresApi(api=20)
  public void onAlarmArrive()
  {
    try
    {
      this.mLoopPost = false;
      this.alarmArriveTimes = ((byte)(this.alarmArriveTimes + 1));
      if (this.alarmArriveTimes >= 2)
      {
        doPostDataAtOnce();
        this.alarmArriveTimes = 0;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
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
      JSONArray localJSONArray3;
      JSONArray localJSONArray4;
      JSONArray localJSONArray5;
      JSONArray localJSONArray6;
      JSONArray localJSONArray7;
      JSONArray localJSONArray8;
      BaseDataMonitor.MonitorItem localMonitorItem;
      try
      {
        localJSONObject1.put("ac", "mlink_cmd");
        localJSONObject1.put("appid", String.valueOf(this.appId));
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
          break label843;
        }
        localObject1 = (String)localIterator.next();
        Object localObject2 = (List)paramConcurrentHashMap.get(localObject1);
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("cmd", localObject1);
        j = 0;
        localObject1 = new JSONArray();
        localJSONArray2 = new JSONArray();
        localJSONArray3 = new JSONArray();
        localJSONArray4 = new JSONArray();
        localJSONArray5 = new JSONArray();
        localJSONArray6 = new JSONArray();
        localJSONArray7 = new JSONArray();
        localJSONArray8 = new JSONArray();
        localObject2 = ((List)localObject2).iterator();
        i = 0;
        if (!((Iterator)localObject2).hasNext()) {
          break label668;
        }
        localMonitorItem = (BaseDataMonitor.MonitorItem)((Iterator)localObject2).next();
        if (localMonitorItem.isSuccess)
        {
          int m = j + 1;
          if (localMonitorItem.waste >= 0L) {
            ((JSONArray)localObject1).put(localMonitorItem.waste);
          }
          k = i;
          j = m;
          if (TextUtils.isEmpty(localMonitorItem.accip)) {
            break label877;
          }
          localJSONArray2.put(localMonitorItem.accip);
          localJSONArray3.put(localMonitorItem.port);
          localJSONArray4.put(localMonitorItem.apn);
          localJSONArray5.put(localMonitorItem.apnType);
          if (!"milink.handshake".equals(localMonitorItem.cmd))
          {
            k = i;
            j = m;
            if (!"milink.firstheartbeat".equals(localMonitorItem.cmd)) {
              break label877;
            }
          }
          localJSONArray6.put(localMonitorItem.clientIp);
          localJSONArray7.put(localMonitorItem.clientIsp);
          j = m;
          continue;
          return "";
        }
      }
      catch (JSONException paramConcurrentHashMap)
      {
        MiLinkLog.e(this.TAG, "toJson", paramConcurrentHashMap);
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
      localJSONArray8.put(localJSONObject3);
      break label877;
      label668:
      localJSONObject2.put("successTimes", j);
      if (((JSONArray)localObject1).length() > 0) {
        localJSONObject2.put("successWasteArray", localObject1);
      }
      if (localJSONArray2.length() > 0) {
        localJSONObject2.put("successIp", localJSONArray2);
      }
      if (localJSONArray3.length() > 0) {
        localJSONObject2.put("successPort", localJSONArray3);
      }
      if (localJSONArray4.length() > 0) {
        localJSONObject2.put("successApn", localJSONArray4);
      }
      if (localJSONArray5.length() > 0) {
        localJSONObject2.put("successApnType", localJSONArray5);
      }
      if (localJSONArray6.length() > 0) {
        localJSONObject2.put("clientIp", localJSONArray6);
      }
      if (localJSONArray7.length() > 0) {
        localJSONObject2.put("clientIsp", localJSONArray7);
      }
      localJSONObject2.put("failedTimes", i);
      localJSONObject2.put("failedInfo", localJSONArray8);
      localJSONArray1.put(localJSONObject2);
      continue;
      label843:
      if (localJSONArray1.length() > 0) {
        localJSONObject1.put("data", localJSONArray1);
      }
      for (paramConcurrentHashMap = localJSONObject1.toString();; paramConcurrentHashMap = "") {
        return paramConcurrentHashMap;
      }
      label877:
      int i = k;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\InternalDataMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */