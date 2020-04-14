package com.xiaomi.gamecenter.sdk;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Button;
import com.xiaomi.gamecenter.sdk.bean.DownloadDialogInfo;
import com.xiaomi.gamecenter.sdk.ui.MiAlertDialog;
import com.xiaomi.gamecenter.sdk.utils.DownloadFileUtils;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import java.util.concurrent.ExecutorService;

public class DownloadHandler
  extends Handler
{
  private ProgressDialog a;
  
  public DownloadHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private static void a(boolean paramBoolean)
  {
    Message localMessage = new Message();
    localMessage.what = 8;
    if (paramBoolean) {
      MiCommplatform.sDownloadHandler.removeMessages(8);
    }
    MiCommplatform.sDownloadHandler.sendMessageDelayed(localMessage, 10000L);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject = MiCommplatform.getInstance().getApplicationContext();
    DownloadFileUtils localDownloadFileUtils;
    DownloadDialogInfo localDownloadDialogInfo2;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  try
                  {
                    DownloadDialogInfo localDownloadDialogInfo1 = (DownloadDialogInfo)paramMessage.obj;
                    localDownloadFileUtils = new DownloadFileUtils(this, localDownloadDialogInfo1);
                    switch (paramMessage.what)
                    {
                    case 0: 
                    case 5: 
                    case 6: 
                    default: 
                      return;
                    }
                  }
                  catch (Exception localException)
                  {
                    for (;;)
                    {
                      localException.printStackTrace();
                      localDownloadDialogInfo2 = null;
                    }
                    a(false);
                    ReporterUtils.getInstance().xmsdkReport(2200);
                    if ((MiCommplatform.sLoginActivity == null) || (localObject == null))
                    {
                      MiCommplatform.miLogin(true);
                      return;
                    }
                    if (Build.VERSION.SDK_INT >= 21) {}
                    for (this.a = new ProgressDialog(MiCommplatform.sLoginActivity, 16974393);; this.a = new ProgressDialog(MiCommplatform.sLoginActivity))
                    {
                      this.a.setProgressStyle(1);
                      this.a.setCancelable(false);
                      this.a.setCanceledOnTouchOutside(false);
                      this.a.setTitle("升级中");
                      this.a.setMessage("下载中...");
                      this.a.setProgressNumberFormat("%1dKB/%2dKB");
                      this.a.setMax((int)(localDownloadDialogInfo2.c() / 1000L));
                      this.a.setButton(-1, "继续登录", new b(this, (Context)localObject, localDownloadFileUtils));
                      this.a.setButton(-2, "退出游戏", new c(this));
                      if ((!TextUtils.isEmpty(localDownloadDialogInfo2.e())) && (!TextUtils.isEmpty(localDownloadDialogInfo2.f()))) {
                        this.a.setButton(-3, localDownloadDialogInfo2.f(), null);
                      }
                      this.a.show();
                      this.a.getButton(-3).setOnClickListener(new d(this, localDownloadDialogInfo2, (Context)localObject));
                      paramMessage = this.a.getButton(-1);
                      localObject = this.a.getButton(-2);
                      if (paramMessage != null) {
                        paramMessage.setEnabled(false);
                      }
                      if (localObject != null) {
                        ((Button)localObject).setVisibility(8);
                      }
                      if (localDownloadDialogInfo2 != null) {
                        break;
                      }
                      MiCommplatform.miLogin(true);
                      return;
                    }
                    HyUtils.a().submit(new e(this, localDownloadFileUtils));
                    return;
                  }
                  paramMessage = this.a.getButton(-2);
                } while (paramMessage == null);
                paramMessage.setVisibility(0);
                return;
              } while (this.a == null);
              int i = paramMessage.arg1;
              a(true);
              this.a.setProgress(i / 1000);
              return;
              removeMessages(8);
              ReporterUtils.getInstance().xmsdkReport(2201);
            } while (this.a == null);
            this.a.setMessage("校验中");
            return;
            ReporterUtils.getInstance().xmsdkReport(2210);
          } while ((this.a == null) || (localObject == null));
          this.a.setProgress(this.a.getMax());
          if (com.xiaomi.gamecenter.sdk.utils.b.c((Context)localObject)) {
            this.a.setMessage("安装中...\n请确认安装成功后点击继续登录");
          }
          for (;;)
          {
            paramMessage = this.a.getButton(-1);
            if (paramMessage == null) {
              break;
            }
            paramMessage.setEnabled(true);
            return;
            this.a.setMessage("安装中...\n请确认安装成功并给予全部权限后点击继续登录");
          }
        } while (this.a == null);
        try
        {
          paramMessage = (String)paramMessage.obj;
          this.a.setProgress(0);
          this.a.setMessage("异常-" + paramMessage);
          return;
        }
        catch (Exception paramMessage)
        {
          for (;;)
          {
            paramMessage.printStackTrace();
            paramMessage = "";
          }
        }
        ReporterUtils.getInstance().xmsdkReport(2202);
      } while (this.a == null);
      this.a.setProgress(0);
      this.a.setMessage("重试过多，不再重试，请重启游戏");
      paramMessage = this.a.getButton(-1);
    } while (paramMessage == null);
    paramMessage.setEnabled(true);
    return;
    if (localDownloadDialogInfo2 == null)
    {
      MiCommplatform.getConfigFromServer();
      MiCommplatform.miLogin(null);
      return;
    }
    paramMessage = MiAlertDialog.a(MiCommplatform.sLoginActivity);
    paramMessage.setTitle("提醒");
    paramMessage.setMessage("");
    if (com.xiaomi.gamecenter.sdk.utils.b.c((Context)localObject))
    {
      paramMessage.setMessage("安装中...\n请确认安装成功后点击继续登录");
      label734:
      paramMessage.setCancelable(false);
      if (!localDownloadDialogInfo2.d()) {
        break label860;
      }
      paramMessage.setNegativeButton("退出游戏", new f(this));
    }
    for (;;)
    {
      if ((!TextUtils.isEmpty(localDownloadDialogInfo2.e())) && (!TextUtils.isEmpty(localDownloadDialogInfo2.f()))) {
        paramMessage.setNeutralButton(localDownloadDialogInfo2.f(), null);
      }
      paramMessage.setPositiveButton("继续登录", new h(this, (Context)localObject, localDownloadFileUtils));
      paramMessage = paramMessage.create();
      paramMessage.show();
      if (paramMessage.getButton(-3) == null) {
        break;
      }
      paramMessage.getButton(-3).setOnClickListener(new i(this, localDownloadDialogInfo2, (Context)localObject));
      return;
      paramMessage.setMessage("安装中...\n请确认安装成功并给予全部权限后点击继续登录");
      break label734;
      label860:
      paramMessage.setNegativeButton("取消", new g(this));
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\DownloadHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */