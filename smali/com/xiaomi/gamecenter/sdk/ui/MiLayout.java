package com.xiaomi.gamecenter.sdk.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public abstract class MiLayout
  extends RelativeLayout
{
  protected static int d;
  protected static int e;
  public static float f;
  public static DisplayMetrics g;
  protected Context a;
  protected RelativeLayout b;
  protected RelativeLayout c;
  protected MiAppInfo h;
  private Intent i;
  private ActionTransfor.DataAction j;
  
  public MiLayout(Context paramContext, Intent paramIntent)
  {
    super(paramContext);
    ((MiActivity)paramContext).getWindow().setSoftInputMode(3);
    DisplayMetrics localDisplayMetrics = paramContext.getApplicationContext().getResources().getDisplayMetrics();
    g = localDisplayMetrics;
    f = localDisplayMetrics.density;
    this.i = paramIntent;
    if (paramIntent.getExtras() != null)
    {
      paramIntent = paramIntent.getExtras().getBundle("action_bundle");
      if (paramIntent != null) {
        this.j = ((ActionTransfor.DataAction)paramIntent.getParcelable("action_request"));
      }
    }
    this.h = MiCommplatform.getInstance().getMiAppInfo();
    setId(hashCode());
    this.a = paramContext;
    d = ((MiActivity)paramContext).getWindowManager().getDefaultDisplay().getWidth();
    e = ((MiActivity)paramContext).getWindowManager().getDefaultDisplay().getHeight();
    this.b = new RelativeLayout(paramContext);
    this.b.setBackgroundColor(-1184275);
    addView(this.b, b());
    this.c = new RelativeLayout(paramContext);
    this.c.setId(this.c.hashCode());
    this.c.setFocusable(true);
    this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    this.c.setGravity(16);
    this.c.setBackgroundDrawable(paramContext.getResources().getDrawable(ResourceUtils.c(paramContext, "mio_img_title")));
    c();
    this.b.addView(this.c, new RelativeLayout.LayoutParams(-1, a(76)));
    paramContext = new RelativeLayout.LayoutParams(-1, -1);
    paramContext.addRule(13);
    paramContext.addRule(3, this.c.hashCode());
    this.b.addView(d(), paramContext);
  }
  
  public static int a(int paramInt)
  {
    return (int)(f * (float)(paramInt / 1.5D));
  }
  
  public static void a(Context paramContext)
  {
    ((Activity)paramContext).finish();
    ((Activity)paramContext).overridePendingTransition(0, 0);
  }
  
  protected static boolean a()
  {
    return true;
  }
  
  public static int b(int paramInt)
  {
    if (f >= 2.0F) {
      return (int)(f * (paramInt / 2));
    }
    return (int)(f * (float)(paramInt / 1.5D / 1.5D));
  }
  
  protected final void a(ActionTransfor.ActionResult paramActionResult, int paramInt)
  {
    if (this.j == null) {
      return;
    }
    this.j.b = paramActionResult;
    this.j.d = paramInt;
    ActionTransfor.a(this.j);
  }
  
  protected RelativeLayout.LayoutParams b()
  {
    return new RelativeLayout.LayoutParams(-1, -1);
  }
  
  protected abstract void c();
  
  protected abstract View d();
  
  protected abstract void e();
  
  protected abstract void f();
  
  protected abstract void g();
  
  public abstract void h();
  
  protected final ActionTransfor.DataAction i()
  {
    return this.j;
  }
  
  public abstract boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */