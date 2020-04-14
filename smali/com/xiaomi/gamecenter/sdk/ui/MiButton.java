package com.xiaomi.gamecenter.sdk.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.LightingColorFilter;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiButton
  extends Button
{
  private static final LightingColorFilter a = new LightingColorFilter(-1, 255);
  
  public MiButton(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public MiButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public MiButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  public MiButton(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    setClickable(true);
    setEnabled(true);
    setId(hashCode());
    setTextSize(16.0F);
    setTextColor(-16777216);
    setText("");
    setBackgroundDrawable(MiSelector.a(paramContext.getResources().getDrawable(ResourceUtils.c(paramContext, "mio_btn_bg")), paramContext.getResources().getDrawable(ResourceUtils.c(paramContext, "mio_btn_bg_click"))));
    setOnClickListener(paramOnClickListener);
  }
  
  private void b()
  {
    setOnTouchListener(new b(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */