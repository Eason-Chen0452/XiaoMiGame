package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.io.HttpUtils;
import cn.com.wali.basetool.io.QHttpRequest;
import cn.com.wali.basetool.io.QHttpRequest.RequestMethod;
import cn.com.wali.basetool.io.QHttpResponse;
import com.wali.gamecenter.report.utils.ZSIMInfo;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MessageRequestGetReward
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  public MessageRequestGetReward(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    this.a = paramContext;
    this.b = paramString2;
    this.c = paramString1;
    this.d = String.valueOf(paramInt);
    this.e = paramString3;
  }
  
  public final String a()
  {
    Object localObject5 = new HashMap();
    Object localObject4 = ZSIMInfo.getSha1DeviceID(this.a);
    Object localObject1 = localObject4;
    if (TextUtils.isEmpty((CharSequence)localObject4))
    {
      localObject1 = localObject4;
      if (!TextUtils.isEmpty(b.j)) {
        localObject1 = b.j;
      }
    }
    ((Map)localObject5).put("appId", this.c);
    ((Map)localObject5).put("channelId", b.f(this.a));
    ((Map)localObject5).put("launchFrom", this.b);
    ((Map)localObject5).put("imei", localObject1);
    ((Map)localObject5).put("imsi", ZSIMInfo.getIMSI(this.a));
    try
    {
      ((Map)localObject5).put("ua", URLEncoder.encode(j.a(), "utf-8"));
      ((Map)localObject5).put("mac", ZSIMInfo.getMacAddress(this.a));
      ((Map)localObject5).put("vc", this.d);
      ((Map)localObject5).put("vn", this.e);
      ((Map)localObject5).put("sdkVersion", "SDK_MI_SP_3.1.2");
      localObject1 = new StringBuilder();
      localObject4 = ((Map)localObject5).entrySet().iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = (Map.Entry)((Iterator)localObject4).next();
        ((StringBuilder)localObject1).append((String)((Map.Entry)localObject5).getKey() + "=" + (String)((Map.Entry)localObject5).getValue() + "&");
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
      localUnsupportedEncodingException.substring(0, localUnsupportedEncodingException.length() - 2);
      Object localObject2 = QHttpRequest.a("https://mis.migc.xiaomi.com/api/biz/game/launch", QHttpRequest.RequestMethod.POST, localUnsupportedEncodingException.toString().getBytes(), null, false);
      do
      {
        try
        {
          localObject2 = HttpUtils.a(this.a, (QHttpRequest)localObject2);
          if (localObject2 == null)
          {
            localObject2 = "";
            return (String)localObject2;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return "";
        }
        localObject4 = new String(localException.a());
        Object localObject3 = localObject4;
      } while (!TextUtils.isEmpty((CharSequence)localObject4));
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequestGetReward.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */