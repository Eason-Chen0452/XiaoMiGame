package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.io.HttpUtils;
import cn.com.wali.basetool.io.QHttpRequest;
import cn.com.wali.basetool.io.QHttpRequest.RequestMethod;
import cn.com.wali.basetool.io.QHttpResponse;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.MD5;
import com.xiaomi.gamecenter.sdk.utils.ParamEntry;
import com.xiaomi.gamecenter.sdk.utils.SocketTouch;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.h;
import java.util.ArrayList;

public class MessageRequestNewVerifyId
{
  ArrayList<ParamEntry> a = new ArrayList(4);
  private Context b;
  private VerifyType c;
  private String d;
  private String e;
  private String f;
  
  public MessageRequestNewVerifyId(Context paramContext, VerifyType paramVerifyType, String paramString1, String paramString2, String paramString3)
  {
    this.b = paramContext;
    this.c = paramVerifyType;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString1;
  }
  
  public final String a()
  {
    Object localObject;
    if (this.c == null) {
      localObject = "";
    }
    for (;;)
    {
      return (String)localObject;
      localObject = new StringBuilder();
      String str2 = this.c.toString();
      String str3 = SocketTouch.a();
      String str4 = b.n;
      this.a.add(new ParamEntry("pid", "7010"));
      this.a.add(new ParamEntry("uid", this.d));
      this.a.add(new ParamEntry("session", this.e));
      this.a.add(new ParamEntry("actionType", str2));
      this.a.add(new ParamEntry("appId", this.f));
      this.a.add(new ParamEntry("nonce", str3));
      this.a.add(new ParamEntry("ua", str4));
      this.a.add(new ParamEntry("ver", "SDK_MI_SP_3.1.2"));
      str2 = h.a(this.a);
      if (Logger.a) {
        Logger.d("verify param====" + str2 + "&key=lDhModTw8IufDtiE");
      }
      str3 = MD5.a(str2 + "&key=lDhModTw8IufDtiE");
      ((StringBuilder)localObject).append(str2);
      ((StringBuilder)localObject).append("&sign=" + str3);
      if (Logger.a) {
        Logger.d("verifyid request>>>>>" + ((StringBuilder)localObject).toString());
      }
      localObject = QHttpRequest.a("https://hysdk.game.xiaomi.com/rn/verify", QHttpRequest.RequestMethod.POST, ((StringBuilder)localObject).toString().getBytes(), null, false);
      try
      {
        localObject = HttpUtils.a(this.b, (QHttpRequest)localObject);
        if (localObject == null) {
          return "";
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return "";
      }
      try
      {
        String str1 = new String(localException1.a());
        if (Logger.a) {
          Logger.d("verifyid response=" + str1);
        }
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          return "";
        }
      }
      catch (Exception localException2) {}
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequestNewVerifyId.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */