package com.xiaomi.gamecenter.sdk.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class MiTextView
  extends TextView
{
  private int a = -8421505;
  
  public MiTextView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public MiTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public MiTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  public MiTextView(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    setClickable(true);
    setEnabled(true);
    setId(hashCode());
    setTextSize(16.0F);
    setTextColor(-16777216);
    setText("");
    setOnClickListener(paramOnClickListener);
  }
  
  private void a()
  {
    setTextSize(16.0F);
    setTextColor(this.a);
    setId(hashCode());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */