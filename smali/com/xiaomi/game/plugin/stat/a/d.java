package com.xiaomi.game.plugin.stat.a;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig;
import com.xiaomi.game.plugin.stat.c.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class d
{
  private static volatile d c;
  private static Map<String, String> i;
  private static Map<String, String> j;
  private Context a;
  private volatile boolean b = false;
  private String d;
  private ActivityManager e;
  private Stack<ComponentName> f;
  private MiGamePluginStatConfig g;
  private ExecutorService h = Executors.newSingleThreadExecutor();
  
  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put("com.xiaomi.gamecenter.sdk.service", "SDK");
    i.put("com.xiaomi.gamecenter", "游戏中心");
    i.put("com.wali.live", "直播");
    localHashMap = new HashMap();
    j = localHashMap;
    localHashMap.put("com.xiaomi.gamecenter.wxwap.HyWxWappayActivity", "wxwap");
    j.put("com.xiaomi.gamecenter.wxpay.HyWxWappayActivity", "wxpay");
    j.put("com.xiaomi.gamecenter.awpay.HyMixpayActivity", "awpay");
    j.put("com.xiaomi.gamecenter.alipay.HyAlipayActivity", "alipay");
    j.put("com.xiaomi.gamecenter.qqwap.HyQQWappayActivity", "QPAY");
  }
  
  public d(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    this.g = paramMiGamePluginStatConfig;
    this.a = paramMiGamePluginStatConfig.a();
    this.e = ((ActivityManager)this.a.getSystemService("activity"));
    this.f = new Stack();
  }
  
  public static d a()
  {
    if (c == null) {
      throw new IllegalStateException("please HyWxWapPay.init() in application before use this method");
    }
    return c;
  }
  
  public static void a(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    if (c == null) {
      try
      {
        if (c == null) {
          c = new d(paramMiGamePluginStatConfig);
        }
        return;
      }
      finally {}
    }
  }
  
  private void a(String paramString)
  {
    String str = this.g.a().getPackageName();
    if ((TextUtils.isEmpty(str)) || (TextUtils.equals(str, "com.xiaomi.gamecenter")) || (TextUtils.equals(str, "com.xiaomi.gamecenter.sdk.service"))) {
      return;
    }
    this.h.execute(new d.1(this, str, paramString));
  }
  
  private boolean a(ComponentName paramComponentName)
  {
    String str = paramComponentName.getPackageName();
    paramComponentName = paramComponentName.getClassName();
    if ((TextUtils.equals(str, "com.tencent.mm")) && (TextUtils.equals(paramComponentName, "com.tencent.mm.plugin.wallet.pay.ui.WalletPayUI")))
    {
      this.d = "wxpay";
      return true;
    }
    if ((TextUtils.equals(str, "com.eg.android.AlipayGphone")) && (TextUtils.equals(paramComponentName, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity")))
    {
      this.d = "alipay";
      return true;
    }
    if ((TextUtils.equals(str, "com.tencent.mobileqq")) && (TextUtils.equals(paramComponentName, "com.tencent.mobileqq.activity.QQBrowserActivity")))
    {
      this.d = "qpay";
      return true;
    }
    if (this.b) {
      this.b = false;
    }
    return false;
  }
  
  private boolean a(ComponentName paramComponentName1, ComponentName paramComponentName2)
  {
    return (TextUtils.equals(paramComponentName1.getClassName(), paramComponentName2.getClassName())) && (TextUtils.equals(paramComponentName1.getPackageName(), paramComponentName2.getPackageName()));
  }
  
  private boolean c()
  {
    do
    {
      localObject = (ComponentName)this.f.pop();
    } while ((TextUtils.equals(((ComponentName)localObject).getPackageName(), "com.tencent.mm")) || (TextUtils.equals(((ComponentName)localObject).getPackageName(), "com.eg.android.AlipayGphone")) || (TextUtils.equals(((ComponentName)localObject).getPackageName(), "com.tencent.mobileqq")));
    Object localObject = ((ComponentName)localObject).getClassName();
    return j.containsKey(localObject);
  }
  
  private boolean d()
  {
    Iterator localIterator = e().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (j.containsKey(str)) {
        return true;
      }
    }
    return false;
  }
  
  private List<String> e()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Object localObject2 = Class.forName("android.app.ActivityThread");
      Object localObject1 = ((Class)localObject2).getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
      localObject2 = ((Class)localObject2).getDeclaredField("mActivities");
      ((Field)localObject2).setAccessible(true);
      localObject1 = ((Field)localObject2).get(localObject1);
      if ((localObject1 instanceof Map))
      {
        localObject1 = ((Map)localObject1).entrySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = ((Map.Entry)((Iterator)localObject1).next()).getValue();
          Field localField = localObject2.getClass().getDeclaredField("activity");
          localField.setAccessible(true);
          localArrayList.add(((Activity)localField.get(localObject2)).getLocalClassName());
        }
      }
      return localException;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
  }
  
  public void b()
  {
    Object localObject = (ActivityManager.RunningTaskInfo)this.e.getRunningTasks(1).get(0);
    if (!i.containsKey(this.a.getPackageName()))
    {
      ComponentName localComponentName = ((ActivityManager.RunningTaskInfo)localObject).baseActivity;
      if (TextUtils.equals(this.a.getPackageName(), localComponentName.getPackageName()))
      {
        localObject = ((ActivityManager.RunningTaskInfo)localObject).topActivity;
        if (!this.f.isEmpty()) {
          break label85;
        }
        this.f.push(localObject);
      }
    }
    label85:
    label170:
    do
    {
      long l;
      do
      {
        do
        {
          return;
          if (a((ComponentName)localObject, (ComponentName)this.f.peek())) {
            break label170;
          }
          if (!a((ComponentName)localObject)) {
            break;
          }
          l = System.currentTimeMillis();
        } while (this.b);
        this.b = true;
      } while ((c()) || (d()));
      a.b("Report the result");
      a(Long.toString(System.currentTimeMillis() - l));
      return;
      this.f.push(localObject);
      return;
    } while (!this.b);
    this.b = false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */