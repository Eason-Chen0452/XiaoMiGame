package com.xiaomi.android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.xiaomi.android.support.v7.widget.helper.ItemTouchHelper.b;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.LayoutManager
  implements RecyclerView.SmoothScroller.a, ItemTouchHelper.b
{
  private c a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  private final b g = new b();
  private int h = 2;
  int i;
  r j;
  boolean k = false;
  int l = -1;
  int m = Integer.MIN_VALUE;
  SavedState n = null;
  final a o = new a();
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    a(paramInt);
    b(paramBoolean);
    this.w = true;
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext.a);
    b(paramContext.c);
    a(paramContext.d);
    this.w = true;
  }
  
  private void A()
  {
    boolean bool = true;
    if ((this.i == 1) || (!k())) {
      bool = this.c;
    }
    for (;;)
    {
      this.k = bool;
      return;
      if (this.c) {
        bool = false;
      }
    }
  }
  
  private boolean B()
  {
    return (this.j.h() == 0) && (this.j.e() == 0);
  }
  
  private View C()
  {
    if (this.k) {}
    for (int i1 = p() - 1;; i1 = 0) {
      return f(i1);
    }
  }
  
  private View D()
  {
    if (this.k) {}
    for (int i1 = 0;; i1 = p() - 1) {
      return f(i1);
    }
  }
  
  private View E()
  {
    return h(0, p());
  }
  
  private View F()
  {
    return h(p() - 1, -1);
  }
  
  private int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = this.j.d() - paramInt;
    if (i1 > 0)
    {
      int i2 = -c(-i1, paramRecycler, paramState);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = this.j.d() - (paramInt + i2);
        i1 = i2;
        if (paramInt > 0)
        {
          this.j.a(paramInt);
          i1 = i2 + paramInt;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private int a(RecyclerView.Recycler paramRecycler, c paramc, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i3 = paramc.c;
    if (paramc.g != Integer.MIN_VALUE)
    {
      if (paramc.c < 0) {
        paramc.g += paramc.c;
      }
      a(paramRecycler, paramc);
    }
    int i1 = paramc.c + paramc.h;
    b localb = this.g;
    do
    {
      int i2;
      do
      {
        if (((!paramc.l) && (i1 <= 0)) || (!paramc.a(paramState))) {
          break;
        }
        localb.a = 0;
        localb.b = false;
        localb.c = false;
        localb.d = false;
        a(paramRecycler, paramState, paramc, localb);
        if (localb.b) {
          break;
        }
        paramc.b += localb.a * paramc.f;
        if ((localb.c) && (this.a.k == null))
        {
          i2 = i1;
          if (paramState.f) {}
        }
        else
        {
          paramc.c -= localb.a;
          i2 = i1 - localb.a;
        }
        if (paramc.g != Integer.MIN_VALUE)
        {
          paramc.g += localb.a;
          if (paramc.c < 0) {
            paramc.g += paramc.c;
          }
          a(paramRecycler, paramc);
        }
        i1 = i2;
      } while (!paramBoolean);
      i1 = i2;
    } while (!localb.d);
    return i3 - paramc.c;
  }
  
  private View a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    l();
    if (paramBoolean) {}
    for (int i1 = 24579; this.i == 0; i1 = 320) {
      return this.r.a(paramInt1, paramInt2, i1, 320);
    }
    return this.s.a(paramInt1, paramInt2, i1, 320);
  }
  
  private void a(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    a(null);
    if (paramInt == this.i) {
      return;
    }
    this.i = paramInt;
    this.j = null;
    n();
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.State paramState)
  {
    int i1 = -1;
    int i2 = 1;
    this.a.l = B();
    this.a.h = h(paramState);
    this.a.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramState = this.a;
      paramState.h += this.j.g();
      paramState = D();
      localc = this.a;
      if (this.k) {}
      for (paramInt1 = i1;; paramInt1 = 1)
      {
        localc.e = paramInt1;
        this.a.d = (e(paramState) + this.a.e);
        this.a.b = this.j.b(paramState);
        paramInt1 = this.j.b(paramState) - this.j.d();
        this.a.c = paramInt2;
        if (paramBoolean)
        {
          paramState = this.a;
          paramState.c -= paramInt1;
        }
        this.a.g = paramInt1;
        return;
      }
    }
    paramState = C();
    c localc = this.a;
    localc.h += this.j.c();
    localc = this.a;
    if (this.k) {}
    for (paramInt1 = i2;; paramInt1 = -1)
    {
      localc.e = paramInt1;
      this.a.d = (e(paramState) + this.a.e);
      this.a.b = this.j.a(paramState);
      paramInt1 = -this.j.a(paramState) + this.j.c();
      break;
    }
  }
  
  private void a(a parama)
  {
    e(parama.a, parama.b);
  }
  
  private void a(RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i1 = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramRecycler);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i1 > paramInt2)
        {
          a(i1, paramRecycler);
          i1 -= 1;
        }
      }
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, c paramc)
  {
    if ((!paramc.a) || (paramc.l)) {}
    for (;;)
    {
      return;
      int i1;
      int i2;
      int i3;
      if (paramc.f == -1)
      {
        i1 = paramc.g;
        i2 = p();
        if (i1 >= 0)
        {
          i3 = this.j.e() - i1;
          if (this.k)
          {
            i1 = 0;
            while (i1 < i2)
            {
              paramc = f(i1);
              if ((this.j.a(paramc) < i3) || (this.j.d(paramc) < i3))
              {
                a(paramRecycler, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
          else
          {
            i1 = i2 - 1;
            while (i1 >= 0)
            {
              paramc = f(i1);
              if ((this.j.a(paramc) < i3) || (this.j.d(paramc) < i3))
              {
                a(paramRecycler, i2 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
        }
      }
      else
      {
        i2 = paramc.g;
        if (i2 >= 0)
        {
          i3 = p();
          if (this.k)
          {
            i1 = i3 - 1;
            while (i1 >= 0)
            {
              paramc = f(i1);
              if ((this.j.b(paramc) > i2) || (this.j.c(paramc) > i2))
              {
                a(paramRecycler, i3 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
          else
          {
            i1 = 0;
            while (i1 < i3)
            {
              paramc = f(i1);
              if ((this.j.b(paramc) > i2) || (this.j.c(paramc) > i2))
              {
                a(paramRecycler, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
        }
      }
    }
  }
  
  private int b(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = paramInt - this.j.c();
    if (i1 > 0)
    {
      int i2 = -c(i1, paramRecycler, paramState);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = paramInt + i2 - this.j.c();
        i1 = i2;
        if (paramInt > 0)
        {
          this.j.a(-paramInt);
          i1 = i2 - paramInt;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private void b(a parama)
  {
    f(parama.a, parama.b);
  }
  
  private void b(boolean paramBoolean)
  {
    a(null);
    if (paramBoolean == this.c) {
      return;
    }
    this.c = paramBoolean;
    n();
  }
  
  private int c(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if ((p() == 0) || (paramInt == 0)) {
      return 0;
    }
    this.a.a = true;
    l();
    if (paramInt > 0) {}
    int i2;
    int i3;
    for (int i1 = 1;; i1 = -1)
    {
      i2 = Math.abs(paramInt);
      a(i1, i2, true, paramState);
      i3 = this.a.g + a(paramRecycler, this.a, paramState, false);
      if (i3 >= 0) {
        break;
      }
      return 0;
    }
    if (i2 > i3) {
      paramInt = i1 * i3;
    }
    this.j.a(-paramInt);
    this.a.j = paramInt;
    return paramInt;
  }
  
  private View c(boolean paramBoolean)
  {
    if (this.k) {
      return a(p() - 1, -1, paramBoolean);
    }
    return a(0, p(), paramBoolean);
  }
  
  private View d(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return a(paramRecycler, paramState, p() - 1, -1, paramState.b());
  }
  
  private View d(boolean paramBoolean)
  {
    if (this.k) {
      return a(0, p(), paramBoolean);
    }
    return a(p() - 1, -1, paramBoolean);
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    this.a.c = (this.j.d() - paramInt2);
    c localc = this.a;
    if (this.k) {}
    for (int i1 = -1;; i1 = 1)
    {
      localc.e = i1;
      this.a.d = paramInt1;
      this.a.f = 1;
      this.a.b = paramInt2;
      this.a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void f(int paramInt1, int paramInt2)
  {
    this.a.c = (paramInt2 - this.j.c());
    this.a.d = paramInt1;
    c localc = this.a;
    if (this.k) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      localc.e = paramInt1;
      this.a.f = -1;
      this.a.b = paramInt2;
      this.a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void g(int paramInt1, int paramInt2)
  {
    this.l = paramInt1;
    this.m = paramInt2;
    if (this.n != null) {
      this.n.a = -1;
    }
    n();
  }
  
  private int h(RecyclerView.State paramState)
  {
    if (paramState.a()) {
      return this.j.f();
    }
    return 0;
  }
  
  private View h(int paramInt1, int paramInt2)
  {
    l();
    if (paramInt2 > paramInt1) {
      i1 = 1;
    }
    while (i1 == 0)
    {
      return f(paramInt1);
      if (paramInt2 < paramInt1) {
        i1 = -1;
      } else {
        i1 = 0;
      }
    }
    int i2;
    if (this.j.a(f(paramInt1)) < this.j.c()) {
      i2 = 16644;
    }
    for (int i1 = 16388; this.i == 0; i1 = 4097)
    {
      return this.r.a(paramInt1, paramInt2, i2, i1);
      i2 = 4161;
    }
    return this.s.a(paramInt1, paramInt2, i2, i1);
  }
  
  private int i(RecyclerView.State paramState)
  {
    boolean bool2 = true;
    int i1 = 0;
    if (p() == 0) {
      i2 = i1;
    }
    r localr;
    boolean bool1;
    label40:
    View localView1;
    label59:
    View localView2;
    do
    {
      do
      {
        do
        {
          do
          {
            return i2;
            l();
            localr = this.j;
            if (this.e) {
              break;
            }
            bool1 = true;
            localView1 = c(bool1);
            if (this.e) {
              break label256;
            }
            bool1 = bool2;
            localView2 = d(bool1);
            bool1 = this.e;
            bool2 = this.k;
            i2 = i1;
          } while (p() == 0);
          i2 = i1;
        } while (paramState.b() == 0);
        i2 = i1;
      } while (localView1 == null);
      i2 = i1;
    } while (localView2 == null);
    i1 = Math.min(RecyclerView.LayoutManager.e(localView1), RecyclerView.LayoutManager.e(localView2));
    int i2 = Math.max(RecyclerView.LayoutManager.e(localView1), RecyclerView.LayoutManager.e(localView2));
    if (bool2) {}
    for (i1 = Math.max(0, paramState.b() - i2 - 1);; i1 = Math.max(0, i1))
    {
      i2 = i1;
      if (!bool1) {
        break;
      }
      i2 = Math.abs(localr.b(localView2) - localr.a(localView1));
      int i3 = Math.abs(RecyclerView.LayoutManager.e(localView1) - RecyclerView.LayoutManager.e(localView2));
      float f1 = i2 / (i3 + 1);
      float f2 = i1;
      return Math.round(localr.c() - localr.a(localView1) + f1 * f2);
      bool1 = false;
      break label40;
      label256:
      bool1 = false;
      break label59;
    }
  }
  
  private int j(RecyclerView.State paramState)
  {
    boolean bool2 = true;
    if (p() == 0) {
      return 0;
    }
    l();
    r localr = this.j;
    label32:
    View localView1;
    if (!this.e)
    {
      bool1 = true;
      localView1 = c(bool1);
      if (this.e) {
        break label117;
      }
    }
    View localView2;
    label117:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView2 = d(bool1);
      bool1 = this.e;
      if ((p() == 0) || (paramState.b() == 0) || (localView1 == null) || (localView2 == null)) {
        break;
      }
      if (bool1) {
        break label123;
      }
      return Math.abs(RecyclerView.LayoutManager.e(localView1) - RecyclerView.LayoutManager.e(localView2)) + 1;
      bool1 = false;
      break label32;
    }
    label123:
    int i1 = localr.b(localView2);
    int i2 = localr.a(localView1);
    return Math.min(localr.f(), i1 - i2);
  }
  
  private int k(RecyclerView.State paramState)
  {
    boolean bool2 = true;
    if (p() == 0) {
      return 0;
    }
    l();
    r localr = this.j;
    label32:
    View localView1;
    if (!this.e)
    {
      bool1 = true;
      localView1 = c(bool1);
      if (this.e) {
        break label105;
      }
    }
    View localView2;
    label105:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView2 = d(bool1);
      bool1 = this.e;
      if ((p() == 0) || (paramState.b() == 0) || (localView1 == null) || (localView2 == null)) {
        break;
      }
      if (bool1) {
        break label111;
      }
      return paramState.b();
      bool1 = false;
      break label32;
    }
    label111:
    int i1 = localr.b(localView2);
    int i2 = localr.a(localView1);
    int i3 = Math.abs(RecyclerView.LayoutManager.e(localView1) - RecyclerView.LayoutManager.e(localView2));
    return (int)((i1 - i2) / (i3 + 1) * paramState.b());
  }
  
  public int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (this.i == 1) {
      return 0;
    }
    return c(paramInt, paramRecycler, paramState);
  }
  
  public View a(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    A();
    if (p() == 0)
    {
      paramView = null;
      return paramView;
    }
    paramInt = e(paramInt);
    if (paramInt == Integer.MIN_VALUE) {
      return null;
    }
    l();
    l();
    a(paramInt, (int)(0.33333334F * this.j.f()), false, paramState);
    this.a.g = Integer.MIN_VALUE;
    this.a.a = false;
    a(paramRecycler, this.a, paramState, true);
    if (paramInt == -1) {
      if (this.k)
      {
        paramView = F();
        label105:
        paramRecycler = paramView;
        if (paramInt != -1) {
          break label163;
        }
      }
    }
    label163:
    for (paramView = C();; paramView = D())
    {
      if (!paramView.hasFocusable()) {
        return paramRecycler;
      }
      if (paramRecycler != null) {
        break;
      }
      return null;
      paramView = E();
      break label105;
      if (this.k) {}
      for (paramView = E();; paramView = F())
      {
        paramRecycler = paramView;
        break;
      }
    }
    return paramRecycler;
  }
  
  View a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    l();
    int i2 = this.j.c();
    int i3 = this.j.d();
    int i1;
    RecyclerView.State localState;
    if (paramInt2 > paramInt1)
    {
      i1 = 1;
      paramRecycler = null;
      localState = null;
      label36:
      if (paramInt1 == paramInt2) {
        break label142;
      }
      paramState = f(paramInt1);
      int i4 = e(paramState);
      if ((i4 < 0) || (i4 >= paramInt3)) {
        break label155;
      }
      if (!((RecyclerView.LayoutParams)paramState.getLayoutParams()).c.n()) {
        break label104;
      }
      if (localState != null) {
        break label155;
      }
      localState = paramState;
    }
    label104:
    label142:
    label152:
    label155:
    for (;;)
    {
      paramInt1 += i1;
      break label36;
      i1 = -1;
      break;
      Object localObject;
      if (this.j.a(paramState) < i3)
      {
        localObject = paramState;
        if (this.j.b(paramState) >= i2) {}
      }
      else
      {
        if (paramRecycler != null) {
          break label155;
        }
        paramRecycler = paramState;
        continue;
        if (paramRecycler == null) {
          break label152;
        }
        localObject = paramRecycler;
      }
      return (View)localObject;
      return localState;
    }
  }
  
  public final void a(int paramInt1, int paramInt2, RecyclerView.State paramState, RecyclerView.LayoutManager.a parama)
  {
    if (this.i == 0) {}
    while ((p() == 0) || (paramInt1 == 0))
    {
      return;
      paramInt1 = paramInt2;
    }
    if (paramInt1 > 0) {}
    for (paramInt2 = 1;; paramInt2 = -1)
    {
      a(paramInt2, Math.abs(paramInt1), true, paramState);
      a(paramState, this.a, parama);
      return;
    }
  }
  
  public final void a(int paramInt, RecyclerView.LayoutManager.a parama)
  {
    boolean bool;
    int i1;
    if ((this.n != null) && (this.n.a()))
    {
      bool = this.n.c;
      i1 = this.n.a;
      if (!bool) {
        break label136;
      }
    }
    label136:
    for (int i2 = -1;; i2 = 1)
    {
      int i4 = 0;
      int i3 = i1;
      i1 = i4;
      while ((i1 < this.h) && (i3 >= 0) && (i3 < paramInt))
      {
        parama.a(i3, 0);
        i3 += i2;
        i1 += 1;
      }
      A();
      bool = this.k;
      if (this.l == -1)
      {
        if (bool) {}
        for (i1 = paramInt - 1;; i1 = 0) {
          break;
        }
      }
      i1 = this.l;
      break;
    }
  }
  
  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      this.n = ((SavedState)paramParcelable);
      n();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public final void a(View paramView1, View paramView2)
  {
    a("Cannot drop a view during a scroll or layout calculation");
    l();
    A();
    int i1 = e(paramView1);
    int i2 = e(paramView2);
    if (i1 < i2) {
      i1 = 1;
    }
    while (this.k) {
      if (i1 == 1)
      {
        g(i2, this.j.d() - (this.j.a(paramView2) + this.j.e(paramView1)));
        return;
        i1 = -1;
      }
      else
      {
        g(i2, this.j.d() - this.j.b(paramView2));
        return;
      }
    }
    if (i1 == -1)
    {
      g(i2, this.j.a(paramView2));
      return;
    }
    g(i2, this.j.b(paramView2) - this.j.e(paramView1));
  }
  
  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int i2 = -1;
    super.a(paramAccessibilityEvent);
    View localView;
    if (p() > 0)
    {
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      localView = a(0, p(), false);
      if (localView != null) {
        break label70;
      }
      i1 = -1;
      paramAccessibilityEvent.setFromIndex(i1);
      localView = a(p() - 1, -1, false);
      if (localView != null) {
        break label79;
      }
    }
    label70:
    label79:
    for (int i1 = i2;; i1 = e(localView))
    {
      paramAccessibilityEvent.setToIndex(i1);
      return;
      i1 = e(localView);
      break;
    }
  }
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, a parama, int paramInt) {}
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, c paramc, b paramb)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    paramRecycler = paramc.a(paramRecycler);
    if (paramRecycler == null)
    {
      paramb.b = true;
      return;
    }
    paramState = (RecyclerView.LayoutParams)paramRecycler.getLayoutParams();
    int i3;
    int i4;
    int i1;
    int i2;
    label290:
    int i5;
    if (paramc.k == null)
    {
      bool2 = this.k;
      if (paramc.f == -1) {
        bool1 = true;
      }
      if (bool2 == bool1)
      {
        c(paramRecycler);
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramRecycler.getLayoutParams();
        Rect localRect = this.q.f(paramRecycler);
        i3 = localRect.left;
        i4 = localRect.right;
        i1 = localRect.top;
        i2 = localRect.bottom;
        i3 = RecyclerView.LayoutManager.a(s(), q(), i3 + i4 + 0 + (u() + w() + localLayoutParams.leftMargin + localLayoutParams.rightMargin), localLayoutParams.width, i());
        i1 = RecyclerView.LayoutManager.a(t(), r(), i2 + i1 + 0 + (v() + x() + localLayoutParams.topMargin + localLayoutParams.bottomMargin), localLayoutParams.height, j());
        if (b(paramRecycler, i3, i1, localLayoutParams)) {
          paramRecycler.measure(i3, i1);
        }
        paramb.a = this.j.e(paramRecycler);
        if (this.i != 1) {
          break label475;
        }
        if (!k()) {
          break label424;
        }
        i2 = s() - w();
        i1 = i2 - this.j.f(paramRecycler);
        if (paramc.f != -1) {
          break label446;
        }
        i5 = paramc.b;
        i4 = paramc.b - paramb.a;
        i3 = i1;
        i1 = i5;
      }
    }
    for (;;)
    {
      a(paramRecycler, i3, i4, i2, i1);
      if ((paramState.c.n()) || (paramState.c.t())) {
        paramb.c = true;
      }
      paramb.d = paramRecycler.hasFocusable();
      return;
      d(paramRecycler);
      break;
      boolean bool3 = this.k;
      bool1 = bool2;
      if (paramc.f == -1) {
        bool1 = true;
      }
      if (bool3 == bool1)
      {
        a(paramRecycler);
        break;
      }
      b(paramRecycler);
      break;
      label424:
      i1 = u();
      i2 = this.j.f(paramRecycler) + i1;
      break label290;
      label446:
      i4 = paramc.b;
      i5 = paramc.b + paramb.a;
      i3 = i1;
      i1 = i5;
      continue;
      label475:
      i4 = v();
      i1 = this.j.f(paramRecycler) + i4;
      if (paramc.f == -1)
      {
        i2 = paramc.b;
        i3 = paramc.b - paramb.a;
      }
      else
      {
        i3 = paramc.b;
        i2 = paramc.b;
        i5 = paramb.a;
        i2 += i5;
      }
    }
  }
  
  public void a(RecyclerView.State paramState)
  {
    super.a(paramState);
    this.n = null;
    this.l = -1;
    this.m = Integer.MIN_VALUE;
    this.o.a();
  }
  
  void a(RecyclerView.State paramState, c paramc, RecyclerView.LayoutManager.a parama)
  {
    int i1 = paramc.d;
    if ((i1 >= 0) && (i1 < paramState.b())) {
      parama.a(i1, Math.max(0, paramc.g));
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    super.a(paramRecyclerView, paramRecycler);
    if (this.f)
    {
      c(paramRecycler);
      paramRecycler.a();
    }
  }
  
  public final void a(String paramString)
  {
    if (this.n == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if (this.d == paramBoolean) {
      return;
    }
    this.d = paramBoolean;
    n();
  }
  
  public int b(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (this.i == 0) {
      return 0;
    }
    return c(paramInt, paramRecycler, paramState);
  }
  
  public final int b(RecyclerView.State paramState)
  {
    return i(paramState);
  }
  
  public final View b(int paramInt)
  {
    int i1 = p();
    Object localObject;
    if (i1 == 0) {
      localObject = null;
    }
    View localView;
    do
    {
      return (View)localObject;
      int i2 = paramInt - e(f(0));
      if ((i2 < 0) || (i2 >= i1)) {
        break;
      }
      localView = f(i2);
      localObject = localView;
    } while (e(localView) == paramInt);
    return super.b(paramInt);
  }
  
  public final int c(RecyclerView.State paramState)
  {
    return i(paramState);
  }
  
  public final PointF c(int paramInt)
  {
    int i1 = 1;
    int i2 = 0;
    if (p() == 0) {
      return null;
    }
    if (paramInt < e(f(0))) {
      i2 = 1;
    }
    paramInt = i1;
    if (i2 != this.k) {
      paramInt = -1;
    }
    if (this.i == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
  }
  
  public void c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (((this.n != null) || (this.l != -1)) && (paramState.b() == 0))
    {
      c(paramRecycler);
      return;
    }
    if ((this.n != null) && (this.n.a())) {
      this.l = this.n.a;
    }
    l();
    this.a.a = false;
    A();
    Object localObject2;
    Object localObject1;
    label164:
    label218:
    int i2;
    label247:
    label249:
    label272:
    label305:
    int i4;
    int i5;
    int i3;
    if ((!this.o.d) || (this.l != -1) || (this.n != null))
    {
      this.o.a();
      this.o.c = (this.k ^ this.d);
      localObject2 = this.o;
      if ((paramState.f) || (this.l == -1))
      {
        i1 = 0;
        if (i1 == 0)
        {
          if (p() == 0) {
            break label1794;
          }
          if (this.q != null) {
            break label1262;
          }
          localObject1 = null;
          if (localObject1 == null) {
            break label1609;
          }
          RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)((View)localObject1).getLayoutParams();
          if ((localLayoutParams.c.n()) || (localLayoutParams.c.d() < 0) || (localLayoutParams.c.d() >= paramState.b())) {
            break label1297;
          }
          i1 = 1;
          if (i1 == 0) {
            break label1609;
          }
          i2 = ((a)localObject2).e.j.b();
          if (i2 < 0) {
            break label1302;
          }
          ((a)localObject2).a((View)localObject1);
          i1 = 1;
          if (i1 == 0)
          {
            ((a)localObject2).b();
            if (!this.d) {
              break label1799;
            }
            i1 = paramState.b() - 1;
            ((a)localObject2).a = i1;
          }
        }
        this.o.d = true;
      }
    }
    else
    {
      i1 = h(paramState);
      if (this.a.j < 0) {
        break label1804;
      }
      i2 = 0;
      i4 = this.j.c() + i2;
      i5 = i1 + this.j.g();
      i2 = i5;
      i3 = i4;
      if (paramState.f)
      {
        i2 = i5;
        i3 = i4;
        if (this.l != -1)
        {
          i2 = i5;
          i3 = i4;
          if (this.m != Integer.MIN_VALUE)
          {
            localObject1 = b(this.l);
            i2 = i5;
            i3 = i4;
            if (localObject1 != null)
            {
              if (!this.k) {
                break label1816;
              }
              i1 = this.j.d() - this.j.b((View)localObject1) - this.m;
              label429:
              if (i1 <= 0) {
                break label1848;
              }
              i3 = i4 + i1;
              i2 = i5;
            }
          }
        }
      }
      label443:
      if (!this.o.c) {
        break label1866;
      }
      if (!this.k) {
        break label1861;
      }
      i1 = 1;
      label462:
      a(paramRecycler, paramState, this.o, i1);
      a(paramRecycler);
      this.a.l = B();
      this.a.i = paramState.f;
      if (!this.o.c) {
        break label1883;
      }
      b(this.o);
      this.a.h = i3;
      a(paramRecycler, this.a, paramState, false);
      i3 = this.a.b;
      i4 = this.a.d;
      i1 = i2;
      if (this.a.c > 0) {
        i1 = i2 + this.a.c;
      }
      a(this.o);
      this.a.h = i1;
      localObject1 = this.a;
      ((c)localObject1).d += this.a.e;
      a(paramRecycler, this.a, paramState, false);
      i2 = this.a.b;
      if (this.a.c <= 0) {
        break label2466;
      }
      i1 = this.a.c;
      f(i4, i3);
      this.a.h = i1;
      a(paramRecycler, this.a, paramState, false);
    }
    label706:
    label818:
    label1167:
    label1194:
    label1200:
    label1262:
    label1297:
    label1302:
    label1609:
    label1643:
    label1709:
    label1758:
    label1778:
    label1783:
    label1794:
    label1799:
    label1804:
    label1816:
    label1848:
    label1861:
    label1866:
    label1883:
    label2080:
    label2125:
    label2158:
    label2200:
    label2212:
    label2270:
    label2276:
    label2430:
    label2440:
    label2453:
    label2466:
    for (int i1 = this.a.b;; i1 = i3)
    {
      i3 = i2;
      i2 = i1;
      i1 = i3;
      for (;;)
      {
        i3 = i1;
        i4 = i2;
        if (p() > 0)
        {
          if (!(this.k ^ this.d)) {
            break label2080;
          }
          i3 = a(i1, paramRecycler, paramState, true);
          i4 = i2 + i3;
          i2 = b(i4, paramRecycler, paramState, false);
          i4 += i2;
        }
        boolean bool;
        int i6;
        for (i3 = i2 + (i3 + i1);; i3 = i5 + i1)
        {
          if ((paramState.j) && (p() != 0) && (!paramState.f) && (g())) {
            break label2125;
          }
          if (paramState.f) {
            break label2430;
          }
          this.j.a();
          this.b = this.d;
          return;
          if ((this.l < 0) || (this.l >= paramState.b()))
          {
            this.l = -1;
            this.m = Integer.MIN_VALUE;
            i1 = 0;
            break;
          }
          ((a)localObject2).a = this.l;
          if ((this.n != null) && (this.n.a()))
          {
            ((a)localObject2).c = this.n.c;
            if (((a)localObject2).c) {}
            for (((a)localObject2).b = (this.j.d() - this.n.b);; ((a)localObject2).b = (this.j.c() + this.n.b))
            {
              i1 = 1;
              break;
            }
          }
          if (this.m == Integer.MIN_VALUE)
          {
            localObject1 = b(this.l);
            if (localObject1 != null) {
              if (this.j.e((View)localObject1) > this.j.f()) {
                ((a)localObject2).b();
              }
            }
          }
          for (;;)
          {
            i1 = 1;
            break;
            if (this.j.a((View)localObject1) - this.j.c() < 0)
            {
              ((a)localObject2).b = this.j.c();
              ((a)localObject2).c = false;
            }
            else if (this.j.d() - this.j.b((View)localObject1) < 0)
            {
              ((a)localObject2).b = this.j.d();
              ((a)localObject2).c = true;
            }
            else
            {
              if (((a)localObject2).c) {}
              for (i1 = this.j.b((View)localObject1) + this.j.b();; i1 = this.j.a((View)localObject1))
              {
                ((a)localObject2).b = i1;
                i1 = 1;
                break;
              }
              if (p() > 0)
              {
                i1 = e(f(0));
                if (this.l >= i1) {
                  break label1194;
                }
                bool = true;
                if (bool != this.k) {
                  break label1200;
                }
              }
              for (bool = true;; bool = false)
              {
                ((a)localObject2).c = bool;
                ((a)localObject2).b();
                break;
                bool = false;
                break label1167;
              }
              ((a)localObject2).c = this.k;
              if (this.k) {
                ((a)localObject2).b = (this.j.d() - this.m);
              } else {
                ((a)localObject2).b = (this.j.c() + this.m);
              }
            }
          }
          localObject1 = this.q.getFocusedChild();
          if ((localObject1 == null) || (this.p.d((View)localObject1)))
          {
            localObject1 = null;
            break label164;
          }
          break label164;
          i1 = 0;
          break label218;
          ((a)localObject2).a = e((View)localObject1);
          if (((a)localObject2).c)
          {
            i1 = ((a)localObject2).e.j.d() - i2 - ((a)localObject2).e.j.b((View)localObject1);
            ((a)localObject2).b = (((a)localObject2).e.j.d() - i1);
            if (i1 <= 0) {
              break label247;
            }
            i2 = ((a)localObject2).e.j.e((View)localObject1);
            i3 = ((a)localObject2).b;
            i4 = ((a)localObject2).e.j.c();
            i2 = i3 - i2 - (Math.min(((a)localObject2).e.j.a((View)localObject1) - i4, 0) + i4);
            if (i2 >= 0) {
              break label247;
            }
            i3 = ((a)localObject2).b;
            ((a)localObject2).b = (Math.min(i1, -i2) + i3);
            break label247;
          }
          i3 = ((a)localObject2).e.j.a((View)localObject1);
          i1 = i3 - ((a)localObject2).e.j.c();
          ((a)localObject2).b = i3;
          if (i1 <= 0) {
            break label247;
          }
          i4 = ((a)localObject2).e.j.e((View)localObject1);
          i5 = ((a)localObject2).e.j.d();
          i6 = ((a)localObject2).e.j.b((View)localObject1);
          i2 = ((a)localObject2).e.j.d() - Math.min(0, i5 - i2 - i6) - (i3 + i4);
          if (i2 >= 0) {
            break label247;
          }
          ((a)localObject2).b -= Math.min(i1, -i2);
          break label247;
          if (this.b == this.d)
          {
            if (((a)localObject2).c)
            {
              if (this.k) {
                break label1758;
              }
              localObject1 = d(paramRecycler, paramState);
              if (localObject1 == null) {
                break label1794;
              }
              ((a)localObject2).a((View)localObject1);
              if ((!paramState.f) && (g()))
              {
                if ((this.j.a((View)localObject1) < this.j.d()) && (this.j.b((View)localObject1) >= this.j.c())) {
                  break label1778;
                }
                i1 = 1;
                if (i1 != 0) {
                  if (!((a)localObject2).c) {
                    break label1783;
                  }
                }
              }
            }
            for (i1 = this.j.d();; i1 = this.j.c())
            {
              ((a)localObject2).b = i1;
              i1 = 1;
              break;
              if (this.k)
              {
                localObject1 = d(paramRecycler, paramState);
                break label1643;
              }
              localObject1 = a(paramRecycler, paramState, 0, p(), paramState.b());
              break label1643;
              i1 = 0;
              break label1709;
            }
          }
          i1 = 0;
          break label249;
          i1 = 0;
          break label272;
          i3 = 0;
          i2 = i1;
          i1 = i3;
          break label305;
          i1 = this.j.a((View)localObject1);
          i2 = this.j.c();
          i1 = this.m - (i1 - i2);
          break label429;
          i2 = i5 - i1;
          i3 = i4;
          break label443;
          i1 = -1;
          break label462;
          if (this.k)
          {
            i1 = -1;
            break label462;
          }
          i1 = 1;
          break label462;
          a(this.o);
          this.a.h = i2;
          a(paramRecycler, this.a, paramState, false);
          i2 = this.a.b;
          i4 = this.a.d;
          i1 = i3;
          if (this.a.c > 0) {
            i1 = i3 + this.a.c;
          }
          b(this.o);
          this.a.h = i1;
          localObject1 = this.a;
          ((c)localObject1).d += this.a.e;
          a(paramRecycler, this.a, paramState, false);
          i1 = this.a.b;
          if (this.a.c <= 0) {
            break label2453;
          }
          i3 = this.a.c;
          e(i4, i2);
          this.a.h = i3;
          a(paramRecycler, this.a, paramState, false);
          i3 = this.a.b;
          i2 = i1;
          i1 = i3;
          break label706;
          i3 = b(i2, paramRecycler, paramState, true);
          i1 = i3 + i1;
          i5 = a(i1, paramRecycler, paramState, false);
          i4 = i2 + i3 + i5;
        }
        i1 = 0;
        i2 = 0;
        localObject1 = paramRecycler.c();
        int i7 = ((List)localObject1).size();
        int i8 = e(f(0));
        i5 = 0;
        if (i5 < i7)
        {
          localObject2 = (RecyclerView.ViewHolder)((List)localObject1).get(i5);
          if (((RecyclerView.ViewHolder)localObject2).n()) {
            break label2440;
          }
          if (((RecyclerView.ViewHolder)localObject2).d() < i8)
          {
            bool = true;
            if (bool == this.k) {
              break label2270;
            }
            i6 = -1;
            if (i6 != -1) {
              break label2276;
            }
            i6 = i1 + this.j.e(((RecyclerView.ViewHolder)localObject2).a);
            i1 = i2;
            i2 = i6;
          }
        }
        for (;;)
        {
          i6 = i5 + 1;
          i5 = i2;
          i2 = i1;
          i1 = i5;
          i5 = i6;
          break label2158;
          bool = false;
          break label2200;
          i6 = 1;
          break label2212;
          i6 = this.j.e(((RecyclerView.ViewHolder)localObject2).a) + i2;
          i2 = i1;
          i1 = i6;
          continue;
          this.a.k = ((List)localObject1);
          if (i1 > 0)
          {
            f(e(C()), i4);
            this.a.h = i1;
            this.a.c = 0;
            this.a.a(null);
            a(paramRecycler, this.a, paramState, false);
          }
          if (i2 > 0)
          {
            e(e(D()), i3);
            this.a.h = i2;
            this.a.c = 0;
            this.a.a(null);
            a(paramRecycler, this.a, paramState, false);
          }
          this.a.k = null;
          break;
          this.o.a();
          break label818;
          i6 = i1;
          i1 = i2;
          i2 = i6;
        }
        i3 = i1;
        i1 = i2;
        i2 = i3;
      }
    }
  }
  
  public final int d(RecyclerView.State paramState)
  {
    return j(paramState);
  }
  
  public final void d(int paramInt)
  {
    this.l = paramInt;
    this.m = Integer.MIN_VALUE;
    if (this.n != null) {
      this.n.a = -1;
    }
    n();
  }
  
  final int e(int paramInt)
  {
    int i1 = -1;
    switch (paramInt)
    {
    default: 
      paramInt = Integer.MIN_VALUE;
    case 1: 
    case 2: 
    case 33: 
    case 130: 
    case 17: 
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return paramInt;
                paramInt = i1;
              } while (this.i == 1);
              paramInt = i1;
            } while (!k());
            return 1;
            if (this.i == 1) {
              return 1;
            }
            paramInt = i1;
          } while (k());
          return 1;
          paramInt = i1;
        } while (this.i == 1);
        return Integer.MIN_VALUE;
        if (this.i == 1) {
          return 1;
        }
        return Integer.MIN_VALUE;
        paramInt = i1;
      } while (this.i == 0);
      return Integer.MIN_VALUE;
    }
    if (this.i == 0) {
      return 1;
    }
    return Integer.MIN_VALUE;
  }
  
  public final int e(RecyclerView.State paramState)
  {
    return j(paramState);
  }
  
  public final int f(RecyclerView.State paramState)
  {
    return k(paramState);
  }
  
  public RecyclerView.LayoutParams f()
  {
    return new RecyclerView.LayoutParams(-2, -2);
  }
  
  public final int g(RecyclerView.State paramState)
  {
    return k(paramState);
  }
  
  public boolean g()
  {
    return (this.n == null) && (this.b == this.d);
  }
  
  public final Parcelable h()
  {
    if (this.n != null) {
      return new SavedState(this.n);
    }
    SavedState localSavedState = new SavedState();
    if (p() > 0)
    {
      l();
      boolean bool = this.b ^ this.k;
      localSavedState.c = bool;
      if (bool)
      {
        localView = D();
        localSavedState.b = (this.j.d() - this.j.b(localView));
        localSavedState.a = e(localView);
        return localSavedState;
      }
      View localView = C();
      localSavedState.a = e(localView);
      localSavedState.b = (this.j.a(localView) - this.j.c());
      return localSavedState;
    }
    localSavedState.a = -1;
    return localSavedState;
  }
  
  public final boolean i()
  {
    return this.i == 0;
  }
  
  public boolean j()
  {
    return this.i == 1;
  }
  
  protected final boolean k()
  {
    return ViewCompat.getLayoutDirection(this.q) == 1;
  }
  
  final void l()
  {
    if (this.a == null) {
      this.a = new c();
    }
    if (this.j == null) {
      switch (this.i)
      {
      default: 
        throw new IllegalArgumentException("invalid orientation");
      }
    }
    for (Object localObject = new s(this);; localObject = new t(this))
    {
      this.j = ((r)localObject);
      return;
    }
  }
  
  final boolean m()
  {
    if ((r() != 1073741824) && (q() != 1073741824))
    {
      int i2 = p();
      int i1 = 0;
      if (i1 < i2)
      {
        ViewGroup.LayoutParams localLayoutParams = f(i1).getLayoutParams();
        if ((localLayoutParams.width >= 0) || (localLayoutParams.height >= 0)) {}
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label75;
        }
        return true;
        i1 += 1;
        break;
      }
    }
    label75:
    return false;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new p();
    int a;
    int b;
    boolean c;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      this.a = paramParcel.readInt();
      this.b = paramParcel.readInt();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        this.c = bool;
        return;
        bool = false;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      this.a = paramSavedState.a;
      this.b = paramSavedState.b;
      this.c = paramSavedState.c;
    }
    
    final boolean a()
    {
      return this.a >= 0;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.a);
      paramParcel.writeInt(this.b);
      if (this.c) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  final class a
  {
    int a;
    int b;
    boolean c;
    boolean d;
    
    a()
    {
      a();
    }
    
    final void a()
    {
      this.a = -1;
      this.b = Integer.MIN_VALUE;
      this.c = false;
      this.d = false;
    }
    
    public final void a(View paramView)
    {
      if (this.c) {}
      for (this.b = (LinearLayoutManager.this.j.b(paramView) + LinearLayoutManager.this.j.b());; this.b = LinearLayoutManager.this.j.a(paramView))
      {
        this.a = LinearLayoutManager.e(paramView);
        return;
      }
    }
    
    final void b()
    {
      if (this.c) {}
      for (int i = LinearLayoutManager.this.j.d();; i = LinearLayoutManager.this.j.c())
      {
        this.b = i;
        return;
      }
    }
    
    public final String toString()
    {
      return "AnchorInfo{mPosition=" + this.a + ", mCoordinate=" + this.b + ", mLayoutFromEnd=" + this.c + ", mValid=" + this.d + '}';
    }
  }
  
  protected static final class b
  {
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
  }
  
  static final class c
  {
    boolean a = true;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h = 0;
    boolean i = false;
    int j;
    List<RecyclerView.ViewHolder> k = null;
    boolean l;
    
    final View a(RecyclerView.Recycler paramRecycler)
    {
      if (this.k != null)
      {
        int n = this.k.size();
        int m = 0;
        while (m < n)
        {
          paramRecycler = ((RecyclerView.ViewHolder)this.k.get(m)).a;
          RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramRecycler.getLayoutParams();
          if ((!localLayoutParams.c.n()) && (this.d == localLayoutParams.c.d()))
          {
            a(paramRecycler);
            return paramRecycler;
          }
          m += 1;
        }
        return null;
      }
      paramRecycler = paramRecycler.a(this.d, Long.MAX_VALUE).a;
      this.d += this.e;
      return paramRecycler;
    }
    
    public final void a(View paramView)
    {
      int i2 = this.k.size();
      Object localObject = null;
      int m = Integer.MAX_VALUE;
      int n = 0;
      if (n < i2)
      {
        View localView = ((RecyclerView.ViewHolder)this.k.get(n)).a;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if ((localView == paramView) || (localLayoutParams.c.n())) {
          break label154;
        }
        int i1 = (localLayoutParams.c.d() - this.d) * this.e;
        if ((i1 < 0) || (i1 >= m)) {
          break label154;
        }
        localObject = localView;
        if (i1 != 0)
        {
          localObject = localView;
          m = i1;
        }
      }
      label154:
      for (;;)
      {
        n += 1;
        break;
        if (localObject == null)
        {
          this.d = -1;
          return;
        }
        this.d = ((RecyclerView.LayoutParams)((View)localObject).getLayoutParams()).c.d();
        return;
      }
    }
    
    final boolean a(RecyclerView.State paramState)
    {
      return (this.d >= 0) && (this.d < paramState.b());
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\LinearLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */