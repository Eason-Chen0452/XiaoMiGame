package com.xiaomi.android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

final class f
  extends AnimatorListenerAdapter
{
  f(DefaultItemAnimator paramDefaultItemAnimator, RecyclerView.ViewHolder paramViewHolder, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.b.setListener(null);
    this.c.setAlpha(1.0F);
    this.d.f(this.a);
    this.d.f.remove(this.a);
    this.d.c();
  }
  
  public final void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */