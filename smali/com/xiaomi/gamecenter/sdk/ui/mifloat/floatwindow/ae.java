package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;

final class ae
  implements View.OnTouchListener
{
  long a = 0L;
  
  ae(MiFloatView paramMiFloatView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if (this.b.a != MiFloatView.STATUS.NORMAL) {
      return false;
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      for (;;)
      {
        return true;
        MiFloatView.a(this.b, false);
        MiFloatView.a(this.b, paramMotionEvent.getX());
        MiFloatView.b(this.b, paramMotionEvent.getY());
        paramView = new Rect();
        MiFloatView.c(this.b).getGlobalVisibleRect(paramView);
        MiFloatView.c(this.b, paramMotionEvent.getRawX());
        MiFloatView.d(this.b, paramMotionEvent.getRawY());
        MiFloatView.e(this.b, MiFloatView.d(this.b));
        MiFloatView.f(this.b, MiFloatView.e(this.b));
        if (MiFloatView.b(this.b) != null)
        {
          MiFloatView.b(this.b).b();
          continue;
          this.b.a = MiFloatView.STATUS.NORMAL;
          MiFloatView.e(this.b, paramMotionEvent.getRawX());
          MiFloatView.f(this.b, paramMotionEvent.getRawY());
          if (!MiFloatView.f(this.b))
          {
            paramView = this.b;
            if (!MiFloatView.g(this.b)) {
              bool = true;
            }
            MiFloatView.a(paramView, bool);
          }
          else
          {
            MiFloatView.h(this.b);
            if (MiFloatView.b(this.b) != null) {
              MiFloatView.b(this.b).a();
            }
          }
        }
      }
    }
    if (!MiFloatView.f(this.b)) {
      if (MiFloatView.b(this.b) != null) {
        MiFloatView.b(this.b).c();
      }
    }
    for (;;)
    {
      MiFloatView.a(this.b, false);
      break;
      if (MiFloatView.b(this.b) != null) {
        MiFloatView.b(this.b).d();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */