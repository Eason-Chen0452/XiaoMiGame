package com.xiaomi.android.support.v7.widget.helper;

import android.support.v4.view.ViewCompat;
import com.xiaomi.android.support.v7.widget.RecyclerView;

final class a
  implements Runnable
{
  a(ItemTouchHelper paramItemTouchHelper) {}
  
  public final void run()
  {
    if ((this.a.b != null) && (this.a.a()))
    {
      if (this.a.b != null) {
        this.a.a(this.a.b);
      }
      this.a.p.removeCallbacks(this.a.q);
      ViewCompat.postOnAnimation(this.a.p, this);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */