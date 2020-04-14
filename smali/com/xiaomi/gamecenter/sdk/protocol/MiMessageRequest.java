package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import cn.com.wali.basetool.utils.MD5;
import java.util.Calendar;
import java.util.UUID;

abstract class MiMessageRequest
  extends MessageRequest
{
  public MiMessageRequest(Context paramContext, b paramb, MessageMethod paramMessageMethod, boolean paramBoolean)
  {
    super(paramb, paramMessageMethod);
    if (!paramBoolean) {
      a(ProDefine.g, MD5.a(UUID.randomUUID().toString().getBytes()));
    }
    a(ProDefine.h, String.valueOf(Calendar.getInstance().getTimeInMillis()));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MiMessageRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */