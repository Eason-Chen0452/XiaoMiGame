package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

final class bc
  implements View.OnClickListener
{
  bc(ServiceUpdateHandler paramServiceUpdateHandler, LoginProto.CheckSdkVersionRsp paramCheckSdkVersionRsp, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    ReporterUtils.getInstance().xmsdkReport(2206);
    paramView = new Intent("android.intent.action.VIEW", Uri.parse(this.a.getGuideLink() + HyUtils.c(this.b)));
    paramView.addFlags(268435456);
    if (paramView.resolveActivity(this.b.getPackageManager()) != null)
    {
      this.b.startActivity(paramView);
      return;
    }
    Toast.makeText(this.b, "需要浏览器才能打开链接", 0).show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */