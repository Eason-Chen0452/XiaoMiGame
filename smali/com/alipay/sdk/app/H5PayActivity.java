package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.l;

public class H5PayActivity
  extends Activity
{
  private WebView a;
  private WebViewClient b;
  
  public void a()
  {
    try
    {
      synchronized (PayTask.a)
      {
        ???.notify();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void finish()
  {
    a();
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (this.a.canGoBack())
    {
      if (((b)this.b).a)
      {
        i locali = i.a(i.d.h);
        h.a = h.a(locali.h, locali.i, "");
        finish();
      }
      return;
    }
    h.a = h.a();
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      Object localObject = getIntent().getExtras();
      paramBundle = ((Bundle)localObject).getString("url");
      if (!l.b(paramBundle))
      {
        finish();
        return;
      }
      localObject = ((Bundle)localObject).getString("cookie");
      super.requestWindowFeature(1);
      this.a = l.a(this, paramBundle, (String)localObject);
      this.b = new b(this);
      this.a.setWebViewClient(this.b);
      return;
    }
    catch (Exception paramBundle)
    {
      finish();
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.a != null) {
      this.a.removeAllViews();
    }
    try
    {
      this.a.destroy();
      this.a = null;
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\H5PayActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */