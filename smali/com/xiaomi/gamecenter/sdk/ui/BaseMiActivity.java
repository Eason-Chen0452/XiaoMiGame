package com.xiaomi.gamecenter.sdk.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public abstract class BaseMiActivity
  extends Activity
{
  protected static int d;
  protected static int e;
  public static float f;
  public static DisplayMetrics g;
  protected Context a;
  protected RelativeLayout b;
  protected RelativeLayout c;
  protected Intent h;
  protected MiAppEntry i;
  
  protected RelativeLayout.LayoutParams a()
  {
    return new RelativeLayout.LayoutParams(-1, -1);
  }
  
  protected abstract View b();
  
  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    Logger.a("MiGameSDK.BaseMiActivity", "onCreate");
    getWindow().setFlags(1024, 1024);
    this.a = this;
    getWindow().setSoftInputMode(3);
    paramBundle = getApplicationContext().getResources().getDisplayMetrics();
    g = paramBundle;
    f = paramBundle.density;
    this.h = getIntent();
    if (this.h.getExtras() != null) {
      this.i = ((MiAppEntry)this.h.getExtras().getParcelable("app"));
    }
    d = getWindowManager().getDefaultDisplay().getWidth();
    e = getWindowManager().getDefaultDisplay().getHeight();
    this.b = new RelativeLayout(this);
    this.b.setBackgroundColor(-1184275);
    this.c = new RelativeLayout(this);
    this.c.setId(this.c.hashCode());
    this.c.setFocusable(true);
    this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    this.c.setGravity(16);
    try
    {
      this.c.setBackgroundResource(ResourceUtils.c(this, "img_title"));
      this.c.setVisibility(8);
      this.b.addView(this.c, new RelativeLayout.LayoutParams(-1, (int)(f * 50.666668F)));
      paramBundle = new RelativeLayout.LayoutParams(-1, -1);
      paramBundle.addRule(13);
      paramBundle.addRule(3, this.c.hashCode());
      this.b.addView(b(), paramBundle);
      setContentView(this.b, a());
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  protected void onStart()
  {
    getWindow().setWindowAnimations(0);
    super.onStart();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\BaseMiActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */