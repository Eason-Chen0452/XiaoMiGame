package com.xiaomi.android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

final class z
  implements a.a
{
  z(RecyclerView paramRecyclerView) {}
  
  private void c(a.b paramb)
  {
    switch (paramb.a)
    {
    case 3: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      return;
    case 1: 
      this.a.m.a();
      return;
    case 2: 
      this.a.m.c();
      return;
    case 4: 
      this.a.m.d();
      return;
    }
    this.a.m.e();
  }
  
  public final RecyclerView.ViewHolder a(int paramInt)
  {
    RecyclerView localRecyclerView = this.a;
    int j = localRecyclerView.f.b();
    int i = 0;
    Object localObject1 = null;
    Object localObject2;
    if (i < j)
    {
      localObject2 = RecyclerView.d(localRecyclerView.f.c(i));
      if ((localObject2 == null) || (((RecyclerView.ViewHolder)localObject2).n()) || (((RecyclerView.ViewHolder)localObject2).c != paramInt)) {
        break label127;
      }
      localObject1 = localObject2;
      if (localRecyclerView.f.d(((RecyclerView.ViewHolder)localObject2).a)) {
        localObject1 = localObject2;
      }
    }
    label127:
    for (;;)
    {
      i += 1;
      break;
      if (localObject1 == null) {
        localObject2 = null;
      }
      do
      {
        return (RecyclerView.ViewHolder)localObject2;
        localObject2 = localObject1;
      } while (!this.a.f.d(((RecyclerView.ViewHolder)localObject1).a));
      return null;
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, true);
    this.a.C = true;
    RecyclerView.State localState = this.a.B;
    localState.b += paramInt2;
  }
  
  public final void a(int paramInt1, int paramInt2, Object paramObject)
  {
    Object localObject = this.a;
    int j = ((RecyclerView)localObject).f.b();
    int i = 0;
    while (i < j)
    {
      View localView = ((RecyclerView)localObject).f.c(i);
      RecyclerView.ViewHolder localViewHolder = RecyclerView.d(localView);
      if ((localViewHolder != null) && (!localViewHolder.b()) && (localViewHolder.c >= paramInt1) && (localViewHolder.c < paramInt1 + paramInt2))
      {
        localViewHolder.b(2);
        localViewHolder.a(paramObject);
        ((RecyclerView.LayoutParams)localView.getLayoutParams()).e = true;
      }
      i += 1;
    }
    paramObject = ((RecyclerView)localObject).d;
    i = ((RecyclerView.Recycler)paramObject).c.size() - 1;
    while (i >= 0)
    {
      localObject = (RecyclerView.ViewHolder)((RecyclerView.Recycler)paramObject).c.get(i);
      if (localObject != null)
      {
        j = ((RecyclerView.ViewHolder)localObject).d();
        if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
        {
          ((RecyclerView.ViewHolder)localObject).b(2);
          ((RecyclerView.Recycler)paramObject).b(i);
        }
      }
      i -= 1;
    }
    this.a.D = true;
  }
  
  public final void a(a.b paramb)
  {
    c(paramb);
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, false);
    this.a.C = true;
  }
  
  public final void b(a.b paramb)
  {
    c(paramb);
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = this.a;
    int j = localRecyclerView.f.b();
    int i = 0;
    while (i < j)
    {
      localObject = RecyclerView.d(localRecyclerView.f.c(i));
      if ((localObject != null) && (!((RecyclerView.ViewHolder)localObject).b()) && (((RecyclerView.ViewHolder)localObject).c >= paramInt1))
      {
        ((RecyclerView.ViewHolder)localObject).a(paramInt2, false);
        localRecyclerView.B.e = true;
      }
      i += 1;
    }
    Object localObject = localRecyclerView.d;
    j = ((RecyclerView.Recycler)localObject).c.size();
    i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)((RecyclerView.Recycler)localObject).c.get(i);
      if ((localViewHolder != null) && (localViewHolder.c >= paramInt1)) {
        localViewHolder.a(paramInt2, true);
      }
      i += 1;
    }
    localRecyclerView.requestLayout();
    this.a.C = true;
  }
  
  public final void d(int paramInt1, int paramInt2)
  {
    int n = -1;
    RecyclerView localRecyclerView = this.a;
    int i1 = localRecyclerView.f.b();
    int i;
    int j;
    int k;
    int m;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      m = 0;
      label35:
      if (m >= i1) {
        break label139;
      }
      localObject = RecyclerView.d(localRecyclerView.f.c(m));
      if ((localObject != null) && (((RecyclerView.ViewHolder)localObject).c >= k) && (((RecyclerView.ViewHolder)localObject).c <= j))
      {
        if (((RecyclerView.ViewHolder)localObject).c != paramInt1) {
          break label129;
        }
        ((RecyclerView.ViewHolder)localObject).a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      localRecyclerView.B.e = true;
      m += 1;
      break label35;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label129:
      ((RecyclerView.ViewHolder)localObject).a(i, false);
    }
    label139:
    Object localObject = localRecyclerView.d;
    label173:
    RecyclerView.ViewHolder localViewHolder;
    if (paramInt1 < paramInt2)
    {
      j = paramInt2;
      k = paramInt1;
      i = n;
      n = ((RecyclerView.Recycler)localObject).c.size();
      m = 0;
      if (m >= n) {
        break label268;
      }
      localViewHolder = (RecyclerView.ViewHolder)((RecyclerView.Recycler)localObject).c.get(m);
      if ((localViewHolder != null) && (localViewHolder.c >= k) && (localViewHolder.c <= j))
      {
        if (localViewHolder.c != paramInt1) {
          break label258;
        }
        localViewHolder.a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      m += 1;
      break label173;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label258:
      localViewHolder.a(i, false);
    }
    label268:
    localRecyclerView.requestLayout();
    this.a.C = true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */