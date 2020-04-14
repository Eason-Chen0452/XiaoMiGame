package com.xiaomi.android.support.v7.widget.helper;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class h
  implements ValueAnimator.AnimatorUpdateListener
{
  h(ItemTouchHelper.a parama, ItemTouchHelper paramItemTouchHelper) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    this.b.a(paramValueAnimator.getAnimatedFraction());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */