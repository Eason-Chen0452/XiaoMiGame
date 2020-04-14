package com.xiaomi.android.support.v7.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

final class d
  implements Runnable
{
  d(DefaultItemAnimator paramDefaultItemAnimator, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      DefaultItemAnimator.a locala = (DefaultItemAnimator.a)localIterator.next();
      DefaultItemAnimator localDefaultItemAnimator = this.b;
      Object localObject1 = locala.a;
      if (localObject1 == null)
      {
        localObject1 = null;
        label46:
        localObject2 = locala.b;
        if (localObject2 == null) {
          break label229;
        }
      }
      label229:
      for (Object localObject2 = ((RecyclerView.ViewHolder)localObject2).a;; localObject2 = null)
      {
        if (localObject1 != null)
        {
          ViewPropertyAnimator localViewPropertyAnimator = ((View)localObject1).animate().setDuration(localDefaultItemAnimator.h());
          localDefaultItemAnimator.g.add(locala.a);
          localViewPropertyAnimator.translationX(locala.e - locala.c);
          localViewPropertyAnimator.translationY(locala.f - locala.d);
          localViewPropertyAnimator.alpha(0.0F).setListener(new i(localDefaultItemAnimator, locala, localViewPropertyAnimator, (View)localObject1)).start();
        }
        if (localObject2 == null) {
          break;
        }
        localObject1 = ((View)localObject2).animate();
        localDefaultItemAnimator.g.add(locala.b);
        ((ViewPropertyAnimator)localObject1).translationX(0.0F).translationY(0.0F).setDuration(localDefaultItemAnimator.h()).alpha(1.0F).setListener(new j(localDefaultItemAnimator, locala, (ViewPropertyAnimator)localObject1, (View)localObject2)).start();
        break;
        localObject1 = ((RecyclerView.ViewHolder)localObject1).a;
        break label46;
      }
    }
    this.a.clear();
    this.b.c.remove(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */