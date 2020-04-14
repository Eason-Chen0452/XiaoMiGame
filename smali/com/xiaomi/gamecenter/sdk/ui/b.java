package com.xiaomi.gamecenter.sdk.ui;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class b
  implements View.OnTouchListener
{
  b(MiButton paramMiButton) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getActionMasked())
    {
    }
    for (;;)
    {
      return false;
      this.a.getBackground().setColorFilter(MiButton.a());
      this.a.getBackground().invalidateSelf();
      continue;
      this.a.getBackground().clearColorFilter();
      this.a.getBackground().invalidateSelf();
      continue;
      Rect localRect = new Rect();
      paramView.getDrawingRect(localRect);
      if (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
      {
        this.a.getBackground().clearColorFilter();
        this.a.getBackground().invalidateSelf();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */