package com.xiaomi.gamecenter.sdk.protocol.result;

import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.GetNoticeConfigResp;

public class NoticeResult
{
  private int a;
  private NoticeConfig b;
  
  public NoticeResult(NoticeConfigProtos.GetNoticeConfigResp paramGetNoticeConfigResp)
  {
    if (paramGetNoticeConfigResp == null) {}
    do
    {
      return;
      this.a = paramGetNoticeConfigResp.getRetCode();
    } while ((this.a != 0) || (paramGetNoticeConfigResp.getNoticeConfigCount() <= 0));
    this.b = new NoticeConfig(paramGetNoticeConfigResp.getNoticeConfig(0));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\result\NoticeResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */