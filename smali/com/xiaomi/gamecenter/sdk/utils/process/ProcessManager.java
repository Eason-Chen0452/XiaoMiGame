package com.xiaomi.gamecenter.sdk.utils.process;

import android.util.Log;
import java.util.Comparator;

final class ProcessManager
{
  private static boolean a;
  private static byte b = -1;
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    if (a) {
      if (paramVarArgs.length != 0) {
        break label19;
      }
    }
    for (;;)
    {
      Log.d("AndroidProcesses", paramString);
      return;
      label19:
      paramString = String.format(paramString, paramVarArgs);
    }
  }
  
  public static final class ProcessComparator
    implements Comparator<AndroidProcess>
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\ProcessManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */