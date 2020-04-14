package com.ut.device;

import android.content.Context;
import com.ta.utdid2.aid.AidManager;

public class UTDevice
{
  public static String getAid(String paramString1, String paramString2, Context paramContext)
  {
    return AidManager.getInstance(paramContext).getValue(paramString1, paramString2, getUtdid(paramContext));
  }
  
  public static void getAidAsync(String paramString1, String paramString2, Context paramContext, AidCallback paramAidCallback)
  {
    AidManager.getInstance(paramContext).requestAid(paramString1, paramString2, getUtdid(paramContext), paramAidCallback);
  }
  
  public static String getUtdid(Context paramContext)
  {
    return com.ta.utdid2.device.UTDevice.getUtdid(paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ut\device\UTDevice.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */