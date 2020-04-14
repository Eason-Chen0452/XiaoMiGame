package com.xiaomi.android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

final class b
{
  final b a;
  final a b;
  final List<View> c;
  
  b(b paramb)
  {
    this.a = paramb;
    this.b = new a();
    this.c = new ArrayList();
  }
  
  private int e(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = this.a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - this.b.e(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!this.b.c(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  private void h(View paramView)
  {
    this.c.add(paramView);
    this.a.c(paramView);
  }
  
  private boolean i(View paramView)
  {
    if (this.c.remove(paramView))
    {
      this.a.d(paramView);
      return true;
    }
    return false;
  }
  
  final int a()
  {
    return this.a.a() - this.c.size();
  }
  
  final void a(int paramInt)
  {
    paramInt = e(paramInt);
    View localView = this.a.b(paramInt);
    if (localView == null) {
      return;
    }
    if (this.b.d(paramInt)) {
      i(localView);
    }
    this.a.a(paramInt);
  }
  
  final void a(View paramView)
  {
    a(paramView, -1, true);
  }
  
  final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.a.a();; paramInt = e(paramInt))
    {
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        h(paramView);
      }
      this.a.a(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.a.a();; paramInt = e(paramInt))
    {
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        h(paramView);
      }
      this.a.a(paramView, paramInt);
      return;
    }
  }
  
  final int b()
  {
    return this.a.a();
  }
  
  final View b(int paramInt)
  {
    paramInt = e(paramInt);
    return this.a.b(paramInt);
  }
  
  final void b(View paramView)
  {
    int i = this.a.a(paramView);
    if (i < 0) {
      return;
    }
    if (this.b.d(i)) {
      i(paramView);
    }
    this.a.a(i);
  }
  
  final int c(View paramView)
  {
    int i = this.a.a(paramView);
    if (i == -1) {}
    while (this.b.c(i)) {
      return -1;
    }
    return i - this.b.e(i);
  }
  
  final View c(int paramInt)
  {
    return this.a.b(paramInt);
  }
  
  final void d(int paramInt)
  {
    paramInt = e(paramInt);
    this.b.d(paramInt);
    this.a.c(paramInt);
  }
  
  final boolean d(View paramView)
  {
    return this.c.contains(paramView);
  }
  
  final void e(View paramView)
  {
    int i = this.a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    this.b.a(i);
    h(paramView);
  }
  
  final void f(View paramView)
  {
    int i = this.a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    if (!this.b.c(i)) {
      throw new RuntimeException("trying to unhide a view that was not hidden" + paramView);
    }
    this.b.b(i);
    i(paramView);
  }
  
  final boolean g(View paramView)
  {
    int i = this.a.a(paramView);
    if (i == -1)
    {
      i(paramView);
      return true;
    }
    if (this.b.c(i))
    {
      this.b.d(i);
      i(paramView);
      this.a.a(i);
      return true;
    }
    return false;
  }
  
  public final String toString()
  {
    return this.b.toString() + ", hidden list:" + this.c.size();
  }
  
  static final class a
  {
    long a = 0L;
    a b;
    
    private void a()
    {
      if (this.b == null) {
        this.b = new a();
      }
    }
    
    final void a(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = locala.b;
        paramInt -= 64;
      }
      locala.a |= 1L << paramInt;
    }
    
    final void a(int paramInt, boolean paramBoolean)
    {
      boolean bool = paramBoolean;
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = locala.b;
        paramInt -= 64;
      }
      if ((locala.a & 0x8000000000000000) != 0L)
      {
        paramBoolean = true;
        label47:
        long l1 = (1L << paramInt) - 1L;
        long l2 = locala.a;
        locala.a = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & locala.a) << 1 | l2 & l1);
        if (!bool) {
          break label132;
        }
        locala.a(paramInt);
      }
      for (;;)
      {
        if ((!paramBoolean) && (locala.b == null)) {
          return;
        }
        locala.a();
        locala = locala.b;
        paramInt = 0;
        bool = paramBoolean;
        break;
        paramBoolean = false;
        break label47;
        label132:
        locala.b(paramInt);
      }
    }
    
    final void b(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        if (locala.b == null) {
          return;
        }
        locala = locala.b;
        paramInt -= 64;
      }
      locala.a &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
    }
    
    final boolean c(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = locala.b;
        paramInt -= 64;
      }
      return (locala.a & 1L << paramInt) != 0L;
    }
    
    final boolean d(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = locala.b;
        paramInt -= 64;
      }
      long l1 = 1L << paramInt;
      if ((locala.a & l1) != 0L) {}
      for (boolean bool = true;; bool = false)
      {
        locala.a &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
        l1 -= 1L;
        long l2 = locala.a;
        locala.a = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & locala.a, 1) | l2 & l1);
        if (locala.b != null)
        {
          if (locala.b.c(0)) {
            locala.a(63);
          }
          locala.b.d(0);
        }
        return bool;
      }
    }
    
    final int e(int paramInt)
    {
      if (this.b == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(this.a);
        }
        return Long.bitCount(this.a & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(this.a & (1L << paramInt) - 1L);
      }
      return this.b.e(paramInt - 64) + Long.bitCount(this.a);
    }
    
    public final String toString()
    {
      if (this.b == null) {
        return Long.toBinaryString(this.a);
      }
      return this.b.toString() + "xx" + Long.toBinaryString(this.a);
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int a(View paramView);
    
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView, int paramInt);
    
    public abstract void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract View b(int paramInt);
    
    public abstract RecyclerView.ViewHolder b(View paramView);
    
    public abstract void b();
    
    public abstract void c(int paramInt);
    
    public abstract void c(View paramView);
    
    public abstract void d(View paramView);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */