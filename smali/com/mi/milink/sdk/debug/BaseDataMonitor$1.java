package com.mi.milink.sdk.debug;

import com.mi.milink.sdk.base.Global;

class BaseDataMonitor$1
  implements Runnable
{
  BaseDataMonitor$1(BaseDataMonitor paramBaseDataMonitor, String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString4) {}
  
  public void run()
  {
    this.this$0.traceToServer(this.val$ac, this.val$accIp, this.val$accPort, this.val$cmd, this.val$retCode, this.val$requestTime, this.val$responseTime, this.val$reqSize, this.val$rspSize, this.val$seq, this.val$vuid, Global.getClientIp(), Global.getClientIsp());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\BaseDataMonitor$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */