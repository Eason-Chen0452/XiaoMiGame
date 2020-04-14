package com.xiaomi.android.support.v7.widget;

import android.view.View;

final class ab
  implements ad.b
{
  ab(RecyclerView.LayoutManager paramLayoutManager) {}
  
  public final int a()
  {
    return this.a.v();
  }
  
  public final int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return RecyclerView.LayoutManager.i(paramView) - localLayoutParams.topMargin;
  }
  
  public final View a(int paramInt)
  {
    return this.a.f(paramInt);
  }
  
  public final int b()
  {
    return this.a.t() - this.a.x();
  }
  
  public final int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.LayoutManager.k(paramView);
    return localLayoutParams.bottomMargin + i;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */