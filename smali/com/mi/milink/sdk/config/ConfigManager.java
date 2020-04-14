package com.mi.milink.sdk.config;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.HashSet;
import java.util.Observable;
import java.util.Set;
import org.json.JSONObject;

public class ConfigManager
  extends Observable
{
  private static final int DEFAULT_HEART_BEAT_INTERVAL = 300000;
  private static final int DEFAULT_SPEED_TEST_INTERVAL = 43200000;
  private static final String JSON_KEY_ENGINE_CONFIG_RATIO = "engineConfRatio";
  private static final String JSON_KEY_HB = "hb";
  private static final String JSON_KEY_INTL = "intl";
  private static final String JSON_KEY_LOG_LEVEL = "logLev";
  private static final String JSON_KEY_ST = "st";
  private static final String JSON_KEY_STATISTICS_FACTOR = "sf";
  private static final String JSON_KEY_TIP = "tip";
  private static final String JSON_KEY_UIP = "uip";
  private static final int MOBILE_NETWORK_CONNECTION_TIME_OUT = 20000;
  private static final int MOBILE_NETWORK_DNS_TIME_OUT = 6000;
  private static final int MOBILE_NETWORK_REQUEST_TIME_OUT = 30000;
  private static final int MOBILE_NETWORK_UPLOAD_STASTIC_INTERVAL = 600000;
  private static final String PREF_KEY_CHANNEL_PUB_KEY = "channel_public_key";
  private static final String PREF_KEY_HEART_BEAT_INTERVAL = "heart_beat_interval";
  private static final String PREF_KEY_LOG_LEVEL = "log_level";
  private static final String PREF_KEY_SAMPLE_STATICTIS_FACTOR = "sample_statistics_factor";
  private static final String PREF_KEY_SPEED_TEST_INTERVAL = "speed_test_interval";
  private static final String PREF_KEY_SPEED_TEST_TIP = "speed_test_tip";
  private static final String PREF_KEY_SPEED_TEST_UIP = "speed_test_uip";
  private static final String PREF_KEY_SUID = "suid";
  private static final String PREF_KEY_SUID_ANONYMOUS = "suid_anonymous";
  private static final String PREF_MNS_SETTINGS_DATA_NAME = "mns_settings_data";
  public static final long SERVICE_SUICIDE_INTERVAL = 3600000L;
  private static final String TAG = "ConfigManager";
  private static final int WIFI_CONNECTION_TIME_OUT = 15000;
  private static final int WIFI_DNS_TIME_OUT = 4000;
  private static final int WIFI_REQUEST_TIME_OUT = 15000;
  private static final int WIFI_UPLOAD_STASTIC_INTERVAL = 300000;
  private static ConfigManager sIntance = new ConfigManager();
  private Set<String> channelPubKeySet = new HashSet(6);
  private long configTimeStamp = 0L;
  private Context context = null;
  private float engineConfigRatio = 0.5F;
  JSONObject engineMatch = null;
  private long heartBeatInterval = 300000L;
  private int logLevel = 63;
  private int samplingStatisticsFactor = 5;
  private long speedTestInterval = 43200000L;
  private String speedTestTip = null;
  private String speedTestUip = null;
  private String suid = null;
  private String suidAnonymous = null;
  private float timeoutMultiply = 1.0F;
  
  private ConfigManager()
  {
    loadConfig();
  }
  
  public static ConfigManager getInstance()
  {
    return sIntance;
  }
  
  @SuppressLint({"NewApi"})
  private void loadConfig()
  {
    try
    {
      SharedPreferences localSharedPreferences = this.context.getSharedPreferences("mns_settings_data", 0);
      this.heartBeatInterval = localSharedPreferences.getLong("heart_beat_interval", 300000L);
      this.speedTestInterval = localSharedPreferences.getLong("speed_test_interval", 43200000L);
      this.speedTestTip = localSharedPreferences.getString("speed_test_tip", "");
      this.speedTestUip = localSharedPreferences.getString("speed_test_uip", "");
      this.samplingStatisticsFactor = localSharedPreferences.getInt("sample_statistics_factor", 5);
      this.logLevel = localSharedPreferences.getInt("log_level", 63);
      this.suid = localSharedPreferences.getString("suid", "");
      this.suidAnonymous = localSharedPreferences.getString("suid_anonymous", "");
      this.channelPubKeySet = localSharedPreferences.getStringSet("channel_public_key", null);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  @SuppressLint({"NewApi"})
  private void saveConfig()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 137	com/mi/milink/sdk/config/ConfigManager:context	Landroid/content/Context;
    //   6: ldc 72
    //   8: iconst_0
    //   9: invokevirtual 172	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   12: invokeinterface 198 1 0
    //   17: astore_1
    //   18: aload_1
    //   19: ldc 48
    //   21: aload_0
    //   22: getfield 125	com/mi/milink/sdk/config/ConfigManager:heartBeatInterval	J
    //   25: invokeinterface 204 4 0
    //   30: pop
    //   31: aload_1
    //   32: ldc 57
    //   34: aload_0
    //   35: getfield 129	com/mi/milink/sdk/config/ConfigManager:speedTestInterval	J
    //   38: invokeinterface 204 4 0
    //   43: pop
    //   44: aload_1
    //   45: ldc 60
    //   47: aload_0
    //   48: getfield 139	com/mi/milink/sdk/config/ConfigManager:speedTestTip	Ljava/lang/String;
    //   51: invokeinterface 208 3 0
    //   56: pop
    //   57: aload_1
    //   58: ldc 63
    //   60: aload_0
    //   61: getfield 141	com/mi/milink/sdk/config/ConfigManager:speedTestUip	Ljava/lang/String;
    //   64: invokeinterface 208 3 0
    //   69: pop
    //   70: aload_1
    //   71: ldc 54
    //   73: aload_0
    //   74: getfield 133	com/mi/milink/sdk/config/ConfigManager:samplingStatisticsFactor	I
    //   77: invokeinterface 212 3 0
    //   82: pop
    //   83: aload_1
    //   84: ldc 51
    //   86: aload_0
    //   87: getfield 135	com/mi/milink/sdk/config/ConfigManager:logLevel	I
    //   90: invokeinterface 212 3 0
    //   95: pop
    //   96: aload_1
    //   97: ldc 66
    //   99: aload_0
    //   100: getfield 116	com/mi/milink/sdk/config/ConfigManager:suid	Ljava/lang/String;
    //   103: invokeinterface 208 3 0
    //   108: pop
    //   109: aload_1
    //   110: ldc 69
    //   112: aload_0
    //   113: getfield 118	com/mi/milink/sdk/config/ConfigManager:suidAnonymous	Ljava/lang/String;
    //   116: invokeinterface 208 3 0
    //   121: pop
    //   122: aload_1
    //   123: ldc 45
    //   125: aload_0
    //   126: getfield 148	com/mi/milink/sdk/config/ConfigManager:channelPubKeySet	Ljava/util/Set;
    //   129: invokeinterface 216 3 0
    //   134: pop
    //   135: getstatic 221	android/os/Build$VERSION:SDK_INT	I
    //   138: bipush 9
    //   140: if_icmplt +12 -> 152
    //   143: aload_1
    //   144: invokeinterface 224 1 0
    //   149: aload_0
    //   150: monitorexit
    //   151: return
    //   152: aload_1
    //   153: invokeinterface 228 1 0
    //   158: pop
    //   159: goto -10 -> 149
    //   162: astore_1
    //   163: aload_0
    //   164: monitorexit
    //   165: aload_1
    //   166: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	167	0	this	ConfigManager
    //   17	136	1	localEditor	android.content.SharedPreferences.Editor
    //   162	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	149	162	finally
    //   152	159	162	finally
  }
  
  private void updateHeartBeatInterval(long paramLong)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "heartbeat interval from server is " + paramLong);
      if (paramLong > 0L)
      {
        paramLong = 1000L * paramLong;
        if (paramLong != this.heartBeatInterval)
        {
          MiLinkLog.w("ConfigManager", "update heat beat interval from " + this.heartBeatInterval + " to " + paramLong);
          this.heartBeatInterval = paramLong;
          AlarmClockService.resetNextPing();
        }
      }
      return;
    }
    finally {}
  }
  
  private void updateLogLevel(int paramInt)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "update logLevel =" + paramInt);
      if (paramInt != this.logLevel)
      {
        this.logLevel = paramInt;
        MiLinkLog.setLogcatTraceLevel(this.logLevel);
        MiLinkLog.setFileTraceLevel(this.logLevel);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void updateSamplingStatisticFactor(int paramInt)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "update sample statistic factor = " + paramInt);
      if ((paramInt <= 10) && (paramInt >= 0) && (paramInt != this.samplingStatisticsFactor)) {
        this.samplingStatisticsFactor = paramInt;
      }
      return;
    }
    finally {}
  }
  
  private void updateSpeedTestInterval(long paramLong)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "speedtest interval from server is " + paramLong);
      if (paramLong > 0L)
      {
        paramLong = 1000L * paramLong;
        if (paramLong != this.speedTestInterval) {
          this.speedTestInterval = paramLong;
        }
      }
      return;
    }
    finally {}
  }
  
  private void updateSpeedTestTcpIps(String paramString)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "speedtest tip is " + paramString);
      if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.speedTestTip))) {
        this.speedTestTip = paramString;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void updateSpeedTestUdpIps(String paramString)
  {
    try
    {
      MiLinkLog.v("ConfigManager", "speedtest uip is " + paramString);
      if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.speedTestUip))) {
        this.speedTestUip = paramString;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void deleteChannelPubKey(String paramString)
  {
    if (this.channelPubKeySet == null) {
      return;
    }
    this.channelPubKeySet.remove(paramString);
  }
  
  public Set<String> getChannelPubKeys()
  {
    try
    {
      if ((this.channelPubKeySet == null) || (this.channelPubKeySet.size() == 0)) {
        loadConfig();
      }
      Set localSet = this.channelPubKeySet;
      return localSet;
    }
    finally {}
  }
  
  public long getConfigTimeStamp()
  {
    try
    {
      long l = this.configTimeStamp;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getConnetionTimeout()
  {
    int i = 15000;
    if (NetworkDash.isMobile()) {
      i = 20000;
    }
    return i;
  }
  
  public int getDnsTimeout()
  {
    int i = 4000;
    if (NetworkDash.isMobile()) {
      i = 6000;
    }
    return i;
  }
  
  public float getEngineConfigRatio()
  {
    try
    {
      float f = this.engineConfigRatio;
      return f;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public JSONObject getEngineMatch()
  {
    try
    {
      JSONObject localJSONObject = this.engineMatch;
      return localJSONObject;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long getHeartBeatInterval()
  {
    try
    {
      long l = this.heartBeatInterval;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getRequestTimeout()
  {
    int i = 15000;
    if (NetworkDash.isMobile()) {
      i = 30000;
    }
    return i;
  }
  
  public int getSamplingStatisticsFactor()
  {
    return this.samplingStatisticsFactor;
  }
  
  public long getSpeedTestInterval()
  {
    try
    {
      long l = this.speedTestInterval;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getSpeedTestTcpIps()
  {
    try
    {
      String str = this.speedTestTip;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getSpeedTestUdpIps()
  {
    try
    {
      String str = this.speedTestUip;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getSuid()
  {
    try
    {
      String str = this.suid;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String getSuidAnonymous()
  {
    try
    {
      String str = this.suidAnonymous;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public float getTimeoutMultiply()
  {
    return this.timeoutMultiply;
  }
  
  public int getUploadStasticInterval()
  {
    int i = 600000;
    if (NetworkDash.isWifi()) {
      i = 300000;
    }
    return i;
  }
  
  public void setTimeoutMultiply(float paramFloat)
  {
    try
    {
      this.timeoutMultiply = paramFloat;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void updateChannelPubKeySet(Set<String> paramSet)
  {
    try
    {
      this.channelPubKeySet = paramSet;
      saveConfig();
      return;
    }
    finally
    {
      paramSet = finally;
      throw paramSet;
    }
  }
  
  /* Error */
  public boolean updateConfig(long paramLong, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: ldc 79
    //   7: new 232	java/lang/StringBuilder
    //   10: dup
    //   11: ldc_w 359
    //   14: invokespecial 237	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_0
    //   18: getfield 131	com/mi/milink/sdk/config/ConfigManager:configTimeStamp	J
    //   21: invokevirtual 241	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   24: ldc_w 257
    //   27: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: lload_1
    //   31: invokevirtual 241	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   34: ldc_w 361
    //   37: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_3
    //   41: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 251	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: iload 6
    //   52: istore 5
    //   54: lload_1
    //   55: aload_0
    //   56: getfield 131	com/mi/milink/sdk/config/ConfigManager:configTimeStamp	J
    //   59: lcmp
    //   60: ifle +43 -> 103
    //   63: aload_0
    //   64: lload_1
    //   65: putfield 131	com/mi/milink/sdk/config/ConfigManager:configTimeStamp	J
    //   68: aload_3
    //   69: invokestatic 295	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   72: istore 5
    //   74: iload 5
    //   76: ifne +143 -> 219
    //   79: new 363	org/json/JSONObject
    //   82: dup
    //   83: aload_3
    //   84: invokespecial 364	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   87: astore_3
    //   88: aload_3
    //   89: invokevirtual 367	org/json/JSONObject:length	()I
    //   92: istore 4
    //   94: iload 4
    //   96: ifne +12 -> 108
    //   99: iload 6
    //   101: istore 5
    //   103: aload_0
    //   104: monitorexit
    //   105: iload 5
    //   107: ireturn
    //   108: aload_0
    //   109: aload_3
    //   110: ldc 16
    //   112: iconst_0
    //   113: invokevirtual 370	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   116: i2l
    //   117: invokespecial 372	com/mi/milink/sdk/config/ConfigManager:updateHeartBeatInterval	(J)V
    //   120: aload_3
    //   121: ldc 25
    //   123: invokevirtual 376	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   126: astore 7
    //   128: aload 7
    //   130: ifnull +42 -> 172
    //   133: aload_0
    //   134: aload 7
    //   136: ldc 19
    //   138: iconst_0
    //   139: invokevirtual 370	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   142: i2l
    //   143: invokespecial 378	com/mi/milink/sdk/config/ConfigManager:updateSpeedTestInterval	(J)V
    //   146: aload_0
    //   147: aload 7
    //   149: ldc 31
    //   151: ldc -76
    //   153: invokevirtual 381	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   156: invokespecial 383	com/mi/milink/sdk/config/ConfigManager:updateSpeedTestTcpIps	(Ljava/lang/String;)V
    //   159: aload_0
    //   160: aload 7
    //   162: ldc 34
    //   164: ldc -76
    //   166: invokevirtual 381	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   169: invokespecial 385	com/mi/milink/sdk/config/ConfigManager:updateSpeedTestUdpIps	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: aload_3
    //   174: ldc 13
    //   176: invokevirtual 388	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   179: invokestatic 394	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   182: putfield 121	com/mi/milink/sdk/config/ConfigManager:engineConfigRatio	F
    //   185: aload_0
    //   186: aload_3
    //   187: ldc 28
    //   189: iconst_m1
    //   190: invokevirtual 370	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   193: invokespecial 396	com/mi/milink/sdk/config/ConfigManager:updateSamplingStatisticFactor	(I)V
    //   196: aload_0
    //   197: aload_3
    //   198: ldc 22
    //   200: bipush 63
    //   202: invokevirtual 370	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   205: invokespecial 398	com/mi/milink/sdk/config/ConfigManager:updateLogLevel	(I)V
    //   208: aload_0
    //   209: aload_3
    //   210: ldc_w 400
    //   213: invokevirtual 403	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   216: putfield 152	com/mi/milink/sdk/config/ConfigManager:engineMatch	Lorg/json/JSONObject;
    //   219: aload_0
    //   220: invokespecial 350	com/mi/milink/sdk/config/ConfigManager:saveConfig	()V
    //   223: iconst_1
    //   224: istore 5
    //   226: goto -123 -> 103
    //   229: astore_3
    //   230: ldc 79
    //   232: aload_3
    //   233: invokestatic 407	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   236: aload_0
    //   237: aconst_null
    //   238: putfield 152	com/mi/milink/sdk/config/ConfigManager:engineMatch	Lorg/json/JSONObject;
    //   241: goto -22 -> 219
    //   244: astore_3
    //   245: ldc 79
    //   247: aload_3
    //   248: invokestatic 407	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   251: goto -32 -> 219
    //   254: astore_3
    //   255: aload_0
    //   256: monitorexit
    //   257: aload_3
    //   258: athrow
    //   259: astore 7
    //   261: goto -76 -> 185
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	264	0	this	ConfigManager
    //   0	264	1	paramLong	long
    //   0	264	3	paramString	String
    //   92	3	4	i	int
    //   52	173	5	bool1	boolean
    //   1	99	6	bool2	boolean
    //   126	35	7	localJSONObject	JSONObject
    //   259	1	7	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   208	219	229	java/lang/Exception
    //   79	94	244	org/json/JSONException
    //   108	128	244	org/json/JSONException
    //   133	172	244	org/json/JSONException
    //   172	185	244	org/json/JSONException
    //   185	208	244	org/json/JSONException
    //   208	219	244	org/json/JSONException
    //   230	241	244	org/json/JSONException
    //   5	50	254	finally
    //   54	74	254	finally
    //   79	94	254	finally
    //   108	128	254	finally
    //   133	172	254	finally
    //   172	185	254	finally
    //   185	208	254	finally
    //   208	219	254	finally
    //   219	223	254	finally
    //   230	241	254	finally
    //   245	251	254	finally
    //   172	185	259	java/lang/Exception
  }
  
  public void updateSuid(String paramString)
  {
    try
    {
      if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.suid)))
      {
        this.suid = paramString;
        saveConfig();
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void updateSuidAnonymous(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.suidAnonymous)))
    {
      this.suidAnonymous = paramString;
      saveConfig();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\config\ConfigManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */