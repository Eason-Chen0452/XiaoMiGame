package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class ViewSelectLoginMethod
  extends MiLayout
  implements View.OnClickListener
{
  private boolean i = false;
  private RelativeLayout j;
  private RelativeLayout k;
  private RelativeLayout l;
  private RelativeLayout m;
  private View n;
  private ProgressBar o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private Dialog t;
  private boolean u = false;
  private int v = 50003;
  private long w = 0L;
  private long x = 0L;
  private Handler y = new l(this, Looper.myLooper());
  
  public ViewSelectLoginMethod(Context paramContext, Intent paramIntent)
  {
    super(paramContext, paramIntent);
    if (i() == null) {
      c(30001);
    }
  }
  
  private void c(int paramInt)
  {
    this.y.sendMessage(this.y.obtainMessage(10000, Integer.valueOf(paramInt)));
  }
  
  private void d(int paramInt)
  {
    this.v = paramInt;
    this.y.sendMessage(this.y.obtainMessage(20000, Integer.valueOf(paramInt)));
  }
  
  private void j()
  {
    if (this.t != null) {
      this.t.dismiss();
    }
  }
  
  protected final RelativeLayout.LayoutParams b()
  {
    this.b.setBackgroundColor(1342177280);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    return localLayoutParams;
  }
  
  protected final void c()
  {
    this.c.setVisibility(8);
  }
  
  protected final View d()
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setGravity(17);
    localLinearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    this.n = LayoutInflater.from(getContext()).inflate(ResourceUtils.f(getContext(), "mio_login"), null);
    this.n.setVisibility(0);
    ((ImageView)this.n.findViewById(ResourceUtils.d(getContext(), "wechat_account_icon"))).setImageResource(ResourceUtils.c(getContext(), "mio_login_third_account_wechat_disable"));
    this.j = ((RelativeLayout)this.n.findViewById(ResourceUtils.d(getContext(), "mi_account_layout")));
    this.k = ((RelativeLayout)this.n.findViewById(ResourceUtils.d(getContext(), "wechat_account_layout")));
    this.l = ((RelativeLayout)this.n.findViewById(ResourceUtils.d(getContext(), "qq_account_layout")));
    this.m = ((RelativeLayout)this.n.findViewById(ResourceUtils.d(getContext(), "weibo_account_layout")));
    this.r = ((TextView)this.n.findViewById(ResourceUtils.d(getContext(), "info_text")));
    this.s = ((TextView)this.n.findViewById(ResourceUtils.d(getContext(), "version_text")));
    TextView localTextView1 = (TextView)this.n.findViewById(ResourceUtils.d(getContext(), "wechat_account_last_login"));
    TextView localTextView2 = (TextView)this.n.findViewById(ResourceUtils.d(getContext(), "mi_account_last_login"));
    TextView localTextView3 = (TextView)this.n.findViewById(ResourceUtils.d(getContext(), "qq_account_last_login"));
    this.s.setText("SDK_MI_SP_3.1.2");
    this.r.setOnClickListener(this);
    this.j.setOnClickListener(this);
    this.k.setOnClickListener(this);
    this.l.setOnClickListener(this);
    this.m.setOnClickListener(this);
    PackgeInfoHelper.a();
    AccountType localAccountType = PackgeInfoHelper.a(this.h.getAppId());
    if (localAccountType == AccountType.AccountType_MI)
    {
      localTextView2.setVisibility(0);
      localTextView3.setVisibility(4);
      localTextView1.setVisibility(4);
    }
    for (;;)
    {
      localLinearLayout.addView(this.n, localLayoutParams);
      ReporterUtils.getInstance().xmsdkReport(2081);
      this.i = false;
      return localLinearLayout;
      if (localAccountType == AccountType.AccountType_QQ)
      {
        localTextView2.setVisibility(4);
        localTextView3.setVisibility(0);
        localTextView1.setVisibility(4);
      }
      else if (localAccountType == AccountType.AccountType_WX)
      {
        localTextView2.setVisibility(4);
        localTextView3.setVisibility(4);
        localTextView1.setVisibility(0);
      }
    }
  }
  
  protected final void e() {}
  
  protected final void f()
  {
    if (this.u)
    {
      j();
      c(this.v);
    }
  }
  
  protected final void g() {}
  
  public final void h() {}
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (this.i) {
      Toast.makeText(this.a, "正在处理中...", 0).show();
    }
    do
    {
      return;
      if (this.j.getId() == i1)
      {
        this.i = true;
        c(40001);
        return;
      }
      if (this.l.getId() == i1)
      {
        this.i = true;
        c(40002);
        return;
      }
      if (this.k.getId() == i1)
      {
        if ("common".equals("base"))
        {
          if (MiCommplatform.sWxCpCallBack == null)
          {
            Toast.makeText(this.a, "微信登录未注册", 1).show();
            return;
          }
          if (HyUtils.a(MiCommplatform.getInstance().getApplicationContext()))
          {
            this.i = true;
            c(40003);
            return;
          }
          Toast.makeText(this.a, "微信未安装,无法使用微信登录", 0).show();
          return;
        }
        d(50003);
        return;
      }
      if (this.m.getId() == i1)
      {
        d(50004);
        return;
      }
    } while (this.r.getId() != i1);
    long l1 = System.currentTimeMillis();
    if ((this.x > 4L) && (l1 - this.w < 5000L))
    {
      this.s.setVisibility(0);
      return;
    }
    if (l1 - this.w > 5000L)
    {
      this.w = l1;
      this.x = 1L;
      return;
    }
    this.x += 1L;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Object localObject = new AlertDialog.Builder(getContext());
      paramKeyEvent = LayoutInflater.from(getContext()).inflate(ResourceUtils.f(getContext(), "mio_dialog_cancel_login"), null);
      Button localButton1 = (Button)paramKeyEvent.findViewById(ResourceUtils.d(getContext(), "btn_close"));
      Button localButton2 = (Button)paramKeyEvent.findViewById(ResourceUtils.d(getContext(), "btn_left"));
      Button localButton3 = (Button)paramKeyEvent.findViewById(ResourceUtils.d(getContext(), "btn_right"));
      localObject = ((AlertDialog.Builder)localObject).create();
      ((AlertDialog)localObject).show();
      ((AlertDialog)localObject).getWindow().setContentView(paramKeyEvent);
      ((AlertDialog)localObject).getWindow().setGravity(17);
      ((AlertDialog)localObject).setCancelable(false);
      ((AlertDialog)localObject).setCanceledOnTouchOutside(false);
      localButton2.setOnClickListener(new n(this, (AlertDialog)localObject));
      localButton3.setOnClickListener(new o(this));
      localButton1.setOnClickListener(new p(this, (AlertDialog)localObject));
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\ViewSelectLoginMethod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */