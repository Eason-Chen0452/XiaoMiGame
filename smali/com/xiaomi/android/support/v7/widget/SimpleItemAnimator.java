package com.xiaomi.android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public abstract class SimpleItemAnimator
  extends RecyclerView.ItemAnimator
{
  boolean h = true;
  
  public abstract boolean a(RecyclerView.ViewHolder paramViewHolder);
  
  public abstract boolean a(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    int k = paramItemHolderInfo1.a;
    int m = paramItemHolderInfo1.b;
    paramItemHolderInfo1 = paramViewHolder.a;
    int i;
    if (paramItemHolderInfo2 == null)
    {
      i = paramItemHolderInfo1.getLeft();
      if (paramItemHolderInfo2 != null) {
        break label103;
      }
    }
    label103:
    for (int j = paramItemHolderInfo1.getTop();; j = paramItemHolderInfo2.b)
    {
      if ((paramViewHolder.n()) || ((k == i) && (m == j))) {
        break label112;
      }
      paramItemHolderInfo1.layout(i, j, paramItemHolderInfo1.getWidth() + i, paramItemHolderInfo1.getHeight() + j);
      return a(paramViewHolder, k, m, i, j);
      i = paramItemHolderInfo2.a;
      break;
    }
    label112:
    return a(paramViewHolder);
  }
  
  public abstract boolean a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder1, @NonNull RecyclerView.ViewHolder paramViewHolder2, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    int k = paramItemHolderInfo1.a;
    int m = paramItemHolderInfo1.b;
    int i;
    if (paramViewHolder2.b()) {
      i = paramItemHolderInfo1.a;
    }
    for (int j = paramItemHolderInfo1.b;; j = paramItemHolderInfo2.b)
    {
      return a(paramViewHolder1, paramViewHolder2, k, m, i, j);
      i = paramItemHolderInfo2.a;
    }
  }
  
  public abstract boolean b(RecyclerView.ViewHolder paramViewHolder);
  
  public final boolean b(@NonNull RecyclerView.ViewHolder paramViewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    if ((paramItemHolderInfo1 != null) && ((paramItemHolderInfo1.a != paramItemHolderInfo2.a) || (paramItemHolderInfo1.b != paramItemHolderInfo2.b))) {
      return a(paramViewHolder, paramItemHolderInfo1.a, paramItemHolderInfo1.b, paramItemHolderInfo2.a, paramItemHolderInfo2.b);
    }
    return b(paramViewHolder);
  }
  
  public final boolean c(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    if ((paramItemHolderInfo1.a != paramItemHolderInfo2.a) || (paramItemHolderInfo1.b != paramItemHolderInfo2.b)) {
      return a(paramViewHolder, paramItemHolderInfo1.a, paramItemHolderInfo1.b, paramItemHolderInfo2.a, paramItemHolderInfo2.b);
    }
    f(paramViewHolder);
    return false;
  }
  
  public final boolean g(@NonNull RecyclerView.ViewHolder paramViewHolder)
  {
    return (!this.h) || (paramViewHolder.k());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\SimpleItemAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */