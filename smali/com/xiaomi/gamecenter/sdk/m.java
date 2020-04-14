package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.utils.n.a;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.SdkType;

final class m
  implements n.a
{
  m(MiCommplatform paramMiCommplatform, Context paramContext, MiAppInfo paramMiAppInfo, String paramString) {}
  
  public final void a()
  {
    GeneralStatInfo.a(this.a, this.b.getAppId(), NoticeConfigProtos.SdkType.MIGAME.getNumber(), this.c);
  }
  
  public final void b()
  {
    GeneralStatInfo.a(this.a, this.b.getAppId(), NoticeConfigProtos.SdkType.MIGAME.getNumber(), this.c);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */