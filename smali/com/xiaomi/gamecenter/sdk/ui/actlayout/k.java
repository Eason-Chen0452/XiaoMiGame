package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.os.Handler;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkAccount;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;

final class k
  implements Runnable
{
  k(ViewSelectAccount paramViewSelectAccount) {}
  
  public final void run()
  {
    PackgeInfoHelper.a();
    AccountType localAccountType = PackgeInfoHelper.a(ViewSelectAccount.g(this.a).getAppId());
    Object localObject = MilinkAccount.a(localAccountType);
    if (localObject == null) {
      localObject = "请稍等";
    }
    for (;;)
    {
      if (ViewSelectAccount.h(this.a) != null) {
        ViewSelectAccount.h(this.a).sendMessage(ViewSelectAccount.h(this.a).obtainMessage(30000, localObject));
      }
      return;
      String str = ((MilinkAccount)localObject).c();
      localObject = ((MilinkAccount)localObject).d();
      if (ViewSelectAccount.h(this.a) != null) {
        ViewSelectAccount.h(this.a).sendMessage(ViewSelectAccount.h(this.a).obtainMessage(40000, localObject));
      }
      localObject = str;
      if (TextUtils.isEmpty(str)) {
        if (localAccountType == AccountType.AccountType_MI) {
          localObject = "小米用户";
        } else if (localAccountType == AccountType.AccountType_QQ) {
          localObject = "QQ用户";
        } else if (localAccountType == AccountType.AccountType_WX) {
          localObject = "微信用户";
        } else {
          localObject = "请稍等";
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */