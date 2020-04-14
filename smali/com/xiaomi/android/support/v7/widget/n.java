package com.xiaomi.android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class n
  implements Runnable
{
  static final ThreadLocal<n> a = new ThreadLocal();
  static Comparator<b> e = new o();
  ArrayList<RecyclerView> b = new ArrayList();
  long c;
  long d;
  private ArrayList<b> f = new ArrayList();
  
  private static RecyclerView.ViewHolder a(RecyclerView paramRecyclerView, int paramInt, long paramLong)
  {
    int j = paramRecyclerView.f.b();
    int i = 0;
    RecyclerView.ViewHolder localViewHolder;
    if (i < j)
    {
      localViewHolder = RecyclerView.d(paramRecyclerView.f.c(i));
      if ((localViewHolder.c == paramInt) && (!localViewHolder.k()))
      {
        i = 1;
        label53:
        if (i == 0) {
          break label77;
        }
        paramRecyclerView = null;
      }
    }
    label77:
    RecyclerView.Recycler localRecycler;
    do
    {
      return paramRecyclerView;
      i += 1;
      break;
      i = 0;
      break label53;
      localRecycler = paramRecyclerView.d;
      localViewHolder = localRecycler.a(paramInt, paramLong);
      paramRecyclerView = localViewHolder;
    } while (localViewHolder == null);
    if (localViewHolder.m())
    {
      localRecycler.a(localViewHolder.a);
      return localViewHolder;
    }
    localRecycler.a(localViewHolder, false);
    return localViewHolder;
  }
  
  final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    if ((paramRecyclerView.isAttachedToWindow()) && (this.c == 0L))
    {
      this.c = RecyclerView.p();
      paramRecyclerView.post(this);
    }
    paramRecyclerView = paramRecyclerView.A;
    paramRecyclerView.a = paramInt1;
    paramRecyclerView.b = paramInt2;
  }
  
  public final void run()
  {
    for (;;)
    {
      int j;
      try
      {
        TraceCompat.beginSection("RV Prefetch");
        bool = this.b.isEmpty();
        if (bool) {
          return;
        }
        j = this.b.size();
        long l1 = 0L;
        int i = 0;
        Object localObject1;
        if (i < j)
        {
          localObject1 = (RecyclerView)this.b.get(i);
          if (((RecyclerView)localObject1).getWindowVisibility() != 0) {
            break label709;
          }
          l1 = Math.max(((RecyclerView)localObject1).getDrawingTime(), l1);
          i += 1;
          continue;
        }
        if (l1 == 0L) {
          return;
        }
        long l2 = TimeUnit.MILLISECONDS.toNanos(l1) + this.d;
        int m = this.b.size();
        i = 0;
        j = 0;
        if (j < m)
        {
          localObject1 = (RecyclerView)this.b.get(j);
          if (((RecyclerView)localObject1).getWindowVisibility() != 0) {
            break label706;
          }
          ((RecyclerView)localObject1).A.a((RecyclerView)localObject1, false);
          i = ((RecyclerView)localObject1).A.d + i;
          break label712;
        }
        this.f.ensureCapacity(i);
        i = 0;
        j = 0;
        Object localObject4;
        a locala;
        if (j < m)
        {
          localObject4 = (RecyclerView)this.b.get(j);
          if (((RecyclerView)localObject4).getWindowVisibility() != 0) {
            break label703;
          }
          locala = ((RecyclerView)localObject4).A;
          int n = Math.abs(locala.a) + Math.abs(locala.b);
          int k = 0;
          if (k >= locala.d * 2) {
            break label725;
          }
          if (i >= this.f.size())
          {
            localObject1 = new b();
            this.f.add(localObject1);
            int i1 = locala.c[(k + 1)];
            if (i1 > n) {
              break label719;
            }
            bool = true;
            ((b)localObject1).a = bool;
            ((b)localObject1).b = n;
            ((b)localObject1).c = i1;
            ((b)localObject1).d = ((RecyclerView)localObject4);
            ((b)localObject1).e = locala.c[k];
            i += 1;
            k += 2;
            continue;
          }
          localObject1 = (b)this.f.get(i);
          continue;
        }
        Collections.sort(this.f, e);
        i = 0;
        if (i < this.f.size())
        {
          localObject1 = (b)this.f.get(i);
          if (((b)localObject1).d != null)
          {
            if (((b)localObject1).a)
            {
              l1 = Long.MAX_VALUE;
              localObject4 = a(((b)localObject1).d, ((b)localObject1).e, l1);
              if ((localObject4 == null) || (((RecyclerView.ViewHolder)localObject4).b == null)) {
                continue;
              }
              localObject4 = (RecyclerView)((RecyclerView.ViewHolder)localObject4).b.get();
              if (localObject4 == null) {
                continue;
              }
              if ((((RecyclerView)localObject4).w) && (((RecyclerView)localObject4).f.b() != 0)) {
                ((RecyclerView)localObject4).a();
              }
              locala = ((RecyclerView)localObject4).A;
              locala.a((RecyclerView)localObject4, true);
              j = locala.d;
              if (j == 0) {
                continue;
              }
            }
            try
            {
              TraceCompat.beginSection("RV Nested Prefetch");
              RecyclerView.State localState = ((RecyclerView)localObject4).B;
              RecyclerView.Adapter localAdapter = ((RecyclerView)localObject4).l;
              localState.c = 1;
              localState.d = localAdapter.a();
              localState.e = false;
              localState.f = false;
              localState.g = false;
              localState.h = false;
              j = 0;
              if (j < locala.d * 2)
              {
                a((RecyclerView)localObject4, locala.c[j], l2);
                j += 2;
                continue;
                l1 = l2;
                continue;
              }
              TraceCompat.endSection();
              ((b)localObject1).a = false;
              ((b)localObject1).b = 0;
              ((b)localObject1).c = 0;
              ((b)localObject1).d = null;
              ((b)localObject1).e = 0;
              i += 1;
              continue;
            }
            finally
            {
              TraceCompat.endSection();
            }
          }
        }
        this.c = 0L;
      }
      finally
      {
        this.c = 0L;
        TraceCompat.endSection();
      }
      TraceCompat.endSection();
      return;
      label703:
      break label725;
      label706:
      break label712;
      label709:
      continue;
      label712:
      j += 1;
      continue;
      label719:
      boolean bool = false;
      continue;
      label725:
      j += 1;
    }
  }
  
  static final class a
    implements RecyclerView.LayoutManager.a
  {
    int a;
    int b;
    int[] c;
    int d;
    
    final void a()
    {
      if (this.c != null) {
        Arrays.fill(this.c, -1);
      }
      this.d = 0;
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      if (paramInt1 < 0) {
        throw new IllegalArgumentException("Layout positions must be non-negative");
      }
      if (paramInt2 < 0) {
        throw new IllegalArgumentException("Pixel distance must be non-negative");
      }
      int i = this.d * 2;
      if (this.c == null)
      {
        this.c = new int[4];
        Arrays.fill(this.c, -1);
      }
      for (;;)
      {
        this.c[i] = paramInt1;
        this.c[(i + 1)] = paramInt2;
        this.d += 1;
        return;
        if (i >= this.c.length)
        {
          int[] arrayOfInt = this.c;
          this.c = new int[i * 2];
          System.arraycopy(arrayOfInt, 0, this.c, 0, arrayOfInt.length);
        }
      }
    }
    
    final void a(RecyclerView paramRecyclerView, boolean paramBoolean)
    {
      this.d = 0;
      if (this.c != null) {
        Arrays.fill(this.c, -1);
      }
      RecyclerView.LayoutManager localLayoutManager = paramRecyclerView.m;
      if ((paramRecyclerView.l != null) && (localLayoutManager != null) && (localLayoutManager.o()))
      {
        if (!paramBoolean) {
          break label101;
        }
        if (!paramRecyclerView.e.d()) {
          localLayoutManager.a(paramRecyclerView.l.a(), this);
        }
      }
      for (;;)
      {
        if (this.d > localLayoutManager.x)
        {
          localLayoutManager.x = this.d;
          localLayoutManager.y = paramBoolean;
          paramRecyclerView.d.b();
        }
        return;
        label101:
        if (!paramRecyclerView.n()) {
          localLayoutManager.a(this.a, this.b, paramRecyclerView.B, this);
        }
      }
    }
    
    final boolean a(int paramInt)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      int j;
      int i;
      if (this.c != null)
      {
        j = this.d;
        i = 0;
      }
      for (;;)
      {
        bool1 = bool2;
        if (i < j * 2)
        {
          if (this.c[i] == paramInt) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 2;
      }
    }
  }
  
  static final class b
  {
    public boolean a;
    public int b;
    public int c;
    public RecyclerView d;
    public int e;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */