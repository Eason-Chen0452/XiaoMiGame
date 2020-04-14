package com.ta.utdid2.aid;

import android.content.Context;
import android.util.Log;
import com.ta.utdid2.android.utils.NetworkUtils;
import com.ta.utdid2.android.utils.StringUtils;
import com.ta.utdid2.android.utils.TimeUtils;
import com.ut.device.AidCallback;

public class AidManager
{
  private static final int NUM_DAY_OUT_OF_DATE = 1;
  private static final String TAG = AidManager.class.getName();
  private static AidManager sAidManager = null;
  private Context mContext;
  
  private AidManager(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  /* Error */
  private String genAidValue(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	com/ta/utdid2/aid/AidManager:mContext	Landroid/content/Context;
    //   6: ifnonnull +21 -> 27
    //   9: getstatic 25	com/ta/utdid2/aid/AidManager:TAG	Ljava/lang/String;
    //   12: ldc 36
    //   14: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: ldc 44
    //   20: astore 4
    //   22: aload_0
    //   23: monitorexit
    //   24: aload 4
    //   26: areturn
    //   27: ldc 44
    //   29: astore 4
    //   31: aload_0
    //   32: getfield 32	com/ta/utdid2/aid/AidManager:mContext	Landroid/content/Context;
    //   35: invokestatic 50	com/ta/utdid2/android/utils/NetworkUtils:isConnected	(Landroid/content/Context;)Z
    //   38: ifeq +27 -> 65
    //   41: aload_0
    //   42: getfield 32	com/ta/utdid2/aid/AidManager:mContext	Landroid/content/Context;
    //   45: invokestatic 56	com/ta/utdid2/aid/AidRequester:getInstance	(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
    //   48: aload_1
    //   49: aload_2
    //   50: aload_3
    //   51: aload_0
    //   52: getfield 32	com/ta/utdid2/aid/AidManager:mContext	Landroid/content/Context;
    //   55: aload_1
    //   56: aload_2
    //   57: invokestatic 62	com/ta/utdid2/aid/AidStorageController:getAidValueFromSP	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   60: invokevirtual 66	com/ta/utdid2/aid/AidRequester:postRest	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   63: astore 4
    //   65: aload_0
    //   66: getfield 32	com/ta/utdid2/aid/AidManager:mContext	Landroid/content/Context;
    //   69: aload_1
    //   70: aload 4
    //   72: aload_2
    //   73: invokestatic 70	com/ta/utdid2/aid/AidStorageController:setAidValueToSP	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   76: goto -54 -> 22
    //   79: astore_1
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	AidManager
    //   0	84	1	paramString1	String
    //   0	84	2	paramString2	String
    //   0	84	3	paramString3	String
    //   20	51	4	str	String
    // Exception table:
    //   from	to	target	type
    //   2	18	79	finally
    //   31	65	79	finally
    //   65	76	79	finally
  }
  
  public static AidManager getInstance(Context paramContext)
  {
    try
    {
      if (sAidManager == null) {
        sAidManager = new AidManager(paramContext);
      }
      paramContext = sAidManager;
      return paramContext;
    }
    finally {}
  }
  
  public String getValue(String paramString1, String paramString2, String paramString3)
  {
    boolean bool2 = false;
    Object localObject;
    boolean bool1;
    if ((this.mContext == null) || (StringUtils.isEmpty(paramString1)) || (StringUtils.isEmpty(paramString2)))
    {
      paramString3 = TAG;
      localObject = new StringBuilder("mContext:").append(this.mContext).append("; has appName:");
      if (StringUtils.isEmpty(paramString1))
      {
        bool1 = false;
        paramString1 = ((StringBuilder)localObject).append(bool1).append("; has token:");
        if (!StringUtils.isEmpty(paramString2)) {
          break label112;
        }
        bool1 = bool2;
        label85:
        Log.e(paramString3, bool1);
        localObject = "";
      }
    }
    label112:
    label157:
    do
    {
      String str;
      do
      {
        return (String)localObject;
        bool1 = true;
        break;
        bool1 = true;
        break label85;
        str = AidStorageController.getAidValueFromSP(this.mContext, paramString1, paramString2);
        if (StringUtils.isEmpty(str)) {
          break label157;
        }
        localObject = str;
      } while (TimeUtils.isUpToDate(AidStorageController.getAidGenTimeFromSP(this.mContext, paramString1, paramString2), 1));
      localObject = str;
    } while (!NetworkUtils.isConnected(this.mContext));
    return genAidValue(paramString1, paramString2, paramString3);
  }
  
  public void requestAid(String paramString1, String paramString2, String paramString3, AidCallback paramAidCallback)
  {
    boolean bool2 = false;
    if (paramAidCallback == null)
    {
      Log.e(TAG, "callback is null!");
      return;
    }
    if ((this.mContext == null) || (StringUtils.isEmpty(paramString1)) || (StringUtils.isEmpty(paramString2)))
    {
      paramString3 = TAG;
      localObject = new StringBuilder("mContext:").append(this.mContext).append("; callback:").append(paramAidCallback).append("; has appName:");
      if (StringUtils.isEmpty(paramString1))
      {
        bool1 = false;
        paramString1 = ((StringBuilder)localObject).append(bool1).append("; has token:");
        if (!StringUtils.isEmpty(paramString2)) {
          break label143;
        }
      }
      label143:
      for (boolean bool1 = bool2;; bool1 = true)
      {
        Log.e(paramString3, bool1);
        paramAidCallback.onAidEventChanged(1002, "");
        return;
        bool1 = true;
        break;
      }
    }
    Object localObject = AidStorageController.getAidValueFromSP(this.mContext, paramString1, paramString2);
    if ((!StringUtils.isEmpty((String)localObject)) && (TimeUtils.isUpToDate(AidStorageController.getAidGenTimeFromSP(this.mContext, paramString1, paramString2), 1)))
    {
      paramAidCallback.onAidEventChanged(1001, (String)localObject);
      return;
    }
    if (NetworkUtils.isConnected(this.mContext))
    {
      AidRequester.getInstance(this.mContext).postRestAsync(paramString1, paramString2, paramString3, (String)localObject, paramAidCallback);
      return;
    }
    paramAidCallback.onAidEventChanged(1003, (String)localObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\aid\AidManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */