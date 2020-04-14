package com.xiaomi.gamecenter.sdk.ui.mifloat.message;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.a;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.internal.ai;

public class d
{
  private static d a;
  private a b = new a((byte)0);
  private c c;
  
  public static d a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new d();
      }
      return a;
    }
    finally {}
  }
  
  public final void a(Activity paramActivity)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction(paramActivity.getPackageName() + ".jar.mifloat.message");
    paramActivity.registerReceiver(this.b, localIntentFilter);
    MiMsgManager.a().a(paramActivity);
  }
  
  public final void a(Context paramContext)
  {
    paramContext.unregisterReceiver(this.b);
  }
  
  public final void a(c paramc)
  {
    this.c = paramc;
  }
  
  private final class a
    extends BroadcastReceiver
  {
    private a() {}
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      Object localObject = null;
      if (paramIntent == null) {
        break label7;
      }
      label7:
      while (!TextUtils.equals(paramIntent.getAction(), paramContext.getPackageName() + ".jar.mifloat.message")) {
        return;
      }
      String str = paramIntent.getStringExtra("broadcast_type");
      paramContext = paramIntent.getStringExtra("broadcast_messgae");
      if (!TextUtils.isEmpty(paramContext)) {}
      for (paramContext = new String(a.a(paramContext));; paramContext = null)
      {
        Logger.a("MiGameSDK.SDKMessageManager", "type:" + str + "，message:" + paramContext);
        int i = -1;
        switch (str.hashCode())
        {
        default: 
          switch (i)
          {
          default: 
            return;
          case 0: 
          case 1: 
          case 2: 
            label172:
            paramIntent = (Intent)localObject;
            if (paramContext == null) {}
            break;
          }
          break;
        }
        try
        {
          paramContext = new Gson().a(paramContext, MiMsgEntity.class);
          paramIntent = (MiMsgEntity)ai.a(MiMsgEntity.class).cast(paramContext);
          if ((d.a(d.this) == null) || (paramIntent == null)) {
            break label7;
          }
          d.a(d.this).a(paramIntent);
          return;
          if (!str.equals("redpoint")) {
            break label172;
          }
          i = 0;
          break label172;
          if (!str.equals("marquee_message")) {
            break label172;
          }
          i = 1;
          break label172;
          if (!str.equals("point_marquee_message")) {
            break label172;
          }
          i = 2;
          break label172;
          if (!str.equals("page_close")) {
            break label172;
          }
          i = 3;
          break label172;
          if (!str.equals("page_open")) {
            break label172;
          }
          i = 4;
          break label172;
          if (!str.equals("account_error")) {
            break label172;
          }
          i = 5;
        }
        catch (Throwable paramContext)
        {
          for (;;)
          {
            Logger.a("MiGameSDK.SDKMessageManager", "", paramContext);
            paramIntent = (Intent)localObject;
          }
        }
        if (d.a(d.this) == null) {
          break label7;
        }
        d.a(d.this).a();
        return;
        if (d.a(d.this) == null) {
          break;
        }
        d.a(d.this).b();
        return;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\message\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */