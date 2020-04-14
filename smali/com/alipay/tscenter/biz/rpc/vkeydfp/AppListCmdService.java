package com.alipay.tscenter.biz.rpc.vkeydfp;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;

public abstract interface AppListCmdService
{
  @OperationType("alipay.security.vkeyDFP.appListCmd.get")
  public abstract AppListCmdResult getAppListCmd(AppListCmdRequest paramAppListCmdRequest);
  
  @OperationType("alipay.security.vkeyDFP.appListCmd.reGet")
  public abstract AppListCmdResult reGetAppListCmd(AppListCmdRequest paramAppListCmdRequest);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\tscenter\biz\rpc\vkeydfp\AppListCmdService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */