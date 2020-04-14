package com.xiaomi.android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

final class y
  implements b.b
{
  y(RecyclerView paramRecyclerView) {}
  
  public final int a()
  {
    return this.a.getChildCount();
  }
  
  public final int a(View paramView)
  {
    return this.a.indexOfChild(paramView);
  }
  
  public final void a(int paramInt)
  {
    View localView = this.a.getChildAt(paramInt);
    if (localView != null) {
      this.a.h(localView);
    }
    this.a.removeViewAt(paramInt);
  }
  
  public final void a(View paramView, int paramInt)
  {
    this.a.addView(paramView, paramInt);
    this.a.i(paramView);
  }
  
  public final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.d(paramView);
    if (localViewHolder != null)
    {
      if ((!localViewHolder.o()) && (!localViewHolder.b())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localViewHolder);
      }
      localViewHolder.j();
    }
    RecyclerView.a(this.a, paramView, paramInt, paramLayoutParams);
  }
  
  public final View b(int paramInt)
  {
    return this.a.getChildAt(paramInt);
  }
  
  public final RecyclerView.ViewHolder b(View paramView)
  {
    return RecyclerView.d(paramView);
  }
  
  public final void b()
  {
    int j = this.a.getChildCount();
    int i = 0;
    while (i < j)
    {
      this.a.h(b(i));
      i += 1;
    }
    this.a.removeAllViews();
  }
  
  public final void c(int paramInt)
  {
    Object localObject = b(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.d((View)localObject);
      if (localObject != null)
      {
        if ((((RecyclerView.ViewHolder)localObject).o()) && (!((RecyclerView.ViewHolder)localObject).b())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((RecyclerView.ViewHolder)localObject).b(256);
      }
    }
    RecyclerView.a(this.a, paramInt);
  }
  
  public final void c(View paramView)
  {
    paramView = RecyclerView.d(paramView);
    if (paramView != null) {
      RecyclerView.ViewHolder.a(paramView, this.a);
    }
  }
  
  public final void d(View paramView)
  {
    paramView = RecyclerView.d(paramView);
    if (paramView != null) {
      RecyclerView.ViewHolder.b(paramView, this.a);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */