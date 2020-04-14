package com.alipay.tscenter.biz.rpc.deviceFp;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface BugTrackMessageService
{
  @OperationType("alipay.security.errorLog.collect")
  public abstract String logCollect(String paramString);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\tscenter\biz\rpc\deviceFp\BugTrackMessageService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */