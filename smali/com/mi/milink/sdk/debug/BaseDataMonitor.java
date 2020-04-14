package com.mi.milink.sdk.debug;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.base.CustomHandlerThread;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public abstract class BaseDataMonitor
  extends CustomHandlerThread
{
  public static final int MESSAGE_UPLOAD_DATA = 10;
  public static final int RET_CODE_ABANDONED_SESSION_NOT_READY = 4;
  public static final int RET_CODE_OK = 0;
  public static final int RET_CODE_PING_TIME_OUT = 3;
  public static final int RET_CODE_TIME_OUT = 1;
  public static final int RET_CODE_TOKEN_EXPIRED = 2;
  private static final String TAG = "BaseDataMonitor";
  private long mLastUploadTs;
  protected boolean mLoopPost = true;
  protected final ConcurrentHashMap<String, List<MonitorItem>> mMonitorItemMap = new ConcurrentHashMap();
  protected boolean mSamplingStatisticsSwitch = false;
  boolean mStarted = false;
  protected boolean mSwitch = true;
  protected long mUploadInterval = ConfigManager.getInstance().getUploadStasticInterval();
  private Random random = new Random();
  protected String stasticServerAdd;
  protected String stasticServerAddIp;
  protected String stasticServerHost;
  
  protected BaseDataMonitor(String paramString)
  {
    super(paramString);
  }
  
  public void addMonitorItem(MonitorItem paramMonitorItem)
  {
    Object localObject2;
    Object localObject1;
    if ((paramMonitorItem != null) && (this.mSwitch))
    {
      localObject2 = paramMonitorItem.cmd;
      if (!this.mMonitorItemMap.containsKey(localObject2)) {
        break label46;
      }
      localObject2 = (List)this.mMonitorItemMap.get(localObject2);
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label64;
      }
    }
    label46:
    label64:
    do
    {
      do
      {
        return;
        localObject1 = new ArrayList();
        this.mMonitorItemMap.put(localObject2, localObject1);
        if (((List)localObject1).size() >= 100) {
          break;
        }
        ((List)localObject1).add(paramMonitorItem);
      } while (this.mStarted);
      startUpload(60000L);
      return;
    } while (System.currentTimeMillis() - this.mLastUploadTs <= 180000L);
    startUpload(0L);
  }
  
  protected abstract boolean doPostData();
  
  public String getStasticServerAddr()
  {
    if (ClientAppInfo.isLiveApp())
    {
      MiLinkLog.d("BaseDataMonitor", "static server addr = http://dzb.g.mi.com/c.do");
      return "http://dzb.g.mi.com/c.do";
    }
    return "https://d.g.mi.com/c.do​";
  }
  
  public String getStaticServerAddIp()
  {
    if (ClientAppInfo.isLiveApp())
    {
      MiLinkLog.d("BaseDataMonitor", "static server Ip = http://dzb.g.mi.com/c.do");
      return "http://dzb.g.mi.com/c.do";
    }
    return "http://120.92.24.141/c.do​";
  }
  
  public String getStaticServerHost()
  {
    if (ClientAppInfo.isLiveApp())
    {
      MiLinkLog.d("BaseDataMonitor", "static server host = dzb.g.mi.com");
      return "dzb.g.mi.com";
    }
    return "d.g.mi.com";
  }
  
  protected void processMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    this.mLastUploadTs = System.currentTimeMillis();
    paramMessage = (PowerManager)Global.getApplicationContext().getSystemService("power");
    boolean bool;
    if (Build.VERSION.SDK_INT >= 20)
    {
      bool = paramMessage.isInteractive();
      label57:
      paramMessage = ((ConnectivityManager)Global.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramMessage == null) || (paramMessage.getType() != 1)) {
        break label186;
      }
    }
    label178:
    label186:
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        MiLinkLog.w("BaseDataMonitor", "is Mobile");
        if (!bool)
        {
          MiLinkLog.w("BaseDataMonitor", "Screen if off");
          bool = false;
        }
      }
      for (;;)
      {
        if (!bool) {
          break label178;
        }
        this.mHandler.removeCallbacksAndMessages(Integer.valueOf(10));
        if (!this.mLoopPost) {
          break;
        }
        paramMessage = obtainMessage();
        paramMessage.what = 10;
        sendMessageDelayed(paramMessage, this.mUploadInterval);
        return;
        bool = paramMessage.isScreenOn();
        break label57;
        bool = doPostData();
        continue;
        bool = doPostData();
      }
      MiLinkLog.d("BaseDataMonitor", "no more data");
      return;
    }
  }
  
  protected void startUpload(long paramLong)
  {
    this.mStarted = true;
    removeMessage(10);
    Message localMessage = obtainMessage();
    localMessage.what = 10;
    sendMessageDelayed(localMessage, paramLong);
  }
  
  protected abstract String toJson(ConcurrentHashMap<String, List<MonitorItem>> paramConcurrentHashMap);
  
  public void trace(String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5)
  {
    trace("mlink_cmd", paramString1, paramInt1, paramString2, paramInt2, paramLong1, paramLong2, paramInt3, paramInt4, paramInt5, MiAccountManager.getInstance().getUserId());
  }
  
  public void trace(String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString3, String paramString4)
  {
    trace("mlink_cmd", paramString1, paramInt1, paramString2, paramInt2, paramLong1, paramLong2, paramInt3, paramInt4, paramInt5, MiAccountManager.getInstance().getUserId(), paramString3, paramString4);
  }
  
  public void trace(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString4)
  {
    if (this.mHandler == null) {
      return;
    }
    this.mHandler.post(new BaseDataMonitor.1(this, paramString1, paramString2, paramInt1, paramString3, paramInt2, paramLong1, paramLong2, paramInt3, paramInt4, paramInt5, paramString4));
  }
  
  public void trace(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString4, String paramString5, String paramString6)
  {
    if (this.mHandler == null) {
      return;
    }
    this.mHandler.post(new BaseDataMonitor.2(this, paramString1, paramString2, paramInt1, paramString3, paramInt2, paramLong1, paramLong2, paramInt3, paramInt4, paramInt5, paramString4, paramString5, paramString6));
  }
  
  protected void traceToServer(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString4, String paramString5, String paramString6)
  {
    paramString4 = new MonitorItem();
    paramString4.cmd = paramString3;
    paramString4.waste = (paramLong2 - paramLong1);
    boolean bool;
    if (paramInt2 == 0)
    {
      bool = true;
      paramString4.isSuccess = bool;
      paramString4.errorCode = paramInt2;
      if (paramString2 == null) {
        break label151;
      }
      paramString1 = paramString2.trim();
      label57:
      paramString4.accip = paramString1;
      paramString4.apn = NetworkDash.getApnName();
      paramString4.apnType = String.valueOf(NetworkDash.getApnType());
      paramString4.port = paramInt1;
      paramString4.seq = paramInt5;
      if ((!"milink.firstheartbeat".equals(paramString4.cmd)) && (!"milink.handshake".equals(paramString4.cmd))) {
        break label158;
      }
      paramString4.clientIp = paramString5;
      paramString4.clientIsp = paramString6;
      addMonitorItem(paramString4);
    }
    label151:
    label158:
    do
    {
      return;
      bool = false;
      break;
      paramString1 = "";
      break label57;
      if (!this.mSamplingStatisticsSwitch)
      {
        addMonitorItem(paramString4);
        return;
      }
    } while (this.random.nextInt(100) >= ConfigManager.getInstance().getSamplingStatisticsFactor());
    addMonitorItem(paramString4);
  }
  
  public static class MonitorItem
    implements Serializable
  {
    private static final long serialVersionUID = -5333015815983866181L;
    public String accip = "";
    public String apn = "";
    public String apnType = "";
    public String clientIp = "";
    public String clientIsp = "";
    public String cmd;
    public int errorCode = 0;
    public boolean isSuccess = false;
    public int port = 0;
    public long seq = 0L;
    public long waste = 0L;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\BaseDataMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */