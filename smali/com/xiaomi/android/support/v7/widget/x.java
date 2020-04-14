package com.xiaomi.android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

final class x
  implements ae.b
{
  x(RecyclerView paramRecyclerView) {}
  
  public final void a(RecyclerView.ViewHolder paramViewHolder)
  {
    RecyclerView.LayoutManager localLayoutManager = this.a.m;
    paramViewHolder = paramViewHolder.a;
    RecyclerView.Recycler localRecycler = this.a.d;
    localLayoutManager.p.b(paramViewHolder);
    localRecycler.a(paramViewHolder);
  }
  
  public final void a(RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    this.a.d.b(paramViewHolder);
    this.a.b(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2);
  }
  
  public final void b(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    this.a.a(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2);
  }
  
  public final void c(RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder.a(false);
    if (this.a.w) {
      if (this.a.x.a(paramViewHolder, paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
        this.a.j();
      }
    }
    while (!this.a.x.c(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      return;
    }
    this.a.j();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */