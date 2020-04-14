package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.view.View;
import android.view.ViewTreeObserver;

public class AndroidBug54971Workaround
{
  private View a;
  private int b;
  private int c;
  private a d;
  
  public AndroidBug54971Workaround(View paramView, a parama)
  {
    this.a = paramView;
    this.a.getViewTreeObserver().addOnGlobalLayoutListener(new a(this));
    this.d = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
    
    public abstract void b(int paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\AndroidBug54971Workaround.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */