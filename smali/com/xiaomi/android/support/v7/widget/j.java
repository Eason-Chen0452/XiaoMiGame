package com.xiaomi.android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

final class j
  extends AnimatorListenerAdapter
{
  j(DefaultItemAnimator paramDefaultItemAnimator, DefaultItemAnimator.a parama, ViewPropertyAnimator paramViewPropertyAnimator, View paramView) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.b.setListener(null);
    this.c.setAlpha(1.0F);
    this.c.setTranslationX(0.0F);
    this.c.setTranslationY(0.0F);
    this.d.f(this.a.b);
    this.d.g.remove(this.a.b);
    this.d.c();
  }
  
  public final void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */