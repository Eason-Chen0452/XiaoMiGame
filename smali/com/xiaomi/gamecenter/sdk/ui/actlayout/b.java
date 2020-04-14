package com.xiaomi.gamecenter.sdk.ui.actlayout;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SetUserInfoToGameCenterRsp;

final class b
  implements Runnable
{
  b(a parama, long paramLong, String paramString1, String paramString2, int paramInt, String paramString3) {}
  
  public final void run()
  {
    LoginProto.SetUserInfoToGameCenterRsp localSetUserInfoToGameCenterRsp = MessageFactory.a(ViewLoginLayout.f(this.f.a), this.a, this.b, this.c, this.d, this.e, ViewLoginLayout.d(this.f.a));
    if (localSetUserInfoToGameCenterRsp == null)
    {
      Logger.d("setUserInfoToGameCenterRsp is NULL!");
      return;
    }
    if (localSetUserInfoToGameCenterRsp.getRetCode() != 200)
    {
      Logger.d("setUserInfoToGameCenterRsp is ERROR! Info-msg:" + localSetUserInfoToGameCenterRsp.getErrMsg() + " code:" + localSetUserInfoToGameCenterRsp.getRetCode());
      return;
    }
    Logger.c("setUserInfoToGameCenterRsp is SUCCESS!");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */