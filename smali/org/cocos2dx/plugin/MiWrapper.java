package org.cocos2dx.plugin;

import android.app.Activity;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import java.io.PrintStream;
import org.json.JSONObject;

public class MiWrapper
{
  private static JSONObject payInfo;
  private static JSONObject roleInfo;
  
  public static JSONObject getPayInfo(JSONObject paramJSONObject)
  {
    payInfo = paramJSONObject;
    return payInfo;
  }
  
  public static String getPluginVersion()
  {
    return "1.0.1";
  }
  
  public static JSONObject getRoleInfo(JSONObject paramJSONObject)
  {
    roleInfo = paramJSONObject;
    return roleInfo;
  }
  
  public static String getSDKVersion()
  {
    return "3.1.2_12710";
  }
  
  public static void miExit(Activity paramActivity)
  {
    if ((MiCommplatform.getInstance() == null) || (paramActivity == null)) {
      return;
    }
    MiCommplatform.getInstance().miAppExit(paramActivity, new OnExitListner()
    {
      public void onExit(int paramAnonymousInt)
      {
        Log.e("errorCode===", paramAnonymousInt);
        if (paramAnonymousInt == 10001)
        {
          MiWrapper.this.finish();
          System.exit(0);
          Process.killProcess(Process.myPid());
        }
      }
    });
  }
  
  public static void miLogin(Activity paramActivity, final OnLoginProcessListener paramOnLoginProcessListener)
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        MiCommplatform.getInstance().miLogin(MiWrapper.this, paramOnLoginProcessListener);
      }
    });
  }
  
  public static void miPay(Activity paramActivity, OnPayProcessListener paramOnPayProcessListener)
  {
    Object localObject1 = null;
    Object localObject5 = null;
    String str11 = null;
    String str7 = null;
    String str12 = null;
    String str9 = null;
    String str10 = null;
    localObject6 = null;
    String str6 = null;
    int j = 0;
    Object localObject3 = localObject5;
    String str5 = str7;
    localObject2 = str6;
    int i = j;
    String str4 = str10;
    String str3 = str9;
    String str2 = str12;
    String str1 = str11;
    try
    {
      String str8 = payInfo.getString("userInfo");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      String str13 = payInfo.getString("price");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str6 = payInfo.getString("order");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      j = (int)Float.parseFloat(str13);
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      localObject5 = roleInfo.getString("Balance");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str11 = roleInfo.getString("roleVip");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str7 = roleInfo.getString("roleLevel");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str12 = roleInfo.getString("UnionName");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str9 = roleInfo.getString("roleName");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str10 = roleInfo.getString("roleId");
      localObject3 = localObject5;
      str5 = str7;
      localObject2 = str6;
      i = j;
      str4 = str10;
      str3 = str9;
      str2 = str12;
      localObject1 = str8;
      str1 = str11;
      str13 = roleInfo.getString("zoneName");
      localObject2 = str13;
      str1 = str11;
      localObject1 = str8;
      str2 = str12;
      str3 = str9;
      str4 = str10;
      i = j;
      str5 = str7;
      localObject3 = localObject5;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        Object localObject4 = localObject2;
        localObject2 = localObject6;
      }
    }
    System.out.println("hhh price" + i);
    localObject5 = new MiBuyInfo();
    ((MiBuyInfo)localObject5).setCpOrderId(str6);
    ((MiBuyInfo)localObject5).setCpUserInfo((String)localObject1);
    ((MiBuyInfo)localObject5).setAmount(i);
    localObject1 = new Bundle();
    ((Bundle)localObject1).putString("balance", (String)localObject3);
    ((Bundle)localObject1).putString("vip", str1);
    ((Bundle)localObject1).putString("lv", str5);
    ((Bundle)localObject1).putString("partyName", str2);
    ((Bundle)localObject1).putString("roleName", str3);
    ((Bundle)localObject1).putString("roleId", str4);
    ((Bundle)localObject1).putString("serverName", (String)localObject2);
    ((MiBuyInfo)localObject5).setExtraInfo((Bundle)localObject1);
    MiCommplatform.getInstance().miUniPay(paramActivity, (MiBuyInfo)localObject5, paramOnPayProcessListener);
  }
  
  public static void onCreate(Activity paramActivity)
  {
    MiCommplatform.getInstance().onMainActivityCreate(paramActivity);
  }
  
  public static void onDestroy(Activity paramActivity)
  {
    MiCommplatform.getInstance().onMainActivityDestory(paramActivity);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\MiWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */