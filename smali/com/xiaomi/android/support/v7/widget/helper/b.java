package com.xiaomi.android.support.v7.widget.helper;

import android.support.v4.view.GestureDetectorCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.ViewHolder;
import com.xiaomi.android.support.v7.widget.RecyclerView.e;
import java.util.List;

final class b
  implements RecyclerView.e
{
  b(ItemTouchHelper paramItemTouchHelper) {}
  
  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return;
    }
    this.a.a(null, 0);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    this.a.u.onTouchEvent(paramMotionEvent);
    int i = paramMotionEvent.getActionMasked();
    if (i == 0)
    {
      this.a.k = paramMotionEvent.getPointerId(0);
      this.a.c = paramMotionEvent.getX();
      this.a.d = paramMotionEvent.getY();
      Object localObject = this.a;
      if (((ItemTouchHelper)localObject).r != null) {
        ((ItemTouchHelper)localObject).r.recycle();
      }
      ((ItemTouchHelper)localObject).r = VelocityTracker.obtain();
      if (this.a.b == null)
      {
        localObject = this.a.a(paramMotionEvent);
        if (localObject != null)
        {
          ItemTouchHelper localItemTouchHelper = this.a;
          localItemTouchHelper.c -= ((ItemTouchHelper.a)localObject).l;
          localItemTouchHelper = this.a;
          localItemTouchHelper.d -= ((ItemTouchHelper.a)localObject).m;
          this.a.a(((ItemTouchHelper.a)localObject).h, true);
          if (this.a.a.remove(((ItemTouchHelper.a)localObject).h.a)) {
            ItemTouchHelper.Callback.b(((ItemTouchHelper.a)localObject).h);
          }
          this.a.a(((ItemTouchHelper.a)localObject).h, ((ItemTouchHelper.a)localObject).i);
          this.a.a(paramMotionEvent, this.a.n, 0);
        }
      }
    }
    for (;;)
    {
      if (this.a.r != null) {
        this.a.r.addMovement(paramMotionEvent);
      }
      if (this.a.b == null) {
        break;
      }
      return true;
      if ((i == 3) || (i == 1))
      {
        this.a.k = -1;
        this.a.a(null, 0);
      }
      else if (this.a.k != -1)
      {
        int j = paramMotionEvent.findPointerIndex(this.a.k);
        if (j >= 0) {
          this.a.a(i, paramMotionEvent, j);
        }
      }
    }
    return false;
  }
  
  public final void b(MotionEvent paramMotionEvent)
  {
    int i = 0;
    this.a.u.onTouchEvent(paramMotionEvent);
    if (this.a.r != null) {
      this.a.r.addMovement(paramMotionEvent);
    }
    if (this.a.k == -1) {}
    int j;
    do
    {
      int k;
      RecyclerView.ViewHolder localViewHolder;
      do
      {
        return;
        j = paramMotionEvent.getActionMasked();
        k = paramMotionEvent.findPointerIndex(this.a.k);
        if (k >= 0) {
          this.a.a(j, paramMotionEvent, k);
        }
        localViewHolder = this.a.b;
      } while (localViewHolder == null);
      switch (j)
      {
      case 4: 
      case 5: 
      default: 
        return;
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          this.a.a(null, 0);
          this.a.k = -1;
          return;
          if (k < 0) {
            break;
          }
          this.a.a(paramMotionEvent, this.a.n, k);
          this.a.a(localViewHolder);
          this.a.p.removeCallbacks(this.a.q);
          this.a.q.run();
          this.a.p.invalidate();
          return;
          if (this.a.r != null) {
            this.a.r.clear();
          }
        }
      }
      j = paramMotionEvent.getActionIndex();
    } while (paramMotionEvent.getPointerId(j) != this.a.k);
    if (j == 0) {
      i = 1;
    }
    this.a.k = paramMotionEvent.getPointerId(i);
    this.a.a(paramMotionEvent, this.a.n, j);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */