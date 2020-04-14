package com.xiaomi.gamecenter.sdk.component;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.ui.MiSelector;
import com.xiaomi.gamecenter.sdk.ui.MiTextView;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class LoginSelectAccount
  extends LinearLayout
{
  private View.OnClickListener a;
  private MiTextView b;
  private MiTextView c;
  private ImageView d;
  private Animation e;
  
  public LoginSelectAccount(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    setGravity(1);
    setOrientation(1);
    int i = MiLayout.b(4);
    int j = Color.parseColor("#FFFFFF");
    paramContext = new GradientDrawable();
    paramContext.setColor(j);
    paramContext.setCornerRadius(i);
    setBackgroundDrawable(paramContext);
    this.a = paramOnClickListener;
    this.b = new MiTextView(getContext());
    this.b.setId(this.b.hashCode());
    this.b.setTextSize(18.0F);
    this.b.setTextColor(-13421773);
    paramContext = new LinearLayout.LayoutParams(-2, -2);
    paramContext.setMargins(0, MiLayout.b(60), 0, 0);
    addView(this.b, paramContext);
    this.d = new ImageView(getContext());
    this.d.setBackgroundDrawable(getResources().getDrawable(ResourceUtils.c(getContext(), "mio_icon_login_wait")));
    paramContext = new LinearLayout.LayoutParams(MiLayout.b(37), MiLayout.b(37));
    paramContext.topMargin = MiLayout.b(43);
    addView(this.d, paramContext);
    this.e = new RotateAnimation(0.0F, 359.0F, 1, 0.5F, 1, 0.5F);
    this.e.setDuration(1000L);
    this.e.setRepeatCount(-1);
    this.e.setFillAfter(true);
    paramContext = new LinearInterpolator();
    this.e.setInterpolator(paramContext);
    this.d.setAnimation(this.e);
    this.e.startNow();
    paramContext = new MiTextView(getContext());
    paramContext.setTextSize(12.0F);
    paramContext.setTextColor(1711276032);
    paramContext.setText("正在登录......");
    paramOnClickListener = new LinearLayout.LayoutParams(-2, -2);
    paramOnClickListener.topMargin = MiLayout.b(17);
    addView(paramContext, paramOnClickListener);
    this.c = new MiTextView(getContext(), this.a);
    this.c.setId(this.c.hashCode());
    this.c.setText("切换账号");
    this.c.setTextColor(-13720091);
    this.c.setBackgroundDrawable(MiSelector.b(getResources().getDrawable(ResourceUtils.c(getContext(), "mio_btn_change_account_nor")), getResources().getDrawable(ResourceUtils.c(getContext(), "mio_btn_change_account_sel"))));
    this.c.setGravity(17);
    paramContext = new LinearLayout.LayoutParams(MiLayout.b(499), MiLayout.b(79));
    paramContext.setMargins(0, MiLayout.a(48), 0, MiLayout.a(48));
    addView(this.c, paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\component\LoginSelectAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */