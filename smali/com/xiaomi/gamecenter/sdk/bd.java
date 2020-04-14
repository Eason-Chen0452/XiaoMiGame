package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class bd
{
  private static bd a;
  private Activity b;
  private WeakReference<Activity> c;
  private List<String> d;
  private IGameCenterSDK e;
  private b f = null;
  private List<a> g = new ArrayList();
  
  public static bd a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new bd();
      }
      return a;
    }
    finally {}
  }
  
  private static List<String> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    paramContext = paramContext.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
    while (paramContext.hasNext()) {
      localArrayList.add(((ResolveInfo)paramContext.next()).activityInfo.name);
    }
    return localArrayList;
  }
  
  public final void a(Activity paramActivity)
  {
    this.b = paramActivity;
  }
  
  public final void a(Application paramApplication)
  {
    if (paramApplication == null) {}
    for (;;)
    {
      return;
      String str;
      Intent localIntent;
      label65:
      try
      {
        str = paramApplication.getPackageName();
      }
      finally {}
      try
      {
        if (this.f == null) {
          this.f = new b(paramApplication);
        }
        localIntent = new Intent("com.xiaomi.gamecenter.sdk.service");
        localIntent.setPackage("com.xiaomi.gamecenter.sdk.service");
        paramApplication.getApplicationContext().bindService(localIntent, this.f, 1);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        break label65;
      }
      this.d = a(paramApplication);
      paramApplication.registerActivityLifecycleCallbacks(new be(this, str));
    }
  }
  
  public final void a(a parama)
  {
    if (parama == null) {}
    for (;;)
    {
      return;
      try
      {
        if (this.g.contains(parama)) {
          continue;
        }
        this.g.add(parama);
      }
      finally {}
    }
  }
  
  public final Activity b()
  {
    return this.b;
  }
  
  public final boolean b(Activity paramActivity)
  {
    if (paramActivity == null) {}
    while ((this.b == null) || ((!this.b.equals(paramActivity)) && (!TextUtils.equals(this.b.getLocalClassName(), paramActivity.getLocalClassName())))) {
      return false;
    }
    return true;
  }
  
  public static abstract interface a
  {
    public abstract void a(Activity paramActivity);
    
    public abstract void b(Activity paramActivity);
    
    public abstract void c(Activity paramActivity);
  }
  
  private final class b
    implements ServiceConnection
  {
    private Context b;
    
    b(Context paramContext)
    {
      this.b = paramContext;
    }
    
    public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        bd.a(bd.this, IGameCenterSDK.Stub.asInterface(paramIBinder));
        return;
      }
      catch (Exception paramComponentName)
      {
        paramComponentName.printStackTrace();
      }
    }
    
    public final void onServiceDisconnected(ComponentName paramComponentName)
    {
      bd.a(bd.this, null);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */