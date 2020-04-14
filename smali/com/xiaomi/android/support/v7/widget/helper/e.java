package com.xiaomi.android.support.v7.widget.helper;

import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.b;

final class e
  implements RecyclerView.b
{
  e(ItemTouchHelper paramItemTouchHelper) {}
  
  public final int a(int paramInt1, int paramInt2)
  {
    if (this.a.s == null) {}
    int i;
    do
    {
      return paramInt2;
      int j = this.a.t;
      i = j;
      if (j == -1)
      {
        i = this.a.p.indexOfChild(this.a.s);
        this.a.t = i;
      }
      if (paramInt2 == paramInt1 - 1) {
        return i;
      }
    } while (paramInt2 < i);
    return paramInt2 + 1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */