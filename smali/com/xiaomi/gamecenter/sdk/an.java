package com.xiaomi.gamecenter.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;

final class an
  extends Handler
{
  an(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      Toast.makeText(MiCommplatform.access$700(), "《游戏服务》连接异常，无法登录，请重新登录", 1).show();
      return;
    case 0: 
      Toast.makeText(MiCommplatform.access$700(), "网络错误，无法登录，请检查网络设置", 1).show();
      return;
    case 1: 
      MiCommplatform.getInstance().setTouch(false);
      MiCommplatform.access$900();
      return;
    case 2: 
      MiCommplatform.getInstance().setTouch(false);
      MiCommplatform.access$900();
      return;
    case 4: 
      Toast.makeText(MiCommplatform.access$700(), "《游戏服务》连接失败，应用信息为空，请重试", 1).show();
      return;
    case 3: 
      MiCommplatform.getInstance().setTouch(false);
      MiCommplatform.access$1000();
      return;
    case 5: 
      Toast.makeText(MiCommplatform.access$700(), "《游戏服务》连接失败，无法登录，请重试", 1).show();
      return;
    case 6: 
      throw new NullPointerException("No SO files! This will lead login failed");
    case 7: 
      Toast.makeText(MiCommplatform.access$700(), "APPID 错误初始化失败", 1).show();
      throw new NullPointerException("APPID_ERROR APPID:" + paramMessage.obj);
    case 8: 
      Toast.makeText(MiCommplatform.access$700(), "初始化中请稍后", 1).show();
      return;
    case 9: 
      Toast.makeText(MiCommplatform.access$700(), "暂不支持此支付方式", 1).show();
      return;
    case 10: 
      Toast.makeText(MiCommplatform.access$700(), "没有网络，操作失败，请检查网络设置", 1).show();
      return;
    }
    Toast.makeText(MiCommplatform.access$700(), "再按一次将会退出", 1).show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */