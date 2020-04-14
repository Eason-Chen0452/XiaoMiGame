package com.xiaomi.android.support.v7.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

final class e
  implements Runnable
{
  e(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)localIterator.next();
      DefaultItemAnimator localDefaultItemAnimator = this.b;
      View localView = localViewHolder.a;
      ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
      localDefaultItemAnimator.d.add(localViewHolder);
      localViewPropertyAnimator.alpha(1.0F).setDuration(localDefaultItemAnimator.f()).setListener(new g(localDefaultItemAnimator, localViewHolder, localView, localViewPropertyAnimator)).start();
    }
    this.a.clear();
    this.b.a.remove(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */