package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.milink.LoginEvent.OAuthResultEvent;
import com.xiaomi.gamecenter.sdk.milink.LoginForSDK;
import com.xiaomi.gamecenter.sdk.milink.MilinkAccount;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.ActionResult;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.DataAction;
import com.xiaomi.gamecenter.sdk.ui.MiClassKey;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.ui.MiProgressDialog;
import com.xiaomi.gamecenter.sdk.ui.c;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.j;
import com.xiaomi.gamecenter.sdk.web.i;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class ViewLoginLayout
  extends MiLayout
  implements c
{
  private MiAppEntry i;
  private ProgressDialog j;
  private ServiceConnection k = null;
  private Handler l = new a(this, Looper.getMainLooper());
  
  public ViewLoginLayout(Context paramContext, Intent paramIntent)
  {
    super(paramContext, paramIntent);
    if (i() == null)
    {
      a(ActionTransfor.ActionResult.ACTION_OK, -102);
      a(getContext());
    }
    this.i = new MiAppEntry(this.h);
    PackgeInfoHelper.a().a(this.i);
    int m;
    if (!j.a(getContext())) {
      m = n;
    }
    for (;;)
    {
      if (m == 0) {
        j();
      }
      return;
      PackgeInfoHelper.a();
      paramContext = PackgeInfoHelper.a(this.h.getAppId());
      if (AccountType.AccountType_MI == paramContext)
      {
        m = n;
        if (!HyUtils.s.contains("MI")) {}
      }
      else
      {
        label210:
        do
        {
          do
          {
            m = n;
            if (MilinkAccount.a(this.i.getNewAppId()) == null) {
              break;
            }
            ReporterUtils.getInstance().xmsdkReport(2066);
            HyUtils.a().submit(new f(this));
            m = 1;
            break;
            if (AccountType.AccountType_QQ != paramContext) {
              break label210;
            }
          } while (HyUtils.s.contains("QQ"));
          m = n;
          break;
        } while ((AccountType.AccountType_WX != paramContext) || (HyUtils.s.contains("WX")));
        m = n;
      }
    }
  }
  
  /* Error */
  private int a(Activity paramActivity)
  {
    // Byte code:
    //   0: iconst_0
    //   1: newarray <illegal type>
    //   3: astore_2
    //   4: new 160	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction
    //   7: dup
    //   8: invokespecial 162	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:<init>	()V
    //   11: astore_3
    //   12: aload_1
    //   13: getstatic 168	com/xiaomi/gamecenter/sdk/ui/MiClassKey:b	Ljava/lang/String;
    //   16: aload_3
    //   17: new 170	com/xiaomi/gamecenter/sdk/ui/actlayout/g
    //   20: dup
    //   21: aload_0
    //   22: aload_3
    //   23: aload_2
    //   24: invokespecial 173	com/xiaomi/gamecenter/sdk/ui/actlayout/g:<init>	(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V
    //   27: invokestatic 178	com/xiaomi/gamecenter/sdk/ui/ActionTransfor:a	(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V
    //   30: aload_2
    //   31: monitorenter
    //   32: aload_2
    //   33: invokevirtual 183	java/lang/Object:wait	()V
    //   36: aload_2
    //   37: monitorexit
    //   38: aload_3
    //   39: getfield 187	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   42: ireturn
    //   43: astore_1
    //   44: aload_2
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: goto -13 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	ViewLoginLayout
    //   0	52	1	paramActivity	Activity
    //   3	42	2	arrayOfByte	byte[]
    //   11	28	3	localDataAction	ActionTransfor.DataAction
    // Exception table:
    //   from	to	target	type
    //   32	36	43	finally
    //   36	38	43	finally
    //   44	46	43	finally
    //   32	36	48	java/lang/Exception
  }
  
  private int b(Activity paramActivity)
  {
    byte[] arrayOfByte = new byte[0];
    ActionTransfor.DataAction localDataAction = new ActionTransfor.DataAction();
    ActionTransfor.a(paramActivity, MiClassKey.c, localDataAction, new h(this, localDataAction, arrayOfByte));
    try
    {
      arrayOfByte.wait();
      return localDataAction.d;
    }
    catch (Exception paramActivity)
    {
      for (;;)
      {
        paramActivity.printStackTrace();
      }
    }
    finally {}
  }
  
  private void c(int paramInt)
  {
    if (this.l != null) {
      this.l.sendEmptyMessage(paramInt);
    }
  }
  
  private void j()
  {
    if (!j.a(getContext()))
    {
      Toast.makeText(MiCommplatform.getInstance().getApplicationContext(), "没有网络,登录失败", 0).show();
      a(ActionTransfor.ActionResult.ACTION_OK, -102);
      a(this.a);
      return;
    }
    HyUtils.a().submit(new e(this));
  }
  
  private void k()
  {
    try
    {
      if ((this.j != null) && (this.j.isShowing()))
      {
        this.j.dismiss();
        this.j = null;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void a(String paramString)
  {
    k();
    ReporterUtils.getInstance().xmsdkReport(4100);
    if (this.l != null) {
      this.l.sendMessage(this.l.obtainMessage(20000, paramString));
    }
  }
  
  public final void a(String paramString, int paramInt)
  {
    k();
    ReporterUtils.getInstance().xmsdkReport(4100);
    if (this.l != null) {
      this.l.sendMessage(this.l.obtainMessage(20003, paramInt, 0, paramString));
    }
  }
  
  protected final RelativeLayout.LayoutParams b()
  {
    this.b.setBackgroundColor(1342177280);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    return localLayoutParams;
  }
  
  public final void b(String paramString)
  {
    k();
    ReporterUtils.getInstance().xmsdkReport(4100);
    if (this.l != null) {
      this.l.sendMessage(this.l.obtainMessage(40000, "自动登录失败，请手动登录。异常信息:" + paramString));
    }
    j();
  }
  
  public final void b(String paramString, int paramInt)
  {
    k();
    ReporterUtils.getInstance().xmsdkReport(4100);
    if (this.l != null) {
      this.l.sendMessage(this.l.obtainMessage(40000, "自动登录失败，请手动登录。异常信息:" + paramString + "。异常代码:" + paramInt));
    }
    j();
  }
  
  protected final void c()
  {
    this.c.setVisibility(8);
  }
  
  public final void c(String paramString)
  {
    k();
    ReporterUtils.getInstance().xmsdkReport(2080);
    if (this.l != null) {
      this.l.sendMessage(this.l.obtainMessage(30001, paramString));
    }
  }
  
  protected final View d()
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setBackgroundColor(0);
    return localLinearLayout;
  }
  
  protected final void d(String paramString)
  {
    if (this.j == null)
    {
      this.j = MiProgressDialog.a(getContext(), paramString);
      this.j.setCancelable(false);
    }
  }
  
  protected final void e() {}
  
  protected final void f() {}
  
  protected final void g()
  {
    k();
    if (this.k != null) {
      this.a.unbindService(this.k);
    }
    if (this.l != null)
    {
      this.l.removeCallbacksAndMessages(null);
      this.l = null;
    }
  }
  
  public final void h() {}
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  private class WebLoginListenerImpl
    implements i
  {
    c a;
    AccountType b;
    int c;
    
    public WebLoginListenerImpl(c paramc, AccountType paramAccountType, int paramInt)
    {
      this.a = paramc;
      this.b = paramAccountType;
      this.c = paramInt;
    }
    
    public final void a()
    {
      if (ViewLoginLayout.a(ViewLoginLayout.this) != null) {
        ViewLoginLayout.a(ViewLoginLayout.this).sendMessage(ViewLoginLayout.a(ViewLoginLayout.this).obtainMessage(40000, "第三方登录出现异常"));
      }
      if (AccountType.AccountType_QQ == this.b) {
        ReporterUtils.getInstance().xmsdkReport(4022);
      }
      for (;;)
      {
        ViewLoginLayout.a(ViewLoginLayout.this, ActionTransfor.ActionResult.ACTION_OK);
        MiLayout.a(ViewLoginLayout.b(ViewLoginLayout.this));
        return;
        if (AccountType.AccountType_MI == this.b) {
          ReporterUtils.getInstance().xmsdkReport(4020);
        }
      }
    }
    
    public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
    {
      if (ViewLoginLayout.a(ViewLoginLayout.this) != null) {
        ViewLoginLayout.a(ViewLoginLayout.this).sendMessage(ViewLoginLayout.a(ViewLoginLayout.this).obtainMessage(20001, "正在登录..."));
      }
      paramString1 = new LoginEvent.OAuthResultEvent(this.c, paramString3, null, paramString4, paramString1, paramString2, false, this.b);
      if (AccountType.AccountType_QQ == this.b) {
        ReporterUtils.getInstance().xmsdkReport(2073);
      }
      for (;;)
      {
        new LoginForSDK(ViewLoginLayout.this.getContext(), this.a, paramString1, ViewLoginLayout.d(ViewLoginLayout.this));
        return;
        if (AccountType.AccountType_MI == this.b) {
          ReporterUtils.getInstance().xmsdkReport(2070);
        }
      }
    }
    
    public final void b()
    {
      if (AccountType.AccountType_QQ == this.b) {
        ReporterUtils.getInstance().xmsdkReport(14);
      }
      for (;;)
      {
        ViewLoginLayout.c(ViewLoginLayout.this);
        return;
        if (AccountType.AccountType_MI == this.b) {
          ReporterUtils.getInstance().xmsdkReport(15);
        }
      }
    }
    
    public final void c()
    {
      if (ViewLoginLayout.a(ViewLoginLayout.this) != null) {
        ViewLoginLayout.a(ViewLoginLayout.this).sendMessage(ViewLoginLayout.a(ViewLoginLayout.this).obtainMessage(20002));
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\ViewLoginLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */