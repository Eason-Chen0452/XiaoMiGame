package com.xiaomi.android.support.v7.widget.helper;

import android.animation.Animator;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.List;

final class c
  extends ItemTouchHelper.a
{
  c(ItemTouchHelper paramItemTouchHelper, RecyclerView.ViewHolder paramViewHolder1, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt3, RecyclerView.ViewHolder paramViewHolder2)
  {
    super(paramItemTouchHelper, paramViewHolder1, paramInt1, paramInt2, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    super.onAnimationEnd(paramAnimator);
    if (this.n) {}
    for (;;)
    {
      return;
      if (this.a <= 0) {
        ItemTouchHelper.Callback.b(this.b);
      }
      while (this.c.s == this.b.a)
      {
        this.c.b(this.b.a);
        return;
        this.c.a.add(this.b.a);
        this.k = true;
        if (this.a > 0)
        {
          paramAnimator = this.c;
          int i = this.a;
          paramAnimator.p.post(new d(paramAnimator, this, i));
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */