package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import com.xiaomi.gamecenter.sdk.bean.DownloadDialogInfo;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

final class az
  implements DialogInterface.OnClickListener
{
  az(ServiceUpdateHandler paramServiceUpdateHandler, Context paramContext, LoginProto.CheckSdkVersionRsp paramCheckSdkVersionRsp) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (b.c(this.a))
    {
      paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
      paramDialogInterface.addFlags(268435456);
      this.a.startActivity(paramDialogInterface);
      paramDialogInterface = new Message();
      paramDialogInterface.what = 7;
      paramDialogInterface.obj = new DownloadDialogInfo(this.b);
      MiCommplatform.sDownloadHandler.handleMessage(paramDialogInterface);
      return;
    }
    paramDialogInterface = new Message();
    paramDialogInterface.what = 1;
    paramDialogInterface.obj = new DownloadDialogInfo(this.b);
    MiCommplatform.sDownloadHandler.handleMessage(paramDialogInterface);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */