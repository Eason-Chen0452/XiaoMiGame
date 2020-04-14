package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.io.HttpUtils;
import cn.com.wali.basetool.io.QHttpRequest;
import cn.com.wali.basetool.io.QHttpRequest.RequestMethod;
import cn.com.wali.basetool.io.QHttpResponse;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.AESEncryption;
import cn.com.wali.basetool.utils.URLBase64;
import com.wali.gamecenter.report.utils.ZSIMInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.utils.ChannelPreference;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.TokenUtils;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import com.xiaomi.hy.dj.model.ServiceToken;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import org.json.JSONObject;

public class MessageRequestCreateUnifiedOrder
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  
  public MessageRequestCreateUnifiedOrder(Context paramContext, String paramString1, String paramString2, MiBuyInfo paramMiBuyInfo)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    if (!TextUtils.isEmpty(paramMiBuyInfo.getProductCode()))
    {
      this.e = paramMiBuyInfo.getProductCode();
      this.f = paramMiBuyInfo.getCount();
      this.d = "-1";
    }
    for (;;)
    {
      this.g = paramMiBuyInfo.getCpOrderId();
      this.h = paramMiBuyInfo.getCpUserInfo();
      return;
      this.d = String.valueOf(paramMiBuyInfo.getAmount() * 100);
      this.e = "-1";
      this.f = "1";
    }
  }
  
  public final String a(String paramString)
  {
    Object localObject2 = TokenUtils.b(this.a);
    if (localObject2 == null) {
      return "";
    }
    Object localObject1 = "";
    Object localObject3 = new HashMap();
    ((Map)localObject3).put("imei", b.j);
    ((Map)localObject3).put("imsi", b.o);
    try
    {
      ((Map)localObject3).put("mac", ZSIMInfo.getMacAddress(this.a));
      ((Map)localObject3).put("ua", j.a());
      ((Map)localObject3).put("clientType", "android");
      try
      {
        ((Map)localObject3).put("carrierInfo", ZSIMInfo.getSIMOperator(this.a));
        ((Map)localObject3).put("channelId", b.f(this.a));
        ((Map)localObject3).put("sdkVersion", "SDK_MI_SP_3.1.2");
        ((Map)localObject3).put("nonceStr", UUID.randomUUID().toString());
        ((Map)localObject3).put("timeStamp", System.currentTimeMillis());
        ((Map)localObject3).put("publishChannel", "mi");
        ((Map)localObject3).put("devAppId", this.b);
        ((Map)localObject3).put("productCode", this.e);
        ((Map)localObject3).put("quantity", this.f);
        ((Map)localObject3).put("feeValue", this.d);
        ((Map)localObject3).put("cpOrderId", this.g);
        ((Map)localObject3).put("cpUserInfo", this.h);
        ((Map)localObject3).put("currentChannel", b.f(this.a));
        ((Map)localObject3).put("imeiMD5", b.m);
        ((Map)localObject3).put("firstChannel", ChannelPreference.a(this.a, "channel"));
        ((Map)localObject3).put("oaid", b.r);
        if (TextUtils.isEmpty(paramString)) {
          ((Map)localObject3).put("paymentList", HyUtils.a(new String[] { "WXWAP", "ALIPAY" }));
        }
        for (;;)
        {
          ((Map)localObject3).put("openId", ((ServiceToken)localObject2).getOpenId());
          try
          {
            paramString = AESEncryption.a("38464B6C45486561724D415964687A61");
            localObject3 = new JSONObject((Map)localObject3);
            if (Logger.a) {
              Logger.d("milink request :(" + ((JSONObject)localObject3).toString());
            }
            paramString = URLBase64.a(AESEncryption.a(((JSONObject)localObject3).toString(), paramString));
            localObject1 = new HashMap();
            ((Map)localObject1).put("session", ((ServiceToken)localObject2).getSession());
            ((Map)localObject1).put("uid", ((ServiceToken)localObject2).getUid());
            ((Map)localObject1).put("p", paramString);
          }
          catch (Exception paramString)
          {
            try
            {
              paramString = HmacSHA1Encryption.a(HyUtils.a((Map)localObject1) + "&uri=/order-manager/order/v3/createUnifiedOrder", this.c + "&key");
              ((Map)localObject1).put("sign", paramString);
              paramString = new StringBuilder();
              localObject1 = ((Map)localObject1).entrySet().iterator();
              while (((Iterator)localObject1).hasNext())
              {
                localObject2 = (Map.Entry)((Iterator)localObject1).next();
                paramString.append((String)((Map.Entry)localObject2).getKey() + "=" + (String)((Map.Entry)localObject2).getValue() + "&");
              }
              ((Map)localObject3).put("paymentList", HyUtils.a(new String[] { paramString }));
              continue;
              paramString = paramString;
              paramString.printStackTrace();
              paramString = (String)localObject1;
            }
            catch (Exception paramString)
            {
              for (;;)
              {
                paramString.printStackTrace();
                paramString = "";
              }
              paramString.substring(0, paramString.length() - 2);
              paramString = QHttpRequest.a("https://mis.g.mi.com/order-manager/order/v3/createUnifiedOrder", QHttpRequest.RequestMethod.POST, paramString.toString().getBytes(), null, false);
              try
              {
                paramString = HttpUtils.a(this.a, paramString);
                if (paramString == null) {
                  return "";
                }
              }
              catch (Exception paramString)
              {
                paramString.printStackTrace();
                return "";
              }
              paramString = paramString.a();
              try
              {
                localObject3 = new JSONObject(new String(URLBase64.a(new String(paramString)), "UTF-8"));
                paramString = ((JSONObject)localObject3).optString("sign");
                localObject1 = ((JSONObject)localObject3).optString("data");
                localObject2 = ((JSONObject)localObject3).optString("errorMsg");
                localObject3 = ((JSONObject)localObject3).optString("errcode");
                HashMap localHashMap = new HashMap();
                localHashMap.put("errcode", localObject3);
                localHashMap.put("errorMsg", localObject2);
                localHashMap.put("data", localObject1);
                localObject2 = HmacSHA1Encryption.a(HyUtils.a(localHashMap) + "&uri=/order-manager/order/v3/createUnifiedOrder", this.c + "&key");
                if ((((String)localObject2).equals(paramString)) && (((String)localObject3).equals("200")))
                {
                  paramString = new String(AESEncryption.c(URLBase64.a((String)localObject1), AESEncryption.a("38464B6C45486561724D415964687A61")), "UTF-8");
                  return paramString;
                }
              }
              catch (Exception paramString)
              {
                paramString.printStackTrace();
                return "";
              }
              if ((((String)localObject2).equals(paramString)) && (((String)localObject3).equals("5010"))) {
                return "5010";
              }
              return "";
            }
          }
        }
      }
      catch (Exception localException1)
      {
        for (;;) {}
      }
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequestCreateUnifiedOrder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */