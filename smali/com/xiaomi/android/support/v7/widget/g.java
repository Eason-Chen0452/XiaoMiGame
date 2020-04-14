package com.xiaomi.android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

final class g
  extends AnimatorListenerAdapter
{
  g(DefaultItemAnimator paramDefaultItemAnimator, RecyclerView.ViewHolder paramViewHolder, View paramView, ViewPropertyAnimator paramViewPropertyAnimator) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    this.b.setAlpha(1.0F);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.c.setListener(null);
    this.d.f(this.a);
    this.d.d.remove(this.a);
    this.d.c();
  }
  
  public final void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */