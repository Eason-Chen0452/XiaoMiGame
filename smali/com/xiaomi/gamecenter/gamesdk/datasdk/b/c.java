package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.support.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

public final class c
{
  static WeakReference<Activity> a;
  static List<Activity> b = new LinkedList();
  @SuppressLint({"StaticFieldLeak"})
  private static Application c;
  private static a d;
  private static int e = 0;
  private static Application.ActivityLifecycleCallbacks f = new e();
  
  public static Application a()
  {
    if (c != null) {
      return c;
    }
    throw new NullPointerException("u should init first");
  }
  
  public static void a(@NonNull Application paramApplication)
  {
    c = paramApplication;
    paramApplication.registerActivityLifecycleCallbacks(f);
  }
  
  public static void a(a parama)
  {
    d = parama;
  }
  
  public static abstract interface a {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */