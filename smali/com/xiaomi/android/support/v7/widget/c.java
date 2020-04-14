package com.xiaomi.android.support.v7.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

final class c
  implements Runnable
{
  c(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (DefaultItemAnimator.b)localIterator.next();
      DefaultItemAnimator localDefaultItemAnimator = this.b;
      RecyclerView.ViewHolder localViewHolder = ((DefaultItemAnimator.b)localObject).a;
      int k = ((DefaultItemAnimator.b)localObject).b;
      int i = ((DefaultItemAnimator.b)localObject).c;
      int m = ((DefaultItemAnimator.b)localObject).d;
      int j = ((DefaultItemAnimator.b)localObject).e;
      localObject = localViewHolder.a;
      k = m - k;
      i = j - i;
      if (k != 0) {
        ((View)localObject).animate().translationX(0.0F);
      }
      if (i != 0) {
        ((View)localObject).animate().translationY(0.0F);
      }
      ViewPropertyAnimator localViewPropertyAnimator = ((View)localObject).animate();
      localDefaultItemAnimator.e.add(localViewHolder);
      localViewPropertyAnimator.setDuration(localDefaultItemAnimator.e()).setListener(new h(localDefaultItemAnimator, localViewHolder, k, (View)localObject, i, localViewPropertyAnimator)).start();
    }
    this.a.clear();
    this.b.b.remove(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */