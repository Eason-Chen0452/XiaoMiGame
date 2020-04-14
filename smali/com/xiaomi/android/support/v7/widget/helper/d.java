package com.xiaomi.android.support.v7.widget.helper;

import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.ItemAnimator;
import com.xiaomi.android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.List;

final class d
  implements Runnable
{
  d(ItemTouchHelper paramItemTouchHelper, ItemTouchHelper.a parama, int paramInt) {}
  
  public final void run()
  {
    if ((this.c.p != null) && (this.c.p.isAttachedToWindow()) && (!this.a.n) && (this.a.h.e() != -1))
    {
      Object localObject = this.c.p.i();
      if ((localObject != null) && (((RecyclerView.ItemAnimator)localObject).b())) {
        break label139;
      }
      localObject = this.c;
      int j = ((ItemTouchHelper)localObject).o.size();
      i = 0;
      if (i >= j) {
        break label134;
      }
      if (((ItemTouchHelper.a)((ItemTouchHelper)localObject).o.get(i)).o) {
        break label127;
      }
    }
    label127:
    label134:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        break label139;
      }
      this.c.l.h();
      return;
      i += 1;
      break;
    }
    label139:
    this.c.p.post(this);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */