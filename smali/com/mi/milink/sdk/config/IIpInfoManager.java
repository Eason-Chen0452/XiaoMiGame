package com.mi.milink.sdk.config;

import android.text.TextUtils;
import android.util.Log;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.OptimumServerData;
import com.mi.milink.sdk.session.common.RecentlyServerData;
import com.mi.milink.sdk.session.common.ServerProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public abstract class IIpInfoManager
{
  private static final String DEFAULT_OPTIMUM_SERVER_KEY = "other";
  protected static final String TAG = "IIpInfoManager";
  private int appId;
  private ConcurrentHashMap<String, String> mApnIspMap = null;
  private List<ServerProfile> mBackupIPList = null;
  protected AppIpConfig mIpInfo = null;
  private ConcurrentHashMap<String, OptimumServerData> mOptimumIpMap = null;
  private ConcurrentHashMap<String, RecentlyServerData> mRcentlyIpMap = null;
  
  protected IIpInfoManager()
  {
    this.appId = Global.getClientAppInfo().getAppId();
    init();
  }
  
  protected IIpInfoManager(int paramInt)
  {
    this.appId = paramInt;
    init();
  }
  
  public static String getCurrentApn()
  {
    Object localObject2 = null;
    MiLinkLog.d("IIpInfoManager", "start getCurrentApn ");
    Object localObject1;
    if (NetworkDash.isMobile())
    {
      localObject1 = NetworkDash.getApnName();
      if (!"00:00:00:00:00:00".equals(localObject1)) {
        break label111;
      }
      localObject1 = localObject2;
    }
    label111:
    for (;;)
    {
      MiLinkLog.d("IIpInfoManager", "end getCurrentApn key = " + (String)localObject1);
      return (String)localObject1;
      if (NetworkDash.isWifi())
      {
        localObject1 = WifiDash.getBSSID();
        break;
      }
      if (NetworkDash.isEthernet())
      {
        localObject1 = "ethernet";
        break;
      }
      MiLinkLog.i("IIpInfoManager", "Network(" + NetworkDash.getType() + ") is unkown");
      localObject1 = null;
      break;
    }
  }
  
  /* Error */
  private OptimumServerData getOptimumServerData(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +59 -> 65
    //   9: ldc 14
    //   11: ldc -117
    //   13: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   16: ldc 11
    //   18: astore_1
    //   19: aload_0
    //   20: invokevirtual 146	com/mi/milink/sdk/config/IIpInfoManager:getOptimumIpMap	()Ljava/util/concurrent/ConcurrentHashMap;
    //   23: aload_1
    //   24: invokevirtual 152	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   27: checkcast 154	com/mi/milink/sdk/session/common/OptimumServerData
    //   30: astore_2
    //   31: ldc 14
    //   33: new 90	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -100
    //   39: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_2
    //   43: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   46: ldc -98
    //   48: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_2
    //   64: areturn
    //   65: ldc 14
    //   67: new 90	java/lang/StringBuilder
    //   70: dup
    //   71: ldc -96
    //   73: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   76: aload_1
    //   77: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: goto -67 -> 19
    //   89: astore_1
    //   90: aload_0
    //   91: monitorexit
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	IIpInfoManager
    //   0	94	1	paramString	String
    //   30	34	2	localOptimumServerData	OptimumServerData
    // Exception table:
    //   from	to	target	type
    //   2	16	89	finally
    //   19	61	89	finally
    //   65	86	89	finally
  }
  
  /* Error */
  public static Object loadObject(String paramString)
  {
    // Byte code:
    //   0: ldc 14
    //   2: new 90	java/lang/StringBuilder
    //   5: dup
    //   6: ldc -88
    //   8: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 129	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: invokestatic 172	com/mi/milink/sdk/base/Global:getApplicationContext	()Landroid/content/Context;
    //   24: astore_3
    //   25: aload_3
    //   26: ifnonnull +12 -> 38
    //   29: ldc 14
    //   31: ldc -82
    //   33: invokestatic 177	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: aconst_null
    //   37: areturn
    //   38: aload_3
    //   39: aload_0
    //   40: invokevirtual 183	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   43: astore_1
    //   44: new 185	java/io/ObjectInputStream
    //   47: dup
    //   48: aload_1
    //   49: invokespecial 188	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   52: astore_2
    //   53: aload_2
    //   54: invokevirtual 192	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   57: astore_1
    //   58: aload_2
    //   59: invokevirtual 195	java/io/ObjectInputStream:close	()V
    //   62: aload_1
    //   63: areturn
    //   64: astore_0
    //   65: ldc 14
    //   67: ldc -59
    //   69: aload_0
    //   70: invokestatic 200	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   73: aload_1
    //   74: areturn
    //   75: astore_0
    //   76: ldc 14
    //   78: ldc -54
    //   80: invokestatic 177	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   83: aconst_null
    //   84: areturn
    //   85: astore_1
    //   86: aconst_null
    //   87: astore_2
    //   88: ldc 14
    //   90: ldc -52
    //   92: aload_1
    //   93: invokestatic 200	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   96: aload_3
    //   97: aload_0
    //   98: invokevirtual 208	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   101: pop
    //   102: aload_2
    //   103: ifnull -67 -> 36
    //   106: aload_2
    //   107: invokevirtual 195	java/io/ObjectInputStream:close	()V
    //   110: aconst_null
    //   111: areturn
    //   112: astore_0
    //   113: ldc 14
    //   115: ldc -59
    //   117: aload_0
    //   118: invokestatic 200	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   121: aconst_null
    //   122: areturn
    //   123: astore_1
    //   124: goto -36 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	paramString	String
    //   43	31	1	localObject	Object
    //   85	8	1	localException1	Exception
    //   123	1	1	localException2	Exception
    //   52	55	2	localObjectInputStream	java.io.ObjectInputStream
    //   24	73	3	localContext	android.content.Context
    // Exception table:
    //   from	to	target	type
    //   58	62	64	java/lang/Exception
    //   38	44	75	java/io/FileNotFoundException
    //   44	53	85	java/lang/Exception
    //   106	110	112	java/lang/Exception
    //   53	58	123	java/lang/Exception
  }
  
  private boolean saveApnIspMap()
  {
    try
    {
      boolean bool = saveObject(this.mApnIspMap, getApnIspFileName());
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean saveBackupServerList()
  {
    try
    {
      boolean bool = saveObject(this.mBackupIPList, getBackupServerFileName());
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public static boolean saveObject(Object paramObject, String paramString)
  {
    // Byte code:
    //   0: ldc 14
    //   2: new 90	java/lang/StringBuilder
    //   5: dup
    //   6: ldc -34
    //   8: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 129	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: invokestatic 172	com/mi/milink/sdk/base/Global:getApplicationContext	()Landroid/content/Context;
    //   24: astore_2
    //   25: aload_2
    //   26: ifnonnull +12 -> 38
    //   29: ldc 14
    //   31: ldc -32
    //   33: invokestatic 177	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: iconst_0
    //   37: ireturn
    //   38: new 226	java/io/ObjectOutputStream
    //   41: dup
    //   42: new 228	java/io/BufferedOutputStream
    //   45: dup
    //   46: aload_2
    //   47: aload_1
    //   48: iconst_0
    //   49: invokevirtual 232	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   52: invokespecial 235	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   55: invokespecial 236	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   58: astore_1
    //   59: aload_1
    //   60: aload_0
    //   61: invokevirtual 240	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   64: aload_1
    //   65: astore_0
    //   66: aload_0
    //   67: ifnull +7 -> 74
    //   70: aload_0
    //   71: invokevirtual 241	java/io/ObjectOutputStream:close	()V
    //   74: iconst_1
    //   75: ireturn
    //   76: astore_2
    //   77: aconst_null
    //   78: astore_0
    //   79: ldc 14
    //   81: ldc -13
    //   83: aload_2
    //   84: invokestatic 200	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   87: goto -21 -> 66
    //   90: astore_0
    //   91: ldc 14
    //   93: ldc -59
    //   95: aload_0
    //   96: invokestatic 200	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   99: goto -25 -> 74
    //   102: astore_2
    //   103: aload_1
    //   104: astore_0
    //   105: goto -26 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	paramObject	Object
    //   0	108	1	paramString	String
    //   24	23	2	localContext	android.content.Context
    //   76	8	2	localException1	Exception
    //   102	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   38	59	76	java/lang/Exception
    //   70	74	90	java/lang/Exception
    //   59	64	102	java/lang/Exception
  }
  
  private boolean saveOptimumServerMap()
  {
    try
    {
      boolean bool = saveObject(this.mOptimumIpMap, getOptimumServerFileName());
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean saveRecentlyServerMap()
  {
    try
    {
      boolean bool = saveObject(this.mRcentlyIpMap, getRecentlyServerFileName());
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public abstract void destroy();
  
  protected abstract String getApnIspFileName();
  
  /* Error */
  public ConcurrentHashMap<String, String> getApnIspMap()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +35 -> 43
    //   11: aload_0
    //   12: aload_0
    //   13: invokevirtual 212	com/mi/milink/sdk/config/IIpInfoManager:getApnIspFileName	()Ljava/lang/String;
    //   16: invokestatic 255	com/mi/milink/sdk/config/IIpInfoManager:loadObject	(Ljava/lang/String;)Ljava/lang/Object;
    //   19: checkcast 148	java/util/concurrent/ConcurrentHashMap
    //   22: putfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   25: aload_0
    //   26: getfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   29: ifnonnull +14 -> 43
    //   32: aload_0
    //   33: new 148	java/util/concurrent/ConcurrentHashMap
    //   36: dup
    //   37: invokespecial 256	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   40: putfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   43: aload_0
    //   44: getfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: astore_1
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 42	com/mi/milink/sdk/config/IIpInfoManager:mApnIspMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   58: goto -33 -> 25
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	IIpInfoManager
    //   6	45	1	localConcurrentHashMap	ConcurrentHashMap
    //   52	1	1	localException	Exception
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	25	52	java/lang/Exception
    //   2	7	61	finally
    //   11	25	61	finally
    //   25	43	61	finally
    //   43	48	61	finally
    //   53	58	61	finally
  }
  
  public int getAppId()
  {
    return this.appId;
  }
  
  protected abstract String getBackupServerFileName();
  
  public List<ServerProfile> getBackupServerList()
  {
    try
    {
      Object localObject1 = this.mBackupIPList;
      if (localObject1 == null) {}
      try
      {
        this.mBackupIPList = ((List)loadObject(getBackupServerFileName()));
        if (this.mBackupIPList == null) {
          this.mBackupIPList = new ArrayList();
        }
        if (this.mBackupIPList.isEmpty())
        {
          localObject1 = this.mIpInfo.getOnlineBackupIpList();
          int i = 0;
          while (i < localObject1.length)
          {
            this.mBackupIPList.add(localObject1[i]);
            i += 1;
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          this.mBackupIPList = null;
        }
      }
      localList = this.mBackupIPList;
    }
    finally {}
    List localList;
    return localList;
  }
  
  public OptimumServerData getCurrentApnOptimumServerData()
  {
    Object localObject1 = "other";
    try
    {
      String str = getCurrentApn();
      if (!TextUtils.isEmpty(str)) {
        localObject1 = (String)getApnIspMap().get(str);
      }
      MiLinkLog.v("IIpInfoManager", "get current apn optimum server list, apnKey is " + str + ", ispKey is" + (String)localObject1);
      localObject1 = getOptimumServerData((String)localObject1);
      return (OptimumServerData)localObject1;
    }
    finally {}
  }
  
  public String getDefaultHost()
  {
    if (this.mIpInfo == null) {
      return "";
    }
    return this.mIpInfo.getHost();
  }
  
  public ServerProfile getDefaultServer()
  {
    return new ServerProfile(getDefaultHost(), 0, 1, 4);
  }
  
  /* Error */
  public ConcurrentHashMap<String, OptimumServerData> getOptimumIpMap()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +35 -> 43
    //   11: aload_0
    //   12: aload_0
    //   13: invokevirtual 247	com/mi/milink/sdk/config/IIpInfoManager:getOptimumServerFileName	()Ljava/lang/String;
    //   16: invokestatic 255	com/mi/milink/sdk/config/IIpInfoManager:loadObject	(Ljava/lang/String;)Ljava/lang/Object;
    //   19: checkcast 148	java/util/concurrent/ConcurrentHashMap
    //   22: putfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   25: aload_0
    //   26: getfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   29: ifnonnull +14 -> 43
    //   32: aload_0
    //   33: new 148	java/util/concurrent/ConcurrentHashMap
    //   36: dup
    //   37: invokespecial 256	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   40: putfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   43: aload_0
    //   44: getfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: astore_1
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 38	com/mi/milink/sdk/config/IIpInfoManager:mOptimumIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   58: goto -33 -> 25
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	IIpInfoManager
    //   6	45	1	localConcurrentHashMap	ConcurrentHashMap
    //   52	1	1	localException	Exception
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	25	52	java/lang/Exception
    //   2	7	61	finally
    //   11	25	61	finally
    //   25	43	61	finally
    //   43	48	61	finally
    //   53	58	61	finally
  }
  
  protected abstract String getOptimumServerFileName();
  
  /* Error */
  public ConcurrentHashMap<String, RecentlyServerData> getRcentlyIpMap()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +35 -> 43
    //   11: aload_0
    //   12: aload_0
    //   13: invokevirtual 251	com/mi/milink/sdk/config/IIpInfoManager:getRecentlyServerFileName	()Ljava/lang/String;
    //   16: invokestatic 255	com/mi/milink/sdk/config/IIpInfoManager:loadObject	(Ljava/lang/String;)Ljava/lang/Object;
    //   19: checkcast 148	java/util/concurrent/ConcurrentHashMap
    //   22: putfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   25: aload_0
    //   26: getfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   29: ifnonnull +14 -> 43
    //   32: aload_0
    //   33: new 148	java/util/concurrent/ConcurrentHashMap
    //   36: dup
    //   37: invokespecial 256	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   40: putfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   43: aload_0
    //   44: getfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: astore_1
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 40	com/mi/milink/sdk/config/IIpInfoManager:mRcentlyIpMap	Ljava/util/concurrent/ConcurrentHashMap;
    //   58: goto -33 -> 25
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	IIpInfoManager
    //   6	45	1	localConcurrentHashMap	ConcurrentHashMap
    //   52	1	1	localException	Exception
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	25	52	java/lang/Exception
    //   2	7	61	finally
    //   11	25	61	finally
    //   25	43	61	finally
    //   43	48	61	finally
    //   53	58	61	finally
  }
  
  /* Error */
  public RecentlyServerData getRecentlyServerData()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 279	com/mi/milink/sdk/config/IIpInfoManager:getCurrentApn	()Ljava/lang/String;
    //   5: astore_3
    //   6: aload_3
    //   7: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   10: istore_1
    //   11: iload_1
    //   12: ifne +57 -> 69
    //   15: aload_0
    //   16: invokevirtual 309	com/mi/milink/sdk/config/IIpInfoManager:getRcentlyIpMap	()Ljava/util/concurrent/ConcurrentHashMap;
    //   19: aload_3
    //   20: invokevirtual 152	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   23: checkcast 311	com/mi/milink/sdk/session/common/RecentlyServerData
    //   26: astore_2
    //   27: ldc 14
    //   29: new 90	java/lang/StringBuilder
    //   32: dup
    //   33: ldc_w 313
    //   36: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_2
    //   40: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   43: ldc_w 315
    //   46: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_3
    //   50: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_2
    //   62: areturn
    //   63: astore_2
    //   64: aconst_null
    //   65: astore_2
    //   66: goto -7 -> 59
    //   69: aconst_null
    //   70: astore_2
    //   71: goto -12 -> 59
    //   74: astore_2
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_2
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	IIpInfoManager
    //   10	2	1	bool	boolean
    //   26	36	2	localRecentlyServerData	RecentlyServerData
    //   63	1	2	localException	Exception
    //   65	6	2	localObject1	Object
    //   74	4	2	localObject2	Object
    //   5	45	3	str	String
    // Exception table:
    //   from	to	target	type
    //   15	59	63	java/lang/Exception
    //   2	11	74	finally
    //   15	59	74	finally
  }
  
  protected abstract String getRecentlyServerFileName();
  
  public ServerProfile[] getTestBackupIp()
  {
    return this.mIpInfo.getTestBackupIpList();
  }
  
  protected void init()
  {
    if (Global.getClientAppInfo(this.appId).getmIpConfig() != null)
    {
      Log.e("TAG", "custom ip config");
      this.mIpInfo = Global.getClientAppInfo(this.appId).getmIpConfig();
    }
    for (;;)
    {
      return;
      Object localObject1 = Global.getClientAppInfo(this.appId).getDomain();
      Object localObject2 = Global.getClientAppInfo(this.appId).getBackServer();
      ServerProfile localServerProfile1;
      if ((!((String)localObject1).isEmpty()) && (!((String)localObject2).isEmpty()))
      {
        localServerProfile1 = new ServerProfile((String)localObject2, 0, 1, 5);
        localObject2 = new ServerProfile((String)localObject2, 0, 1, 5);
        this.mIpInfo = new AppIpConfig((String)localObject1, new ServerProfile[] { localServerProfile1 }, new ServerProfile[] { localObject2 });
        return;
      }
      switch (this.appId)
      {
      }
      while ((this.appId >= 100001) && (this.appId < 200000))
      {
        localObject1 = new ServerProfile("58.83.160.92", 0, 1, 5);
        localServerProfile1 = new ServerProfile("120.92.24.134", 0, 1, 5);
        localObject2 = new ServerProfile("10.105.44.12", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("milink.ac.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        return;
        localObject1 = new ServerProfile("58.83.160.100", 0, 1, 5);
        localServerProfile1 = new ServerProfile("120.131.6.160", 0, 1, 5);
        localObject2 = new ServerProfile("123.59.39.164", 0, 1, 5);
        ServerProfile localServerProfile2 = new ServerProfile("111.206.200.91", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("milink.chat.mi.com", new ServerProfile[] { localObject1, localServerProfile1, localObject2 }, new ServerProfile[] { localServerProfile2 });
        continue;
        localObject1 = new ServerProfile("120.134.33.114", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.188", 0, 1, 5);
        localObject2 = new ServerProfile("42.62.94.226", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("link.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("120.134.33.114", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.188", 0, 1, 5);
        localObject2 = new ServerProfile("42.62.94.50", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("link.zifei.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("120.134.33.152", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.226", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("ent.g.mi.com", new ServerProfile[] { localObject1 }, new ServerProfile[] { localServerProfile1 });
        continue;
        localObject1 = new ServerProfile("58.83.160.115", 0, 1, 5);
        localServerProfile1 = new ServerProfile("124.243.204.75", 0, 1, 5);
        localObject2 = new ServerProfile("42.62.94.101", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("migc.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("58.83.160.115", 0, 1, 5);
        localServerProfile1 = new ServerProfile("124.243.204.80", 0, 1, 5);
        localObject2 = new ServerProfile("10.99.184.86", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("mipush.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("124.243.204.139", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.226", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("milink.misupport.mi.com", new ServerProfile[] { localObject1 }, new ServerProfile[] { localServerProfile1 });
        continue;
        if (Global.getClientAppInfo(this.appId).getReleaseChannel().equals("meng_1254_11_android"))
        {
          localObject1 = new ServerProfile[2];
          localObject1[0] = new ServerProfile("58.83.160.92", 0, 1, 5);
          localObject1[1] = new ServerProfile("120.92.24.134", 0, 1, 5);
        }
        for (;;)
        {
          this.mIpInfo = new AppIpConfig("milink.zb.mi.com", (ServerProfile[])localObject1, new ServerProfile[] { new ServerProfile("111.206.200.91", 0, 1, 5) });
          break;
          localObject1 = new ServerProfile[2];
          localObject1[0] = new ServerProfile("58.83.160.92", 0, 1, 5);
          localObject1[1] = new ServerProfile("120.92.24.134", 0, 1, 5);
        }
        localObject1 = new ServerProfile("124.251.58.163", 0, 1, 5);
        localServerProfile1 = new ServerProfile("120.92.24.139", 0, 1, 5);
        localObject2 = new ServerProfile("42.62.94.50", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("milink.mtk.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("120.92.24.145", 0, 1, 5);
        localServerProfile1 = new ServerProfile("58.83.177.15", 0, 1, 5);
        localObject2 = new ServerProfile("42.62.94.31", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("mishop.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        continue;
        localObject1 = new ServerProfile("42.62.94.50", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.50", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("milink.ac.mi.com", new ServerProfile[] { localObject1 }, new ServerProfile[] { localServerProfile1 });
        continue;
        localObject1 = new ServerProfile("58.83.177.14", 0, 1, 5);
        localServerProfile1 = new ServerProfile("42.62.94.50", 0, 1, 5);
        this.mIpInfo = new AppIpConfig("knights.g.mi.com", new ServerProfile[] { localObject1 }, new ServerProfile[] { localServerProfile1 });
        continue;
        if (Global.getClientAppInfo().getReleaseChannel().equals("oversea"))
        {
          localObject1 = new ServerProfile("47.74.174.24", 0, 1, 5);
          localServerProfile1 = new ServerProfile("111.202.86.149", 0, 1, 5);
          this.mIpInfo = new AppIpConfig("gmsdk.inter.g.mi.com", new ServerProfile[] { localObject1 }, new ServerProfile[] { localServerProfile1 });
        }
        else
        {
          localObject1 = new ServerProfile("58.83.160.173", 0, 1, 5);
          localServerProfile1 = new ServerProfile("42.62.94.23", 0, 1, 5);
          localObject2 = new ServerProfile("111.202.86.149", 0, 1, 5);
          this.mIpInfo = new AppIpConfig("gmsdk.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
          continue;
          localObject1 = new ServerProfile("120.92.24.145", 0, 1, 5);
          localServerProfile1 = new ServerProfile("58.83.177.15", 0, 1, 5);
          localObject2 = new ServerProfile("42.62.94.31", 0, 1, 5);
          this.mIpInfo = new AppIpConfig("milink.go.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
          continue;
          localObject1 = new ServerProfile("58.83.177.15", 0, 1, 5);
          localServerProfile1 = new ServerProfile("120.92.24.145", 0, 1, 5);
          localObject2 = new ServerProfile("111.202.86.148", 0, 1, 5);
          this.mIpInfo = new AppIpConfig("milink.migc.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
          continue;
          localObject1 = new ServerProfile("58.83.177.15", 0, 1, 5);
          localServerProfile1 = new ServerProfile("120.92.24.145", 0, 1, 5);
          localObject2 = new ServerProfile("111.206.200.91", 0, 1, 5);
          this.mIpInfo = new AppIpConfig("milink.migc.g.mi.com", new ServerProfile[] { localObject1, localServerProfile1 }, new ServerProfile[] { localObject2 });
        }
      }
    }
  }
  
  public void setBackupServerList(List<ServerProfile> paramList)
  {
    if (paramList != null) {}
    try
    {
      if (!paramList.isEmpty())
      {
        this.mBackupIPList = paramList;
        saveBackupServerList();
      }
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  /* Error */
  public void setOptmumServerList(String paramString, List<ServerProfile> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnull +156 -> 159
    //   6: aload_2
    //   7: invokeinterface 267 1 0
    //   12: ifne +147 -> 159
    //   15: aload_1
    //   16: astore_3
    //   17: aload_1
    //   18: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: ifeq +14 -> 35
    //   24: ldc 14
    //   26: ldc_w 452
    //   29: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   32: ldc 11
    //   34: astore_3
    //   35: invokestatic 279	com/mi/milink/sdk/config/IIpInfoManager:getCurrentApn	()Ljava/lang/String;
    //   38: astore 5
    //   40: aload 5
    //   42: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   45: ifne +19 -> 64
    //   48: aload_0
    //   49: invokevirtual 281	com/mi/milink/sdk/config/IIpInfoManager:getApnIspMap	()Ljava/util/concurrent/ConcurrentHashMap;
    //   52: aload 5
    //   54: aload_3
    //   55: invokevirtual 456	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   58: pop
    //   59: aload_0
    //   60: invokespecial 458	com/mi/milink/sdk/config/IIpInfoManager:saveApnIspMap	()Z
    //   63: pop
    //   64: aload_0
    //   65: aload_3
    //   66: invokespecial 287	com/mi/milink/sdk/config/IIpInfoManager:getOptimumServerData	(Ljava/lang/String;)Lcom/mi/milink/sdk/session/common/OptimumServerData;
    //   69: astore 4
    //   71: aload 4
    //   73: astore_1
    //   74: aload 4
    //   76: ifnonnull +11 -> 87
    //   79: new 154	com/mi/milink/sdk/session/common/OptimumServerData
    //   82: dup
    //   83: invokespecial 459	com/mi/milink/sdk/session/common/OptimumServerData:<init>	()V
    //   86: astore_1
    //   87: aload_1
    //   88: aload_2
    //   89: invokevirtual 462	com/mi/milink/sdk/session/common/OptimumServerData:setOptimumServers	(Ljava/util/List;)V
    //   92: aload_1
    //   93: invokestatic 468	java/lang/System:currentTimeMillis	()J
    //   96: invokevirtual 472	com/mi/milink/sdk/session/common/OptimumServerData:setTimeStamp	(J)V
    //   99: aload_0
    //   100: invokevirtual 146	com/mi/milink/sdk/config/IIpInfoManager:getOptimumIpMap	()Ljava/util/concurrent/ConcurrentHashMap;
    //   103: aload_3
    //   104: aload_1
    //   105: invokevirtual 456	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   108: pop
    //   109: aload_0
    //   110: invokespecial 474	com/mi/milink/sdk/config/IIpInfoManager:saveOptimumServerMap	()Z
    //   113: pop
    //   114: ldc 14
    //   116: new 90	java/lang/StringBuilder
    //   119: dup
    //   120: ldc_w 476
    //   123: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_1
    //   127: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   130: ldc -98
    //   132: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload_3
    //   136: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc_w 315
    //   142: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload 5
    //   147: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 479	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload_0
    //   157: monitorexit
    //   158: return
    //   159: ldc 14
    //   161: ldc_w 481
    //   164: invokestatic 479	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   167: goto -11 -> 156
    //   170: astore_1
    //   171: aload_0
    //   172: monitorexit
    //   173: aload_1
    //   174: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	175	0	this	IIpInfoManager
    //   0	175	1	paramString	String
    //   0	175	2	paramList	List<ServerProfile>
    //   16	120	3	str1	String
    //   69	6	4	localOptimumServerData	OptimumServerData
    //   38	108	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   6	15	170	finally
    //   17	32	170	finally
    //   35	64	170	finally
    //   64	71	170	finally
    //   79	87	170	finally
    //   87	156	170	finally
    //   159	167	170	finally
  }
  
  /* Error */
  public void setRecentlyServer(ServerProfile paramServerProfile)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +92 -> 95
    //   6: aload_0
    //   7: invokevirtual 486	com/mi/milink/sdk/config/IIpInfoManager:getRecentlyServerData	()Lcom/mi/milink/sdk/session/common/RecentlyServerData;
    //   10: astore_3
    //   11: aload_3
    //   12: astore_2
    //   13: aload_3
    //   14: ifnonnull +11 -> 25
    //   17: new 311	com/mi/milink/sdk/session/common/RecentlyServerData
    //   20: dup
    //   21: invokespecial 487	com/mi/milink/sdk/session/common/RecentlyServerData:<init>	()V
    //   24: astore_2
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 489	com/mi/milink/sdk/session/common/RecentlyServerData:setRecentlyServer	(Lcom/mi/milink/sdk/session/common/ServerProfile;)V
    //   30: aload_2
    //   31: invokestatic 468	java/lang/System:currentTimeMillis	()J
    //   34: invokevirtual 490	com/mi/milink/sdk/session/common/RecentlyServerData:setTimeStamp	(J)V
    //   37: invokestatic 279	com/mi/milink/sdk/config/IIpInfoManager:getCurrentApn	()Ljava/lang/String;
    //   40: astore_1
    //   41: aload_1
    //   42: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   45: ifne +53 -> 98
    //   48: aload_0
    //   49: invokevirtual 309	com/mi/milink/sdk/config/IIpInfoManager:getRcentlyIpMap	()Ljava/util/concurrent/ConcurrentHashMap;
    //   52: aload_1
    //   53: aload_2
    //   54: invokevirtual 456	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   57: pop
    //   58: aload_0
    //   59: invokespecial 492	com/mi/milink/sdk/config/IIpInfoManager:saveRecentlyServerMap	()Z
    //   62: pop
    //   63: ldc 14
    //   65: new 90	java/lang/StringBuilder
    //   68: dup
    //   69: ldc_w 494
    //   72: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_2
    //   76: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   79: ldc_w 315
    //   82: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: aload_1
    //   86: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   95: aload_0
    //   96: monitorexit
    //   97: return
    //   98: ldc 14
    //   100: ldc_w 496
    //   103: invokestatic 142	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: goto -11 -> 95
    //   109: astore_1
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_1
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	IIpInfoManager
    //   0	114	1	paramServerProfile	ServerProfile
    //   12	64	2	localRecentlyServerData1	RecentlyServerData
    //   10	4	3	localRecentlyServerData2	RecentlyServerData
    // Exception table:
    //   from	to	target	type
    //   6	11	109	finally
    //   17	25	109	finally
    //   25	95	109	finally
    //   98	106	109	finally
  }
  
  public static class AppIpConfig
  {
    private String host;
    private ServerProfile[] onlineBackupIpList;
    private ServerProfile[] testBackupIpList;
    
    public AppIpConfig(String paramString, ServerProfile[] paramArrayOfServerProfile1, ServerProfile[] paramArrayOfServerProfile2)
    {
      this.host = paramString;
      this.onlineBackupIpList = paramArrayOfServerProfile1;
      this.testBackupIpList = paramArrayOfServerProfile2;
    }
    
    public String getHost()
    {
      return this.host;
    }
    
    public ServerProfile[] getOnlineBackupIpList()
    {
      return this.onlineBackupIpList;
    }
    
    public ServerProfile[] getTestBackupIpList()
    {
      return this.testBackupIpList;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\config\IIpInfoManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */