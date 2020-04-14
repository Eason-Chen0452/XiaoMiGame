package com.mi.milink.sdk.speedtest;

import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.ArrayList;

class SpeedTestManager$1
  implements Runnable
{
  SpeedTestManager$1(SpeedTestManager paramSpeedTestManager) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList1 = SpeedTestManager.access$000(this.this$0, ConfigManager.getInstance().getSpeedTestTcpIps());
    ArrayList localArrayList2 = SpeedTestManager.access$100(this.this$0, ConfigManager.getInstance().getSpeedTestUdpIps());
    if ((localArrayList1 != null) || (localArrayList2 != null)) {
      SpeedTestManager.access$200(this.this$0, localArrayList1, localArrayList2);
    }
    MiLinkLog.v("SpeedTestManager", "speed test cost=" + (System.currentTimeMillis() - l) + " ms");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\speedtest\SpeedTestManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */