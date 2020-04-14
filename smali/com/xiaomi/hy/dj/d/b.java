package com.xiaomi.hy.dj.d;

import android.content.Context;
import android.text.TextUtils;
import com.android.volley.RequestQueue;
import com.xiaomi.hy.dj.f.i;
import com.xiaomi.hy.dj.f.j;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.f.l;
import com.xiaomi.hy.dj.f.m;
import com.xiaomi.hy.dj.f.n;
import com.xiaomi.hy.dj.f.o;
import com.xiaomi.hy.dj.model.AppInfo;
import com.xiaomi.hy.dj.model.ServiceToken;
import com.xiaomi.hy.dj.model.TokenManager;
import com.xiaomi.hy.dj.purchase.FeeCodePurchase;
import com.xiaomi.hy.dj.purchase.FeePurchase;
import com.xiaomi.hy.dj.purchase.OrderPurchase;
import com.xiaomi.hy.dj.purchase.Purchase;
import com.xiaomi.hy.dj.purchase.RepeatPurchase;
import com.xiaomi.hy.dj.purchase.SZFOrderPurchase;
import com.xiaomi.hy.dj.purchase.UnrepeatPurchase;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private Purchase a;
  private Context b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private a n;
  private String o;
  
  public b(Context paramContext, AppInfo paramAppInfo, Purchase paramPurchase)
  {
    this.b = paramContext;
    this.a = paramPurchase;
    this.c = paramAppInfo.getAppid();
    this.d = paramAppInfo.getAppkey();
    this.o = Arrays.toString(paramAppInfo.getPaymentList());
    if ((paramPurchase instanceof UnrepeatPurchase))
    {
      this.e = ((UnrepeatPurchase)paramPurchase).getChargeCode();
      if (TextUtils.isEmpty(this.e)) {
        throw new IllegalArgumentException("计费代码不能为空");
      }
      this.f = "1";
    }
    if ((paramPurchase instanceof RepeatPurchase))
    {
      this.e = ((RepeatPurchase)paramPurchase).getChargeCode();
      this.f = ((RepeatPurchase)paramPurchase).getAmout();
      if (TextUtils.isEmpty(this.e)) {
        throw new IllegalArgumentException("计费代码不能为空");
      }
      if (TextUtils.isEmpty(this.f)) {
        this.f = "1";
      }
    }
    if ((paramPurchase instanceof FeePurchase))
    {
      this.g = ((FeePurchase)paramPurchase).getFeeValue();
      this.i = ((FeePurchase)paramPurchase).getDisplayName();
      if (TextUtils.isEmpty(this.g)) {
        throw new IllegalArgumentException("金额不能为空");
      }
      this.e = "-1";
    }
    for (;;)
    {
      if ((paramPurchase instanceof FeeCodePurchase))
      {
        paramContext = (FeeCodePurchase)paramPurchase;
        this.g = paramContext.getFeeValue();
        this.h = paramContext.getCpOrderId();
        this.e = paramContext.getChargeCode();
        if (TextUtils.isEmpty(this.f)) {
          this.f = "1";
        }
      }
      if ((paramPurchase instanceof OrderPurchase))
      {
        paramContext = (OrderPurchase)paramPurchase;
        this.g = paramContext.getFeeValue();
        this.i = paramContext.getDisplayName();
        this.h = paramContext.getMiOrderId();
      }
      if ((paramPurchase instanceof SZFOrderPurchase))
      {
        paramContext = (SZFOrderPurchase)paramPurchase;
        this.j = paramContext.getCardNo();
        this.k = paramContext.getCardPwd();
        this.l = paramContext.getCardType();
        this.m = paramContext.getCardMoney();
      }
      return;
      this.g = "-1";
    }
  }
  
  public void a()
  {
    String str1 = i.a(this.b);
    String str2 = o.a().b();
    com.xiaomi.hy.dj.a.b.a("https://hysdk.game.xiaomi.com/fpassport/loginGuest", this.c, str2, str1, new c(this));
  }
  
  public void a(a parama)
  {
    this.n = parama;
  }
  
  public void a(String paramString)
  {
    localObject1 = "";
    localObject2 = com.xiaomi.hy.dj.a.b.b(this.b);
    ((Map)localObject2).put("devAppId", this.c);
    ((Map)localObject2).put("openId", TokenManager.getInstance().getToken(this.b).getOpenId());
    ((Map)localObject2).put("payment", paramString);
    ((Map)localObject2).put("orderId", this.h);
    ((Map)localObject2).put("amount", this.g);
    ((Map)localObject2).put("displayName", this.i);
    ((Map)localObject2).put("tradeType", "WXMWEB");
    if ("SZFPAY".equals(paramString))
    {
      ((Map)localObject2).put("cardNo", this.j);
      ((Map)localObject2).put("cardPwd", this.k);
      ((Map)localObject2).put("cardType", this.l);
      ((Map)localObject2).put("cardMoney", this.m);
    }
    try
    {
      byte[] arrayOfByte = com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61");
      localObject2 = n.a(com.xiaomi.hy.dj.f.a.a(new JSONObject((Map)localObject2).toString(), arrayOfByte));
      localObject1 = localObject2;
    }
    catch (Exception localException2)
    {
      try
      {
        for (;;)
        {
          localObject1 = k.a((Map)localObject2) + "&uri=/order-manager/order/v3/getTransactionData";
          com.xiaomi.hy.dj.b.a.e("signString", (String)localObject1);
          com.xiaomi.hy.dj.b.a.e("appkey", this.d);
          localObject1 = j.a((String)localObject1, this.d + "&key");
          ((Map)localObject2).put("sign", localObject1);
          com.xiaomi.hy.dj.a.b.b("http://mis.g.mi.com/order-manager/order/v3/getTransactionData", (Map)localObject2, new f(this, paramString));
          return;
          localException2 = localException2;
          localException2.printStackTrace();
        }
        localException2.put("uid", TokenManager.getInstance().getToken(this.b).getOpenId());
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          localException1.printStackTrace();
          String str = "";
        }
      }
    }
    localObject2 = new HashMap();
    ((Map)localObject2).put("session", TokenManager.getInstance().getToken(this.b).getSession());
    if (!TextUtils.isEmpty(TokenManager.getInstance().getToken(this.b).getUid()))
    {
      ((Map)localObject2).put("uid", TokenManager.getInstance().getToken(this.b).getUid());
      ((Map)localObject2).put("p", localObject1);
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    Object localObject = "";
    Map localMap = com.xiaomi.hy.dj.a.b.b(this.b);
    localMap.put("devAppId", this.c);
    localMap.put("productCode", this.e);
    localMap.put("quantity", this.f);
    localMap.put("feeValue", this.g);
    localMap.put("goodsName", this.i);
    localMap.put("cpOrderId", this.a.getCpOrderId());
    localMap.put("cpUserInfo", this.a.getCpUserInfo());
    localMap.put("paymentList", k.a(paramArrayOfString));
    localMap.put("openId", TokenManager.getInstance().getToken(this.b).getOpenId());
    String str = com.xiaomi.hy.dj.f.c.a(this.b);
    if (!TextUtils.isEmpty(str)) {
      paramArrayOfString = new JSONObject();
    }
    try
    {
      paramArrayOfString.put("xiaomiId", str);
      localMap.put("userMark", paramArrayOfString.toString());
    }
    catch (JSONException paramArrayOfString)
    {
      try
      {
        paramArrayOfString = com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61");
        paramArrayOfString = n.a(com.xiaomi.hy.dj.f.a.a(new JSONObject(localMap).toString(), paramArrayOfString));
        localObject = new HashMap();
        ((Map)localObject).put("session", TokenManager.getInstance().getToken(this.b).getSession());
        if (!TextUtils.isEmpty(TokenManager.getInstance().getToken(this.b).getUid()))
        {
          ((Map)localObject).put("uid", TokenManager.getInstance().getToken(this.b).getUid());
          ((Map)localObject).put("p", paramArrayOfString);
        }
      }
      catch (Exception paramArrayOfString)
      {
        try
        {
          for (;;)
          {
            paramArrayOfString = k.a((Map)localObject) + "&uri=/order-manager/order/v3/createUnifiedOrder";
            com.xiaomi.hy.dj.b.a.e("signString", paramArrayOfString);
            com.xiaomi.hy.dj.b.a.e("appkey", this.d);
            paramArrayOfString = j.a(paramArrayOfString, this.d + "&key");
            ((Map)localObject).put("sign", paramArrayOfString);
            com.xiaomi.hy.dj.a.b.b("http://mis.g.mi.com/order-manager/order/v3/createUnifiedOrder", (Map)localObject, new e(this));
            return;
            localJSONException = localJSONException;
            localJSONException.printStackTrace();
            continue;
            paramArrayOfString = paramArrayOfString;
            paramArrayOfString.printStackTrace();
            paramArrayOfString = (String[])localObject;
          }
          ((Map)localObject).put("uid", TokenManager.getInstance().getToken(this.b).getOpenId());
        }
        catch (Exception paramArrayOfString)
        {
          for (;;)
          {
            paramArrayOfString.printStackTrace();
            paramArrayOfString = "";
          }
        }
      }
    }
  }
  
  public void b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("pid", "7010");
    String str = TokenManager.getInstance().getToken(this.b).getUid();
    if (!TextUtils.isEmpty(str)) {
      localHashMap.put("uid", str);
    }
    for (;;)
    {
      localHashMap.put("session", TokenManager.getInstance().getToken(this.b).getSession());
      localHashMap.put("actionType", "spay");
      localHashMap.put("appId", this.c);
      localHashMap.put("nonce", UUID.randomUUID().toString());
      localHashMap.put("ua", m.d(this.b));
      localHashMap.put("ver", "SDK_VISITOR_DJPAY_1.1.6");
      localHashMap.put("sign", l.c((k.a(localHashMap) + "&key=lDhModTw8IufDtiE").getBytes()));
      com.xiaomi.hy.dj.a.b.b("https://hysdk.game.xiaomi.com/rn/verify", localHashMap, new d(this));
      return;
      localHashMap.put("uid", TokenManager.getInstance().getToken(this.b).getOpenId());
    }
  }
  
  public void c()
  {
    localObject1 = "";
    localObject2 = com.xiaomi.hy.dj.a.b.b(this.b);
    ((Map)localObject2).put("devAppId", this.c);
    ((Map)localObject2).put("openId", TokenManager.getInstance().getToken(this.b).getOpenId());
    ((Map)localObject2).put("orderId", this.h);
    try
    {
      byte[] arrayOfByte = com.xiaomi.hy.dj.f.a.a("38464B6C45486561724D415964687A61");
      localObject2 = n.a(com.xiaomi.hy.dj.f.a.a(new JSONObject((Map)localObject2).toString(), arrayOfByte));
      localObject1 = localObject2;
    }
    catch (Exception localException2)
    {
      try
      {
        for (;;)
        {
          localObject1 = k.a((Map)localObject2) + "&uri=/order-manager/order/v3/queryReceiptStatus";
          com.xiaomi.hy.dj.b.a.e("signString", (String)localObject1);
          com.xiaomi.hy.dj.b.a.e("appkey", this.d);
          localObject1 = j.a((String)localObject1, this.d + "&key");
          ((Map)localObject2).put("sign", localObject1);
          com.xiaomi.hy.dj.a.b.b("http://mis.g.mi.com/order-manager/order/v3/queryReceiptStatus", (Map)localObject2, new g(this));
          return;
          localException2 = localException2;
          localException2.printStackTrace();
        }
        localException2.put("uid", TokenManager.getInstance().getToken(this.b).getOpenId());
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          localException1.printStackTrace();
          String str = "";
        }
      }
    }
    localObject2 = new HashMap();
    ((Map)localObject2).put("session", TokenManager.getInstance().getToken(this.b).getSession());
    if (!TextUtils.isEmpty(TokenManager.getInstance().getToken(this.b).getUid()))
    {
      ((Map)localObject2).put("uid", TokenManager.getInstance().getToken(this.b).getUid());
      ((Map)localObject2).put("p", localObject1);
    }
  }
  
  public void d()
  {
    com.xiaomi.hy.dj.a.b.a.cancelAll(com.xiaomi.hy.dj.a.b.class);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */