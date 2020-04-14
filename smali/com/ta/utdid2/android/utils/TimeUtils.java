package com.ta.utdid2.android.utils;

import android.util.Log;

public class TimeUtils
{
  public static final String TAG = TimeUtils.class.getName();
  public static final int TOTAL_M_S_ONE_DAY = 86400000;
  
  public static boolean isUpToDate(long paramLong, int paramInt)
  {
    if ((System.currentTimeMillis() - paramLong) / 86400000L < paramInt) {}
    for (boolean bool = true;; bool = false)
    {
      if (DebugUtils.DBG) {
        Log.d(TAG, "isUpToDate: " + bool + "; oldTimestamp: " + paramLong + "; currentTimestamp" + System.currentTimeMillis());
      }
      return bool;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\TimeUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */