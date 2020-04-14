package com.xiaomi.android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  boolean a = false;
  int b = -1;
  int[] c;
  View[] d;
  final SparseIntArray e = new SparseIntArray();
  final SparseIntArray f = new SparseIntArray();
  SpanSizeLookup g = new DefaultSpanSizeLookup();
  final Rect h = new Rect();
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    a(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    a(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(a(paramContext, paramAttributeSet, paramInt1, paramInt2).b);
  }
  
  private void A()
  {
    if (this.i == 1) {}
    for (int i = s() - w() - u();; i = t() - x() - v())
    {
      h(i);
      return;
    }
  }
  
  private void B()
  {
    if ((this.d == null) || (this.d.length != this.b)) {
      this.d = new View[this.b];
    }
  }
  
  private int a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.f) {
      return SpanSizeLookup.c(paramInt, this.b);
    }
    int i = paramRecycler.a(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    }
    return SpanSizeLookup.c(i, this.b);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    if (paramBoolean) {}
    for (paramBoolean = a(paramView, paramInt1, paramInt2, localLayoutParams);; paramBoolean = b(paramView, paramInt1, paramInt2, localLayoutParams))
    {
      if (paramBoolean) {
        paramView.measure(paramInt1, paramInt2);
      }
      return;
    }
  }
  
  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    Rect localRect = localLayoutParams.d;
    int j = localRect.top + localRect.bottom + localLayoutParams.topMargin + localLayoutParams.bottomMargin;
    int i = localRect.left;
    int k = localRect.right;
    int m = localLayoutParams.leftMargin;
    i = localLayoutParams.rightMargin + (k + i + m);
    k = e(localLayoutParams.a, localLayoutParams.b);
    if (this.i == 1)
    {
      i = a(k, paramInt, i, localLayoutParams.width, false);
      paramInt = a(this.j.f(), r(), j, localLayoutParams.height, true);
    }
    for (;;)
    {
      a(paramView, i, paramInt, paramBoolean);
      return;
      paramInt = a(k, paramInt, j, localLayoutParams.height, false);
      i = a(this.j.f(), q(), i, localLayoutParams.width, true);
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt, boolean paramBoolean)
  {
    int k = 0;
    int i;
    int j;
    if (paramBoolean)
    {
      i = 1;
      int m = 0;
      j = paramInt;
      paramInt = m;
    }
    while (paramInt != j)
    {
      View localView = this.d[paramInt];
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      localLayoutParams.b = c(paramRecycler, paramState, e(localView));
      localLayoutParams.a = k;
      k += localLayoutParams.b;
      paramInt += i;
      continue;
      paramInt -= 1;
      i = -1;
      j = -1;
    }
  }
  
  private int b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.f) {
      i = this.g.b(paramInt, this.b);
    }
    int j;
    do
    {
      return i;
      j = this.f.get(paramInt, -1);
      i = j;
    } while (j != -1);
    int i = paramRecycler.a(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 0;
    }
    return this.g.b(i, this.b);
  }
  
  private int c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.f) {}
    do
    {
      return 1;
      int i = this.e.get(paramInt, -1);
      if (i != -1) {
        return i;
      }
    } while (paramRecycler.a(paramInt) != -1);
    Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
    return 1;
  }
  
  private int e(int paramInt1, int paramInt2)
  {
    if ((this.i == 1) && (k())) {
      return this.c[(this.b - paramInt1)] - this.c[(this.b - paramInt1 - paramInt2)];
    }
    return this.c[(paramInt1 + paramInt2)] - this.c[paramInt1];
  }
  
  private void h(int paramInt)
  {
    int[] arrayOfInt2 = this.c;
    int n = this.b;
    int[] arrayOfInt1;
    if ((arrayOfInt2 != null) && (arrayOfInt2.length == n + 1))
    {
      arrayOfInt1 = arrayOfInt2;
      if (arrayOfInt2[(arrayOfInt2.length - 1)] == paramInt) {}
    }
    else
    {
      arrayOfInt1 = new int[n + 1];
    }
    arrayOfInt1[0] = 0;
    int m = paramInt / n;
    int i1 = paramInt % n;
    int i = 1;
    paramInt = 0;
    int j = 0;
    int k;
    if (i <= n)
    {
      paramInt += i1;
      if ((paramInt <= 0) || (n - paramInt >= i1)) {
        break label133;
      }
      k = m + 1;
      paramInt -= n;
    }
    for (;;)
    {
      j += k;
      arrayOfInt1[i] = j;
      i += 1;
      break;
      this.c = arrayOfInt1;
      return;
      label133:
      k = m;
    }
  }
  
  public final int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    A();
    B();
    return super.a(paramInt, paramRecycler, paramState);
  }
  
  public final int a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (this.i == 0) {
      return this.b;
    }
    if (paramState.b() <= 0) {
      return 0;
    }
    return a(paramRecycler, paramState, paramState.b() - 1) + 1;
  }
  
  public final View a(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    View localView1;
    View localView3;
    if (this.q == null)
    {
      localView1 = null;
      if (localView1 != null) {
        break label63;
      }
      localView3 = null;
    }
    label63:
    Object localObject;
    int i6;
    int i7;
    label130:
    int m;
    label147:
    int n;
    int i2;
    int i3;
    View localView2;
    int i;
    int j;
    int i1;
    label258:
    label263:
    label277:
    label283:
    LayoutParams localLayoutParams;
    int i9;
    int i10;
    do
    {
      return localView3;
      localView1 = this.q.c(paramView);
      if (localView1 == null)
      {
        localView1 = null;
        break;
      }
      if (this.p.d(localView1))
      {
        localView1 = null;
        break;
      }
      break;
      localObject = (LayoutParams)localView1.getLayoutParams();
      i6 = ((LayoutParams)localObject).a;
      i7 = ((LayoutParams)localObject).a + ((LayoutParams)localObject).b;
      if (super.a(paramView, paramInt, paramRecycler, paramState) == null) {
        return null;
      }
      int i12;
      int k;
      if (e(paramInt) == 1)
      {
        i12 = 1;
        if (i12 == this.k) {
          break label258;
        }
        paramInt = 1;
        if (paramInt == 0) {
          break label263;
        }
        paramInt = p() - 1;
        m = -1;
        k = -1;
        if ((this.i != 1) || (!k())) {
          break label277;
        }
      }
      for (n = 1;; n = 0)
      {
        localObject = null;
        i2 = -1;
        i3 = 0;
        localView2 = null;
        i = -1;
        j = 0;
        int i8 = a(paramRecycler, paramState, paramInt);
        i1 = paramInt;
        if (i1 != k)
        {
          paramInt = a(paramRecycler, paramState, i1);
          paramView = f(i1);
          if (paramView != localView1)
          {
            if ((!paramView.hasFocusable()) || (paramInt == i8)) {
              break label283;
            }
            if (localObject == null) {
              break label641;
            }
          }
        }
        if (localObject == null) {
          break label638;
        }
        return (View)localObject;
        i12 = 0;
        break;
        paramInt = 0;
        break label130;
        paramInt = 0;
        m = 1;
        k = p();
        break label147;
      }
      localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      i9 = localLayoutParams.a;
      i10 = localLayoutParams.a + localLayoutParams.b;
      if ((!paramView.hasFocusable()) || (i9 != i6)) {
        break label336;
      }
      localView3 = paramView;
    } while (i10 == i7);
    label336:
    int i5 = 0;
    if (((paramView.hasFocusable()) && (localObject == null)) || ((!paramView.hasFocusable()) && (localView2 == null)))
    {
      paramInt = 1;
      label365:
      if (paramInt == 0) {
        break label641;
      }
      if (!paramView.hasFocusable()) {
        break label609;
      }
      i2 = localLayoutParams.a;
      i3 = Math.min(i10, i7) - Math.max(i9, i6);
      paramInt = j;
      localObject = paramView;
    }
    for (;;)
    {
      i1 += m;
      j = paramInt;
      break;
      paramInt = Math.max(i9, i6);
      int i11 = Math.min(i10, i7) - paramInt;
      if (paramView.hasFocusable())
      {
        if (i11 > i3)
        {
          paramInt = 1;
          break label365;
        }
        paramInt = i5;
        if (i11 != i3) {
          break label365;
        }
        if (i9 > i2) {}
        for (i4 = 1;; i4 = 0)
        {
          paramInt = i5;
          if (n != i4) {
            break;
          }
          paramInt = 1;
          break;
        }
      }
      paramInt = i5;
      if (localObject != null) {
        break label365;
      }
      if ((this.r.a(paramView)) && (this.s.a(paramView)))
      {
        paramInt = 1;
        label530:
        if (paramInt != 0) {
          break label562;
        }
      }
      label562:
      for (int i4 = 1;; i4 = 0)
      {
        paramInt = i5;
        if (i4 == 0) {
          break;
        }
        if (i11 <= j) {
          break label568;
        }
        paramInt = 1;
        break;
        paramInt = 0;
        break label530;
      }
      label568:
      paramInt = i5;
      if (i11 != j) {
        break label365;
      }
      if (i9 > i) {}
      for (i4 = 1;; i4 = 0)
      {
        paramInt = i5;
        if (n != i4) {
          break;
        }
        paramInt = 1;
        break;
      }
      label609:
      i = localLayoutParams.a;
      paramInt = Math.min(i10, i7) - Math.max(i9, i6);
      localView2 = paramView;
      continue;
      label638:
      return localView2;
      label641:
      paramInt = j;
    }
  }
  
  final View a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    l();
    int j = this.j.c();
    int k = this.j.d();
    int i;
    Object localObject1;
    Object localObject2;
    label37:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject1 = null;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label164;
      }
      localView = f(paramInt1);
      int m = e(localView);
      if ((m < 0) || (m >= paramInt3) || (b(paramRecycler, paramState, m) != 0)) {
        break label179;
      }
      if (!((RecyclerView.LayoutParams)localView.getLayoutParams()).c.n()) {
        break label120;
      }
      if (localObject2 != null) {
        break label179;
      }
      localObject2 = localView;
    }
    label120:
    label164:
    label176:
    label179:
    for (;;)
    {
      paramInt1 += i;
      break label37;
      i = -1;
      break;
      Object localObject3;
      if (this.j.a(localView) < k)
      {
        localObject3 = localView;
        if (this.j.b(localView) >= j) {}
      }
      else
      {
        if (localObject1 != null) {
          break label179;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label176;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  public final RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public final void a()
  {
    this.g.a.clear();
  }
  
  public final void a(int paramInt)
  {
    if (paramInt == this.b) {
      return;
    }
    this.a = true;
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    }
    this.b = paramInt;
    this.g.a.clear();
    n();
  }
  
  public final void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (this.c == null) {
      super.a(paramRect, paramInt1, paramInt2);
    }
    int i = u();
    int j = w() + i;
    int k = v() + x();
    if (this.i == 1)
    {
      i = a(paramInt2, k + paramRect.height(), ViewCompat.getMinimumHeight(this.q));
      paramInt2 = a(paramInt1, j + this.c[(this.c.length - 1)], ViewCompat.getMinimumWidth(this.q));
      paramInt1 = i;
    }
    for (;;)
    {
      d(paramInt2, paramInt1);
      return;
      i = a(paramInt1, j + paramRect.width(), ViewCompat.getMinimumWidth(this.q));
      paramInt1 = a(paramInt2, k + this.c[(this.c.length - 1)], ViewCompat.getMinimumHeight(this.q));
      paramInt2 = i;
    }
  }
  
  public final void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof LayoutParams))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramView = (LayoutParams)localLayoutParams;
    int i = a(paramRecycler, paramState, paramView.c.d());
    if (this.i == 0)
    {
      j = paramView.a;
      k = paramView.b;
      if ((this.b > 1) && (paramView.b == this.b)) {}
      for (bool = true;; bool = false)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, k, i, 1, bool, false));
        return;
      }
    }
    int j = paramView.a;
    int k = paramView.b;
    if ((this.b > 1) && (paramView.b == this.b)) {}
    for (boolean bool = true;; bool = false)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, k, bool, false));
      return;
    }
  }
  
  final void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.a parama, int paramInt)
  {
    int i = 1;
    super.a(paramRecycler, paramState, parama, paramInt);
    A();
    if ((paramState.b() > 0) && (!paramState.f))
    {
      if (paramInt == 1) {}
      for (paramInt = i;; paramInt = 0)
      {
        i = b(paramRecycler, paramState, parama.a);
        if (paramInt == 0) {
          break;
        }
        while ((i > 0) && (parama.a > 0))
        {
          parama.a -= 1;
          i = b(paramRecycler, paramState, parama.a);
        }
      }
      int k = paramState.b();
      paramInt = parama.a;
      while (paramInt < k - 1)
      {
        int j = b(paramRecycler, paramState, paramInt + 1);
        if (j <= i) {
          break;
        }
        paramInt += 1;
        i = j;
      }
      parama.a = paramInt;
    }
    B();
  }
  
  final void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.c paramc, LinearLayoutManager.b paramb)
  {
    int i3 = this.j.i();
    int j;
    int k;
    label38:
    boolean bool;
    label58:
    int n;
    if (i3 != 1073741824)
    {
      j = 1;
      if (p() <= 0) {
        break label212;
      }
      k = this.c[this.b];
      if (j != 0) {
        A();
      }
      if (paramc.e != 1) {
        break label218;
      }
      bool = true;
      m = 0;
      i = this.b;
      n = m;
      if (!bool)
      {
        i = b(paramRecycler, paramState, paramc.d) + c(paramRecycler, paramState, paramc.d);
        n = m;
      }
    }
    int i1;
    label212:
    label218:
    Object localObject;
    for (;;)
    {
      if ((n >= this.b) || (!paramc.a(paramState)) || (i <= 0)) {
        break label266;
      }
      m = paramc.d;
      i1 = c(paramRecycler, paramState, m);
      if (i1 > this.b)
      {
        throw new IllegalArgumentException("Item at position " + m + " requires " + i1 + " spans but GridLayoutManager has only " + this.b + " spans.");
        j = 0;
        break;
        k = 0;
        break label38;
        bool = false;
        break label58;
      }
      i -= i1;
      if (i < 0) {
        break label266;
      }
      localObject = paramc.a(paramRecycler);
      if (localObject == null) {
        break label266;
      }
      this.d[n] = localObject;
      n += 1;
    }
    label266:
    if (n == 0)
    {
      paramb.b = true;
      return;
    }
    int i = 0;
    float f1 = 0.0F;
    a(paramRecycler, paramState, n, bool);
    int m = 0;
    label329:
    int i2;
    if (m < n)
    {
      paramRecycler = this.d[m];
      if (paramc.k == null) {
        if (bool)
        {
          c(paramRecycler);
          b(paramRecycler, this.h);
          a(paramRecycler, i3, false);
          i2 = this.j.e(paramRecycler);
          i1 = i;
          if (i2 > i) {
            i1 = i2;
          }
          paramState = (LayoutParams)paramRecycler.getLayoutParams();
          float f2 = this.j.f(paramRecycler) * 1.0F / paramState.b;
          if (f2 <= f1) {
            break label1148;
          }
          f1 = f2;
        }
      }
    }
    label545:
    label711:
    label812:
    label1048:
    label1096:
    label1136:
    label1145:
    label1148:
    for (;;)
    {
      m += 1;
      i = i1;
      break;
      d(paramRecycler);
      break label329;
      if (bool)
      {
        a(paramRecycler);
        break label329;
      }
      b(paramRecycler);
      break label329;
      if (j != 0)
      {
        h(Math.max(Math.round(this.b * f1), k));
        i = 0;
        k = 0;
        j = i;
        if (k >= n) {
          break label545;
        }
        paramRecycler = this.d[k];
        a(paramRecycler, 1073741824, true);
        j = this.j.e(paramRecycler);
        if (j <= i) {
          break label1145;
        }
        i = j;
      }
      for (;;)
      {
        k += 1;
        break;
        j = i;
        i = 0;
        if (i < n)
        {
          paramRecycler = this.d[i];
          if (this.j.e(paramRecycler) != j)
          {
            paramState = (LayoutParams)paramRecycler.getLayoutParams();
            localObject = paramState.d;
            m = ((Rect)localObject).top + ((Rect)localObject).bottom + paramState.topMargin + paramState.bottomMargin;
            k = ((Rect)localObject).left;
            k = ((Rect)localObject).right + k + paramState.leftMargin + paramState.rightMargin;
            i1 = e(paramState.a, paramState.b);
            if (this.i != 1) {
              break label711;
            }
            k = a(i1, 1073741824, k, paramState.width, false);
          }
          for (m = View.MeasureSpec.makeMeasureSpec(j - m, 1073741824);; m = a(i1, 1073741824, m, paramState.height, false))
          {
            a(paramRecycler, k, m, true);
            i += 1;
            break;
            k = View.MeasureSpec.makeMeasureSpec(j - k, 1073741824);
          }
        }
        paramb.a = j;
        i1 = 0;
        m = 0;
        k = 0;
        if (this.i == 1) {
          if (paramc.f == -1)
          {
            i = paramc.b;
            k = i - j;
            j = i1;
            i1 = 0;
            i2 = j;
            j = i;
            i = k;
            k = i2;
            if (i1 >= n) {
              break label1136;
            }
            paramRecycler = this.d[i1];
            paramState = (LayoutParams)paramRecycler.getLayoutParams();
            if (this.i != 1) {
              break label1096;
            }
            if (!k()) {
              break label1048;
            }
            k = u();
            m = this.c[(this.b - paramState.a)] + k;
            i2 = m - this.j.f(paramRecycler);
            k = i;
            i = i2;
          }
        }
        for (;;)
        {
          a(paramRecycler, i, k, m, j);
          if ((paramState.c.n()) || (paramState.c.t())) {
            paramb.c = true;
          }
          paramb.d |= paramRecycler.hasFocusable();
          i2 = i1 + 1;
          i1 = k;
          k = i;
          i = i1;
          i1 = i2;
          break label812;
          k = paramc.b;
          i = j + k;
          j = i1;
          break;
          if (paramc.f == -1)
          {
            m = paramc.b;
            j = m - j;
            i = 0;
            break;
          }
          i = paramc.b;
          m = i + j;
          i1 = 0;
          j = i;
          i = i1;
          break;
          m = u() + this.c[paramState.a];
          i2 = this.j.f(paramRecycler);
          k = i;
          i2 += m;
          i = m;
          m = i2;
          continue;
          i2 = v() + this.c[paramState.a];
          j = i2 + this.j.f(paramRecycler);
          i = k;
          k = i2;
        }
        Arrays.fill(this.d, null);
        return;
      }
    }
  }
  
  public final void a(RecyclerView.State paramState)
  {
    super.a(paramState);
    this.a = false;
  }
  
  final void a(RecyclerView.State paramState, LinearLayoutManager.c paramc, RecyclerView.LayoutManager.a parama)
  {
    int j = this.b;
    int i = 0;
    while ((i < this.b) && (paramc.a(paramState)) && (j > 0))
    {
      parama.a(paramc.d, Math.max(0, paramc.g));
      j -= 1;
      paramc.d += paramc.e;
      i += 1;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }
    super.a(false);
  }
  
  public final boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public final int b(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    A();
    B();
    return super.b(paramInt, paramRecycler, paramState);
  }
  
  public final int b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (this.i == 1) {
      return this.b;
    }
    if (paramState.b() <= 0) {
      return 0;
    }
    return a(paramRecycler, paramState, paramState.b() - 1) + 1;
  }
  
  public final void b()
  {
    this.g.a.clear();
  }
  
  public final void c()
  {
    this.g.a.clear();
  }
  
  public final void c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (paramState.f)
    {
      int j = p();
      int i = 0;
      while (i < j)
      {
        LayoutParams localLayoutParams = (LayoutParams)f(i).getLayoutParams();
        int k = localLayoutParams.c.d();
        this.e.put(k, localLayoutParams.b);
        this.f.put(k, localLayoutParams.a);
        i += 1;
      }
    }
    super.c(paramRecycler, paramState);
    this.e.clear();
    this.f.clear();
  }
  
  public final void d()
  {
    this.g.a.clear();
  }
  
  public final void e()
  {
    this.g.a.clear();
  }
  
  public final RecyclerView.LayoutParams f()
  {
    if (this.i == 0) {
      return new LayoutParams(-2, -1);
    }
    return new LayoutParams(-1, -2);
  }
  
  public final boolean g()
  {
    return (this.n == null) && (!this.a);
  }
  
  public static final class DefaultSpanSizeLookup
    extends GridLayoutManager.SpanSizeLookup
  {
    public final int a(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    int a = -1;
    int b = 0;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public LayoutParams(RecyclerView.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract class SpanSizeLookup
  {
    final SparseIntArray a = new SparseIntArray();
    private boolean b = false;
    
    public static int c(int paramInt1, int paramInt2)
    {
      int m = 0;
      int j = 0;
      int i = 0;
      if (m < paramInt1)
      {
        int n = i + 1;
        int k;
        if (n == paramInt2)
        {
          k = j + 1;
          i = 0;
        }
        for (;;)
        {
          m += 1;
          j = k;
          break;
          k = j;
          i = n;
          if (n > paramInt2)
          {
            i = 1;
            k = j + 1;
          }
        }
      }
      paramInt1 = j;
      if (i + 1 > paramInt2) {
        paramInt1 = j + 1;
      }
      return paramInt1;
    }
    
    public int a(int paramInt1, int paramInt2)
    {
      if (1 == paramInt2) {
        return 0;
      }
      int j;
      int i;
      int k;
      if ((this.b) && (this.a.size() > 0))
      {
        j = this.a.size() - 1;
        i = 0;
        while (i <= j)
        {
          k = i + j >>> 1;
          if (this.a.keyAt(k) < paramInt1) {
            i = k + 1;
          } else {
            j = k - 1;
          }
        }
        i -= 1;
        if ((i >= 0) && (i < this.a.size()))
        {
          i = this.a.keyAt(i);
          if (i < 0) {
            break label193;
          }
          j = this.a.get(i) + 1;
          k = i + 1;
          i = j;
          j = k;
        }
      }
      for (;;)
      {
        label137:
        if (j < paramInt1)
        {
          k = i + 1;
          if (k == paramInt2) {
            i = 0;
          }
          for (;;)
          {
            j += 1;
            break label137;
            i = -1;
            break;
            i = k;
            if (k > paramInt2) {
              i = 1;
            }
          }
        }
        if (i + 1 > paramInt2) {
          break;
        }
        return i;
        label193:
        j = 0;
        i = 0;
      }
    }
    
    final int b(int paramInt1, int paramInt2)
    {
      int i;
      if (!this.b) {
        i = a(paramInt1, paramInt2);
      }
      int j;
      do
      {
        return i;
        j = this.a.get(paramInt1, -1);
        i = j;
      } while (j != -1);
      paramInt2 = a(paramInt1, paramInt2);
      this.a.put(paramInt1, paramInt2);
      return paramInt2;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\GridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */