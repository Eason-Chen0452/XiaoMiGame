package com.mi.milink.sdk.debug;

class BaseDataMonitor$2
  implements Runnable
{
  BaseDataMonitor$2(BaseDataMonitor paramBaseDataMonitor, String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString4, String paramString5, String paramString6) {}
  
  public void run()
  {
    this.this$0.traceToServer(this.val$ac, this.val$accIp, this.val$accPort, this.val$cmd, this.val$retCode, this.val$requestTime, this.val$responseTime, this.val$reqSize, this.val$rspSize, this.val$seq, this.val$vuid, this.val$clientIp, this.val$clientIsp);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\BaseDataMonitor$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */