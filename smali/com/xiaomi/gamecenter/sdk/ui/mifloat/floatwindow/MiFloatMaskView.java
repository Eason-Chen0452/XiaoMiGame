package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiFloatMaskView
  extends RelativeLayout
{
  private ImageView a;
  private TextView b;
  private int c = 0;
  
  public MiFloatMaskView(Context paramContext)
  {
    super(paramContext);
    int i = ResourceUtils.f(getContext(), "float_window_hide");
    LayoutInflater.from(paramContext).inflate(i, this);
    this.a = ((ImageView)findViewById(ResourceUtils.d(getContext(), "float_hide_tip_icon")));
    this.b = ((TextView)findViewById(ResourceUtils.d(getContext(), "float_hide_tip_text")));
    i = ResourceUtils.g(getContext(), "float_hide_tip_black_height");
    this.c = paramContext.getResources().getDimensionPixelSize(i);
    a(false);
    ((RelativeLayout)findViewById(ResourceUtils.d(getContext(), "float_hide_tip_rootlayout"))).setOnClickListener(new z(this));
  }
  
  public final int a()
  {
    if (this.b != null) {
      return this.a.getLeft();
    }
    return 0;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      i = ResourceUtils.c(getContext(), "float_hide_tip_sel");
      this.a.setBackgroundResource(i);
      this.b.setTextColor(-1811968);
      return;
    }
    int i = ResourceUtils.c(getContext(), "float_hide_tip_nor");
    this.a.setBackgroundResource(i);
    this.b.setTextColor(-4934476);
  }
  
  public final int b()
  {
    if (this.b != null) {
      return this.a.getRight();
    }
    return 0;
  }
  
  public final int c()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\MiFloatMaskView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */