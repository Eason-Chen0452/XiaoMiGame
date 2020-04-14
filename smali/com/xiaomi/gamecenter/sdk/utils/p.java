package com.xiaomi.gamecenter.sdk.utils;

import android.app.AlertDialog.Builder;
import android.content.Context;
import com.xiaomi.gamecenter.sdk.ui.MiAlertDialog;

public final class p
{
  public static void a(Context paramContext)
  {
    MiAlertDialog.a(paramContext).setTitle("权限未授予").setMessage("为了帐号风险控制请在-应用设置-权限-中，允许APP使用获取手机信息、访问手机账户以及读写手机存储权限").setPositiveButton("立即开启", new q(paramContext)).setCancelable(false).show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */