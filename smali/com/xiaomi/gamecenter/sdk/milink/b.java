package com.xiaomi.gamecenter.sdk.milink;

import android.text.TextUtils;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.MiLinkException;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import java.net.URLEncoder;

final class b
  implements ResponseListener
{
  b(a parama) {}
  
  public final void onDataSendFailed(int paramInt, String paramString)
  {
    if ((!this.a.isCancelled()) && (!this.a.isDone())) {
      a.a(this.a, new MiLinkException(paramInt, paramString));
    }
    String str2 = "-1";
    String str1 = str2;
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      str1 = URLEncoder.encode(paramString, "UTF-8");
      ReporterUtils.getInstance().xmsdkReport(7526, String.valueOf(paramInt) + "|" + str1);
      return;
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        str1 = str2;
      }
    }
  }
  
  public final void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if ((!this.a.isCancelled()) && (!this.a.isDone()))
    {
      a.a(this.a, paramPacketData);
      if (paramPacketData == null) {
        ReporterUtils.getInstance().xmsdkReport(7524, String.valueOf(paramInt));
      }
      return;
    }
    ReporterUtils.getInstance().xmsdkReport(7525, String.valueOf(paramInt));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */