package com.xiaomi.gamecenter.sdk;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Button;
import com.xiaomi.gamecenter.sdk.ui.MiAlertDialog;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

public class ServiceUpdateHandler
  extends Handler
{
  public ServiceUpdateHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Context localContext = MiCommplatform.getInstance().getApplicationContext();
    try
    {
      paramMessage = (LoginProto.CheckSdkVersionRsp)paramMessage.obj;
      if ((paramMessage == null) || (localContext == null) || (MiCommplatform.sLoginActivity == null))
      {
        MiCommplatform.miLogin(true);
        return;
      }
    }
    catch (Exception paramMessage)
    {
      for (;;)
      {
        paramMessage.printStackTrace();
        paramMessage = null;
      }
      Object localObject = MiAlertDialog.a(MiCommplatform.sLoginActivity);
      ((AlertDialog.Builder)localObject).setTitle("提醒");
      if (TextUtils.isEmpty(paramMessage.getNote()))
      {
        ((AlertDialog.Builder)localObject).setMessage("您尚未安装\"新版小米游戏插件\"，安装并给予授权后可用于完整的登录以及支付，并保障账号安全。");
        label75:
        ((AlertDialog.Builder)localObject).setCancelable(false);
        ((AlertDialog.Builder)localObject).setPositiveButton("确定", new az(this, localContext, paramMessage));
        if (paramMessage.getForce()) {
          break label200;
        }
        ((AlertDialog.Builder)localObject).setNegativeButton("取消", new ba(this));
      }
      for (;;)
      {
        if ((TextUtils.isEmpty(paramMessage.getGuideLink())) || (TextUtils.isEmpty(paramMessage.getGuideWord()))) {
          break label218;
        }
        ((AlertDialog.Builder)localObject).setNeutralButton(paramMessage.getGuideWord(), null);
        localObject = ((AlertDialog.Builder)localObject).create();
        ((AlertDialog)localObject).show();
        if (((AlertDialog)localObject).getButton(-3) == null) {
          break;
        }
        ((AlertDialog)localObject).getButton(-3).setOnClickListener(new bc(this, paramMessage, localContext));
        return;
        ((AlertDialog.Builder)localObject).setMessage(paramMessage.getNote());
        break label75;
        label200:
        ((AlertDialog.Builder)localObject).setNegativeButton("退出游戏", new bb(this));
      }
      label218:
      ((AlertDialog.Builder)localObject).show();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ServiceUpdateHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */