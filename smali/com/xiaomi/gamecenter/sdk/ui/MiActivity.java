package com.xiaomi.gamecenter.sdk.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Window;
import com.xiaomi.gamecenter.sdk.ui.actlayout.ViewLoginLayout;
import com.xiaomi.gamecenter.sdk.ui.actlayout.ViewSelectAccount;
import com.xiaomi.gamecenter.sdk.ui.actlayout.ViewSelectLoginMethod;
import com.xiaomi.gamecenter.sdk.utils.p;
import java.lang.reflect.Constructor;
import java.util.HashMap;

public final class MiActivity
  extends Activity
{
  private static HashMap<String, Class<?>> a;
  private MiLayout b;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(MiClassKey.b, ViewSelectAccount.class);
    a.put(MiClassKey.d, ViewLoginLayout.class);
    a.put(MiClassKey.c, ViewSelectLoginMethod.class);
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.b != null) {
      this.b.e();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.b != null) {
      this.b.h();
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    if (getIntent().getBooleanExtra("isDialog", false))
    {
      setTheme(16973827);
      requestWindowFeature(1);
    }
    super.onCreate(paramBundle);
    paramBundle = getIntent().getStringExtra("classKey");
    if (TextUtils.isEmpty(paramBundle))
    {
      finish();
      return;
    }
    this.b = null;
    try
    {
      paramBundle = (Class)a.get(paramBundle);
      if (paramBundle == null) {
        finish();
      }
      this.b = ((MiLayout)paramBundle.getConstructor(new Class[] { Context.class, Intent.class }).newInstance(new Object[] { this, getIntent() }));
      if (this.b != null)
      {
        MiLayout.a();
        getWindow().setFlags(1024, 1024);
      }
      setContentView(this.b);
      return;
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
      finish();
    }
  }
  
  protected final void onDestroy()
  {
    if (this.b != null)
    {
      this.b.g();
      this.b.removeAllViews();
      this.b = null;
    }
    super.onDestroy();
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.b != null)
    {
      if (this.b.onKeyDown(paramInt, paramKeyEvent)) {
        return super.onKeyDown(paramInt, paramKeyEvent);
      }
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return;
    } while ((paramArrayOfInt.length > 0) && (paramArrayOfInt[0] == 0));
    p.a(this);
  }
  
  protected final void onResume()
  {
    if (this.b != null) {
      this.b.f();
    }
    super.onResume();
  }
  
  protected final void onStart()
  {
    getWindow().setWindowAnimations(0);
    super.onStart();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */