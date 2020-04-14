package com.xiaomi.android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

final class h
  extends AnimatorListenerAdapter
{
  h(DefaultItemAnimator paramDefaultItemAnimator, RecyclerView.ViewHolder paramViewHolder, int paramInt1, View paramView, int paramInt2, ViewPropertyAnimator paramViewPropertyAnimator) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    if (this.b != 0) {
      this.c.setTranslationX(0.0F);
    }
    if (this.d != 0) {
      this.c.setTranslationY(0.0F);
    }
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.e.setListener(null);
    this.f.f(this.a);
    this.f.e.remove(this.a);
    this.f.c();
  }
  
  public final void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */