package com.xiaomi.android.support.v7.widget;

import android.view.View;

final class aa
  implements ad.b
{
  aa(RecyclerView.LayoutManager paramLayoutManager) {}
  
  public final int a()
  {
    return this.a.u();
  }
  
  public final int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return RecyclerView.LayoutManager.h(paramView) - localLayoutParams.leftMargin;
  }
  
  public final View a(int paramInt)
  {
    return this.a.f(paramInt);
  }
  
  public final int b()
  {
    return this.a.s() - this.a.w();
  }
  
  public final int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.LayoutManager.j(paramView);
    return localLayoutParams.rightMargin + i;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */