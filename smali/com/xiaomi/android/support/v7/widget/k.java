package com.xiaomi.android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import java.util.ArrayList;

@VisibleForTesting
final class k
  extends RecyclerView.ItemDecoration
  implements RecyclerView.e
{
  private static final int[] g = { 16842919 };
  private static final int[] h = new int[0];
  private final int[] A = new int[2];
  private final ValueAnimator B = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
  private int C = 0;
  private final Runnable D = new l(this);
  private final RecyclerView.OnScrollListener E = new m(this);
  @VisibleForTesting
  int a;
  @VisibleForTesting
  int b;
  @VisibleForTesting
  float c;
  @VisibleForTesting
  int d;
  @VisibleForTesting
  int e;
  @VisibleForTesting
  float f;
  private final int i;
  private final int j;
  private final StateListDrawable k;
  private final Drawable l;
  private final int m;
  private final int n;
  private final StateListDrawable o;
  private final Drawable p;
  private final int q;
  private final int r;
  private int s = 0;
  private int t = 0;
  private RecyclerView u;
  private boolean v = false;
  private boolean w = false;
  private int x = 0;
  private int y = 0;
  private final int[] z = new int[2];
  
  k(RecyclerView paramRecyclerView, StateListDrawable paramStateListDrawable1, Drawable paramDrawable1, StateListDrawable paramStateListDrawable2, Drawable paramDrawable2, int paramInt1, int paramInt2, int paramInt3)
  {
    this.k = paramStateListDrawable1;
    this.l = paramDrawable1;
    this.o = paramStateListDrawable2;
    this.p = paramDrawable2;
    this.m = Math.max(paramInt1, paramStateListDrawable1.getIntrinsicWidth());
    this.n = Math.max(paramInt1, paramDrawable1.getIntrinsicWidth());
    this.q = Math.max(paramInt1, paramStateListDrawable2.getIntrinsicWidth());
    this.r = Math.max(paramInt1, paramDrawable2.getIntrinsicWidth());
    this.i = paramInt2;
    this.j = paramInt3;
    this.k.setAlpha(255);
    this.l.setAlpha(255);
    this.B.addListener(new a((byte)0));
    this.B.addUpdateListener(new b((byte)0));
    if (this.u != paramRecyclerView)
    {
      if (this.u != null)
      {
        paramStateListDrawable1 = this.u;
        if (paramStateListDrawable1.m != null) {
          paramStateListDrawable1.m.a("Cannot remove item decoration during a scroll  or layout");
        }
        paramStateListDrawable1.o.remove(this);
        if (paramStateListDrawable1.o.isEmpty())
        {
          if (paramStateListDrawable1.getOverScrollMode() == 2) {
            bool = true;
          }
          paramStateListDrawable1.setWillNotDraw(bool);
        }
        paramStateListDrawable1.k();
        paramStateListDrawable1.requestLayout();
        this.u.b(this);
        this.u.b(this.E);
        d();
      }
      this.u = paramRecyclerView;
      if (this.u != null)
      {
        this.u.a(this);
        this.u.a(this);
        this.u.a(this.E);
      }
    }
  }
  
  private static int a(float paramFloat1, float paramFloat2, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = paramArrayOfInt[1] - paramArrayOfInt[0];
    if (i1 == 0) {}
    do
    {
      return 0;
      paramFloat1 = (paramFloat2 - paramFloat1) / i1;
      paramInt1 -= paramInt3;
      paramInt3 = (int)(paramFloat1 * paramInt1);
      paramInt2 += paramInt3;
    } while ((paramInt2 >= paramInt1) || (paramInt2 < 0));
    return paramInt3;
  }
  
  private void a(int paramInt)
  {
    if ((paramInt == 2) && (this.x != 2))
    {
      this.k.setState(g);
      d();
    }
    if (paramInt == 0)
    {
      this.u.invalidate();
      if ((this.x != 2) || (paramInt == 2)) {
        break label83;
      }
      this.k.setState(h);
      b(1200);
    }
    for (;;)
    {
      this.x = paramInt;
      return;
      c();
      break;
      label83:
      if (paramInt == 1) {
        b(1500);
      }
    }
  }
  
  @VisibleForTesting
  private boolean a(float paramFloat1, float paramFloat2)
  {
    if (b())
    {
      if (paramFloat1 > this.m / 2) {}
    }
    else {
      while (paramFloat1 >= this.s - this.m)
      {
        if ((paramFloat2 < this.b - this.a / 2) || (paramFloat2 > this.b + this.a / 2)) {
          break;
        }
        return true;
      }
    }
    return false;
  }
  
  private void b(int paramInt)
  {
    d();
    this.u.postDelayed(this.D, paramInt);
  }
  
  private boolean b()
  {
    return ViewCompat.getLayoutDirection(this.u) == 1;
  }
  
  @VisibleForTesting
  private boolean b(float paramFloat1, float paramFloat2)
  {
    return (paramFloat2 >= this.t - this.q) && (paramFloat1 >= this.e - this.d / 2) && (paramFloat1 <= this.e + this.d / 2);
  }
  
  private void c()
  {
    switch (this.C)
    {
    case 1: 
    case 2: 
    default: 
      return;
    case 3: 
      this.B.cancel();
    }
    this.C = 1;
    this.B.setFloatValues(new float[] { ((Float)this.B.getAnimatedValue()).floatValue(), 1.0F });
    this.B.setDuration(500L);
    this.B.setStartDelay(0L);
    this.B.start();
  }
  
  private void d()
  {
    this.u.removeCallbacks(this.D);
  }
  
  @VisibleForTesting
  final void a()
  {
    switch (this.C)
    {
    default: 
      return;
    case 1: 
      this.B.cancel();
    }
    this.C = 3;
    this.B.setFloatValues(new float[] { ((Float)this.B.getAnimatedValue()).floatValue(), 0.0F });
    this.B.setDuration(500L);
    this.B.start();
  }
  
  final void a(int paramInt1, int paramInt2)
  {
    int i1 = this.u.computeVerticalScrollRange();
    int i2 = this.t;
    boolean bool;
    int i3;
    int i4;
    if ((i1 - i2 > 0) && (this.t >= this.i))
    {
      bool = true;
      this.v = bool;
      i3 = this.u.computeHorizontalScrollRange();
      i4 = this.s;
      if ((i3 - i4 <= 0) || (this.s < this.i)) {
        break label117;
      }
      bool = true;
      label78:
      this.w = bool;
      if ((this.v) || (this.w)) {
        break label123;
      }
      if (this.x != 0) {
        a(0);
      }
    }
    label117:
    label123:
    do
    {
      return;
      bool = false;
      break;
      bool = false;
      break label78;
      if (this.v)
      {
        this.b = ((int)((paramInt2 + i2 / 2.0F) * i2 / i1));
        this.a = Math.min(i2, i2 * i2 / i1);
      }
      if (this.w)
      {
        this.e = ((int)((paramInt1 + i4 / 2.0F) * i4 / i3));
        this.d = Math.min(i4, i4 * i4 / i3);
      }
    } while ((this.x != 0) && (this.x != 1));
    a(1);
  }
  
  public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    if ((this.s != this.u.getWidth()) || (this.t != this.u.getHeight()))
    {
      this.s = this.u.getWidth();
      this.t = this.u.getHeight();
      a(0);
    }
    for (;;)
    {
      return;
      if (this.C != 0)
      {
        int i1;
        int i2;
        if (this.v)
        {
          i1 = this.s - this.m;
          i2 = this.b - this.a / 2;
          this.k.setBounds(0, 0, this.m, this.a);
          this.l.setBounds(0, 0, this.n, this.t);
          if (!b()) {
            break label297;
          }
          this.l.draw(paramCanvas);
          paramCanvas.translate(this.m, i2);
          paramCanvas.scale(-1.0F, 1.0F);
          this.k.draw(paramCanvas);
          paramCanvas.scale(1.0F, 1.0F);
          paramCanvas.translate(-this.m, -i2);
        }
        while (this.w)
        {
          i1 = this.t - this.q;
          i2 = this.e - this.d / 2;
          this.o.setBounds(0, 0, this.d, this.q);
          this.p.setBounds(0, 0, this.s, this.r);
          paramCanvas.translate(0.0F, i1);
          this.p.draw(paramCanvas);
          paramCanvas.translate(i2, 0.0F);
          this.o.draw(paramCanvas);
          paramCanvas.translate(-i2, -i1);
          return;
          label297:
          paramCanvas.translate(i1, 0.0F);
          this.l.draw(paramCanvas);
          paramCanvas.translate(0.0F, i2);
          this.k.draw(paramCanvas);
          paramCanvas.translate(-i1, -i2);
        }
      }
    }
  }
  
  public final void a(boolean paramBoolean) {}
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    if (this.x == 1)
    {
      bool1 = a(paramMotionEvent.getX(), paramMotionEvent.getY());
      bool2 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
      if ((paramMotionEvent.getAction() == 0) && ((bool1) || (bool2))) {
        if (bool2)
        {
          this.y = 1;
          this.f = ((int)paramMotionEvent.getX());
          a(2);
        }
      }
    }
    while (this.x == 2)
    {
      for (;;)
      {
        boolean bool1;
        boolean bool2;
        return true;
        if (bool1)
        {
          this.y = 2;
          this.c = ((int)paramMotionEvent.getY());
        }
      }
      return false;
    }
    return false;
  }
  
  public final void b(MotionEvent paramMotionEvent)
  {
    if (this.x == 0) {}
    float f1;
    do
    {
      do
      {
        do
        {
          boolean bool1;
          boolean bool2;
          do
          {
            return;
            if (paramMotionEvent.getAction() != 0) {
              break;
            }
            bool1 = a(paramMotionEvent.getX(), paramMotionEvent.getY());
            bool2 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
          } while ((!bool1) && (!bool2));
          if (bool2)
          {
            this.y = 1;
            this.f = ((int)paramMotionEvent.getX());
          }
          for (;;)
          {
            a(2);
            return;
            if (bool1)
            {
              this.y = 2;
              this.c = ((int)paramMotionEvent.getY());
            }
          }
          if ((paramMotionEvent.getAction() == 1) && (this.x == 2))
          {
            this.c = 0.0F;
            this.f = 0.0F;
            a(1);
            this.y = 0;
            return;
          }
        } while ((paramMotionEvent.getAction() != 2) || (this.x != 2));
        c();
        if (this.y == 1)
        {
          f1 = paramMotionEvent.getX();
          this.A[0] = this.j;
          this.A[1] = (this.s - this.j);
          int[] arrayOfInt = this.A;
          f1 = Math.max(arrayOfInt[0], Math.min(arrayOfInt[1], f1));
          if (Math.abs(this.e - f1) >= 2.0F)
          {
            i1 = a(this.f, f1, arrayOfInt, this.u.computeHorizontalScrollRange(), this.u.computeHorizontalScrollOffset(), this.s);
            if (i1 != 0) {
              this.u.scrollBy(i1, 0);
            }
            this.f = f1;
          }
        }
      } while (this.y != 2);
      f1 = paramMotionEvent.getY();
      this.z[0] = this.j;
      this.z[1] = (this.t - this.j);
      paramMotionEvent = this.z;
      f1 = Math.max(paramMotionEvent[0], Math.min(paramMotionEvent[1], f1));
    } while (Math.abs(this.b - f1) < 2.0F);
    int i1 = a(this.c, f1, paramMotionEvent, this.u.computeVerticalScrollRange(), this.u.computeVerticalScrollOffset(), this.t);
    if (i1 != 0) {
      this.u.scrollBy(0, i1);
    }
    this.c = f1;
  }
  
  private final class a
    extends AnimatorListenerAdapter
  {
    private boolean b = false;
    
    private a() {}
    
    public final void onAnimationCancel(Animator paramAnimator)
    {
      this.b = true;
    }
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      if (this.b)
      {
        this.b = false;
        return;
      }
      if (((Float)k.a(k.this).getAnimatedValue()).floatValue() == 0.0F)
      {
        k.a(k.this, 0);
        k.b(k.this);
        return;
      }
      k.a(k.this, 2);
      k.c(k.this);
    }
  }
  
  private final class b
    implements ValueAnimator.AnimatorUpdateListener
  {
    private b() {}
    
    public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      int i = (int)(((Float)paramValueAnimator.getAnimatedValue()).floatValue() * 255.0F);
      k.d(k.this).setAlpha(i);
      k.e(k.this).setAlpha(i);
      k.c(k.this);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */