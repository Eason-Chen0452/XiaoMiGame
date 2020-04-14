package com.xiaomi.android.support.v7.widget;

import android.graphics.Rect;
import android.view.View;

public abstract class r
{
  protected final RecyclerView.LayoutManager a;
  final Rect b = new Rect();
  private int c = Integer.MIN_VALUE;
  
  private r(RecyclerView.LayoutManager paramLayoutManager)
  {
    this.a = paramLayoutManager;
  }
  
  public abstract int a(View paramView);
  
  public final void a()
  {
    this.c = f();
  }
  
  public abstract void a(int paramInt);
  
  public final int b()
  {
    if (Integer.MIN_VALUE == this.c) {
      return 0;
    }
    return f() - this.c;
  }
  
  public abstract int b(View paramView);
  
  public abstract int c();
  
  public abstract int c(View paramView);
  
  public abstract int d();
  
  public abstract int d(View paramView);
  
  public abstract int e();
  
  public abstract int e(View paramView);
  
  public abstract int f();
  
  public abstract int f(View paramView);
  
  public abstract int g();
  
  public abstract int h();
  
  public abstract int i();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */