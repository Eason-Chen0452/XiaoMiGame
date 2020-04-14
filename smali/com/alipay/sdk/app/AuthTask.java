package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.e.a;
import com.alipay.sdk.util.j;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class AuthTask
{
  static final Object a = e.class;
  private static final int b = 73;
  private Activity c;
  private com.alipay.sdk.widget.a d;
  
  public AuthTask(Activity paramActivity)
  {
    this.c = paramActivity;
    com.alipay.sdk.sys.b localb = com.alipay.sdk.sys.b.a();
    Activity localActivity = this.c;
    c.a();
    localb.a(localActivity);
    com.alipay.sdk.app.statistic.a.a(paramActivity);
    this.d = new com.alipay.sdk.widget.a(paramActivity, "去支付宝授权");
  }
  
  private e.a a()
  {
    return new a(this);
  }
  
  private String a(Activity paramActivity, String paramString)
  {
    String str = new com.alipay.sdk.sys.a(this.c).a(paramString);
    if (a(paramActivity))
    {
      paramString = new e(paramActivity, new a(this)).a(str);
      if (TextUtils.equals(paramString, "failed")) {
        paramActivity = b(paramActivity, str);
      }
      do
      {
        return paramActivity;
        paramActivity = paramString;
      } while (!TextUtils.isEmpty(paramString));
      return h.a();
    }
    return b(paramActivity, str);
  }
  
  private String a(com.alipay.sdk.protocol.b arg1)
  {
    Object localObject1 = ???.b;
    ??? = new Bundle();
    ???.putString("url", localObject1[0]);
    localObject1 = new Intent(this.c, H5AuthActivity.class);
    ((Intent)localObject1).putExtras(???);
    this.c.startActivity((Intent)localObject1);
    synchronized (a)
    {
      try
      {
        a.wait();
        localObject1 = h.a;
        ??? = (com.alipay.sdk.protocol.b)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          ??? = h.a();
        }
        return (String)???;
      }
      catch (InterruptedException localInterruptedException)
      {
        String str = h.a();
        return str;
      }
    }
  }
  
  private static boolean a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.versionCode;
      if (i >= 73) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private String b(Activity paramActivity, String paramString)
  {
    b();
    try
    {
      paramActivity = com.alipay.sdk.protocol.b.a(new com.alipay.sdk.packet.impl.a().a(paramActivity, paramString).a().optJSONObject("form").optJSONObject("onload"));
      c();
      int i = 0;
      while (i < paramActivity.size())
      {
        if (((com.alipay.sdk.protocol.b)paramActivity.get(i)).a == com.alipay.sdk.protocol.a.b)
        {
          paramActivity = a((com.alipay.sdk.protocol.b)paramActivity.get(i));
          return paramActivity;
        }
        i += 1;
      }
      c();
      paramActivity = null;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        paramActivity = i.a(i.d.h);
        com.alipay.sdk.app.statistic.a.a("net", paramString);
        c();
      }
    }
    catch (Throwable paramActivity)
    {
      for (;;)
      {
        com.alipay.sdk.app.statistic.a.a("biz", "H5AuthDataAnalysisError", paramActivity);
        c();
        paramActivity = null;
      }
    }
    finally
    {
      c();
    }
    paramString = paramActivity;
    if (paramActivity == null) {
      paramString = i.a(i.b.h);
    }
    return h.a(paramString.h, paramString.i, "");
  }
  
  private void b()
  {
    if (this.d != null) {
      this.d.a();
    }
  }
  
  private void c()
  {
    if (this.d != null) {
      this.d.b();
    }
  }
  
  public String auth(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        b();
        localObject1 = com.alipay.sdk.sys.b.a();
        localObject4 = this.c;
        c.a();
        ((com.alipay.sdk.sys.b)localObject1).a((Context)localObject4);
        localObject4 = h.a();
        try
        {
          localObject1 = this.c;
          str2 = new com.alipay.sdk.sys.a(this.c).a(paramString);
          if (!a((Context)localObject1)) {
            continue;
          }
          String str1 = new e((Activity)localObject1, new a(this)).a(str2);
          if (TextUtils.equals(str1, "failed")) {
            continue;
          }
          localObject1 = str1;
          if (TextUtils.isEmpty(str1)) {
            localObject1 = h.a();
          }
        }
        catch (Exception localException)
        {
          String str2;
          com.alipay.sdk.data.a.b().a(this.c);
          c();
          com.alipay.sdk.app.statistic.a.a(this.c, paramString);
          Object localObject2 = localObject4;
          continue;
        }
        finally
        {
          com.alipay.sdk.data.a.b().a(this.c);
          c();
          com.alipay.sdk.app.statistic.a.a(this.c, paramString);
        }
        return (String)localObject1;
      }
      finally {}
      Object localObject1 = b((Activity)localObject1, str2);
    }
  }
  
  public Map<String, String> authV2(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = j.a(auth(paramString, paramBoolean));
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\AuthTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */