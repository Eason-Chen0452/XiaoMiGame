package com.xiaomi.android.support.v7.widget;

import android.graphics.Rect;
import android.view.View;

final class t
  extends r
{
  t(RecyclerView.LayoutManager paramLayoutManager)
  {
    super(paramLayoutManager, (byte)0);
  }
  
  public final int a(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return RecyclerView.LayoutManager.i(paramView) - localLayoutParams.topMargin;
  }
  
  public final void a(int paramInt)
  {
    Object localObject = this.a;
    if (((RecyclerView.LayoutManager)localObject).q != null)
    {
      localObject = ((RecyclerView.LayoutManager)localObject).q;
      int j = ((RecyclerView)localObject).f.a();
      int i = 0;
      while (i < j)
      {
        ((RecyclerView)localObject).f.b(i).offsetTopAndBottom(paramInt);
        i += 1;
      }
    }
  }
  
  public final int b(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.LayoutManager.k(paramView);
    return localLayoutParams.bottomMargin + i;
  }
  
  public final int c()
  {
    return this.a.v();
  }
  
  public final int c(View paramView)
  {
    this.a.a(paramView, this.b);
    return this.b.bottom;
  }
  
  public final int d()
  {
    return this.a.t() - this.a.x();
  }
  
  public final int d(View paramView)
  {
    this.a.a(paramView, this.b);
    return this.b.top;
  }
  
  public final int e()
  {
    return this.a.t();
  }
  
  public final int e(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.LayoutManager.g(paramView);
    int j = localLayoutParams.topMargin;
    return localLayoutParams.bottomMargin + (i + j);
  }
  
  public final int f()
  {
    return this.a.t() - this.a.v() - this.a.x();
  }
  
  public final int f(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = RecyclerView.LayoutManager.f(paramView);
    int j = localLayoutParams.leftMargin;
    return localLayoutParams.rightMargin + (i + j);
  }
  
  public final int g()
  {
    return this.a.x();
  }
  
  public final int h()
  {
    return this.a.r();
  }
  
  public final int i()
  {
    return this.a.q();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */