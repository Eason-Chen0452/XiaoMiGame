package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoadCallback;
import com.xiaomi.gamecenter.sdk.ui.notice.transform.CircleTransform;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.concurrent.ExecutorService;

public class ViewSelectAccount
  extends MiLayout
  implements View.OnClickListener
{
  private View i;
  private Button j;
  private TextView k;
  private ImageView l;
  private ObjectAnimator m;
  private ImageLoadCallback n;
  private CircleTransform o;
  private ImageView p;
  private Handler q = new j(this, Looper.myLooper());
  
  public ViewSelectAccount(Context paramContext, Intent paramIntent)
  {
    super(paramContext, paramIntent);
    if (i() == null)
    {
      c(30001);
      return;
    }
    if (this.l != null) {
      this.m.start();
    }
    HyUtils.a().submit(new k(this));
    this.q.sendEmptyMessageDelayed(20000, 3000L);
  }
  
  private void c(int paramInt)
  {
    this.q.sendMessage(this.q.obtainMessage(10000, Integer.valueOf(paramInt)));
  }
  
  private static boolean l()
  {
    try
    {
      Class.forName("com.bumptech.glide.Glide");
      return true;
    }
    catch (Exception localException) {}
    return false;
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
    this.i = LayoutInflater.from(getContext()).inflate(ResourceUtils.f(getContext(), "mio_auto_login"), null);
    this.i.setVisibility(0);
    this.j = ((Button)this.i.findViewById(ResourceUtils.d(getContext(), "login_wait_change_btn")));
    this.k = ((TextView)this.i.findViewById(ResourceUtils.d(getContext(), "login_wait_username")));
    this.j.setOnClickListener(this);
    this.l = ((ImageView)this.i.findViewById(ResourceUtils.d(getContext(), "login_wait_loading")));
    this.p = ((ImageView)this.i.findViewById(ResourceUtils.d(getContext(), "login_wait_icon")));
    this.m = ObjectAnimator.ofFloat(this.l, "rotation", new float[] { 0.0F, 719.0F });
    this.m.setDuration(1600L);
    this.m.setRepeatCount(-1);
    this.m.setInterpolator(new LinearInterpolator());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 48;
    localLinearLayout.addView(this.i, localLayoutParams);
    ReporterUtils.getInstance().xmsdkReport(2017);
    return localLinearLayout;
  }
  
  protected final void e() {}
  
  protected final void f() {}
  
  protected final void g() {}
  
  public final void h() {}
  
  public final void j()
  {
    if (this.l != null) {
      this.m.cancel();
    }
  }
  
  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (this.j == null) {}
    while (i1 != this.j.getId()) {
      return;
    }
    this.q.removeMessages(20000);
    ReporterUtils.getInstance().xmsdkReport(2019);
    c(30002);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\ViewSelectAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */