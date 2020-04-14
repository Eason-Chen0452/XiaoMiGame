package com.xiaomi.android.support.v7.widget.helper;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.ItemAnimator;
import com.xiaomi.android.support.v7.widget.RecyclerView.ItemDecoration;
import com.xiaomi.android.support.v7.widget.RecyclerView.LayoutManager;
import com.xiaomi.android.support.v7.widget.RecyclerView.ViewHolder;
import com.xiaomi.android.support.v7.widget.RecyclerView.b;
import com.xiaomi.android.support.v7.widget.RecyclerView.d;
import com.xiaomi.android.support.v7.widget.RecyclerView.e;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;
import java.util.ArrayList;
import java.util.List;

public class ItemTouchHelper
  extends RecyclerView.ItemDecoration
  implements RecyclerView.d
{
  private final RecyclerView.e A = new b(this);
  private Rect B;
  private long C;
  final List<View> a = new ArrayList();
  RecyclerView.ViewHolder b = null;
  float c;
  float d;
  float e;
  float f;
  float g;
  float h;
  float i;
  float j;
  int k = -1;
  Callback l;
  int m = 0;
  int n;
  List<a> o = new ArrayList();
  RecyclerView p;
  final Runnable q = new a(this);
  VelocityTracker r;
  View s = null;
  int t = -1;
  GestureDetectorCompat u;
  private final float[] v = new float[2];
  private int w;
  private List<RecyclerView.ViewHolder> x;
  private List<Integer> y;
  private RecyclerView.b z = null;
  
  public ItemTouchHelper(Callback paramCallback)
  {
    this.l = paramCallback;
  }
  
  private int a(int paramInt)
  {
    int i2 = 8;
    if ((paramInt & 0xC) != 0)
    {
      int i1;
      if (this.g > 0.0F)
      {
        i1 = 8;
        if ((this.r == null) || (this.k < 0)) {
          break label140;
        }
        this.r.computeCurrentVelocity(1000, Callback.b(this.f));
        f2 = this.r.getXVelocity(this.k);
        f1 = this.r.getYVelocity(this.k);
        if (f2 <= 0.0F) {
          break label134;
        }
      }
      for (;;)
      {
        f2 = Math.abs(f2);
        if (((i2 & paramInt) == 0) || (i1 != i2) || (f2 < Callback.a(this.e)) || (f2 <= Math.abs(f1))) {
          break label140;
        }
        return i2;
        i1 = 4;
        break;
        label134:
        i2 = 4;
      }
      label140:
      float f1 = this.p.getWidth();
      float f2 = Callback.f();
      if (((paramInt & i1) != 0) && (Math.abs(this.g) > f1 * f2)) {
        return i1;
      }
    }
    return 0;
  }
  
  private void a(float[] paramArrayOfFloat)
  {
    if ((this.n & 0xC) != 0) {
      paramArrayOfFloat[0] = (this.i + this.g - this.b.a.getLeft());
    }
    while ((this.n & 0x3) != 0)
    {
      paramArrayOfFloat[1] = (this.j + this.h - this.b.a.getTop());
      return;
      paramArrayOfFloat[0] = this.b.a.getTranslationX();
    }
    paramArrayOfFloat[1] = this.b.a.getTranslationY();
  }
  
  private static boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (paramFloat1 >= paramFloat3) && (paramFloat1 <= paramView.getWidth() + paramFloat3) && (paramFloat2 >= paramFloat4) && (paramFloat2 <= paramView.getHeight() + paramFloat4);
  }
  
  private int b(int paramInt)
  {
    int i2 = 2;
    if ((paramInt & 0x3) != 0)
    {
      int i1;
      if (this.h > 0.0F)
      {
        i1 = 2;
        if ((this.r == null) || (this.k < 0)) {
          break label137;
        }
        this.r.computeCurrentVelocity(1000, Callback.b(this.f));
        f1 = this.r.getXVelocity(this.k);
        f2 = this.r.getYVelocity(this.k);
        if (f2 <= 0.0F) {
          break label131;
        }
      }
      for (;;)
      {
        f2 = Math.abs(f2);
        if (((i2 & paramInt) == 0) || (i2 != i1) || (f2 < Callback.a(this.e)) || (f2 <= Math.abs(f1))) {
          break label137;
        }
        return i2;
        i1 = 1;
        break;
        label131:
        i2 = 1;
      }
      label137:
      float f1 = this.p.getHeight();
      float f2 = Callback.f();
      if (((paramInt & i1) != 0) && (Math.abs(this.h) > f1 * f2)) {
        return i1;
      }
    }
    return 0;
  }
  
  private View b(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    if (this.b != null)
    {
      paramMotionEvent = this.b.a;
      if (a(paramMotionEvent, f1, f2, this.i + this.g, this.j + this.h)) {
        return paramMotionEvent;
      }
    }
    int i1 = this.o.size() - 1;
    while (i1 >= 0)
    {
      paramMotionEvent = (a)this.o.get(i1);
      View localView = paramMotionEvent.h.a;
      if (a(localView, f1, f2, paramMotionEvent.l, paramMotionEvent.m)) {
        return localView;
      }
      i1 -= 1;
    }
    return this.p.a(f1, f2);
  }
  
  final int a(RecyclerView.ViewHolder paramViewHolder, boolean paramBoolean)
  {
    int i1 = this.o.size() - 1;
    while (i1 >= 0)
    {
      a locala = (a)this.o.get(i1);
      if (locala.h == paramViewHolder)
      {
        locala.n |= paramBoolean;
        if (!locala.o) {
          locala.b();
        }
        this.o.remove(i1);
        return locala.j;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  final a a(MotionEvent paramMotionEvent)
  {
    if (this.o.isEmpty())
    {
      paramMotionEvent = null;
      return paramMotionEvent;
    }
    View localView = b(paramMotionEvent);
    int i1 = this.o.size() - 1;
    for (;;)
    {
      if (i1 < 0) {
        break label74;
      }
      a locala = (a)this.o.get(i1);
      paramMotionEvent = locala;
      if (locala.h.a == localView) {
        break;
      }
      i1 -= 1;
    }
    label74:
    return null;
  }
  
  public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    float f2;
    float f1;
    if (this.b != null)
    {
      a(this.v);
      f2 = this.v[0];
      f1 = this.v[1];
    }
    for (;;)
    {
      RecyclerView.ViewHolder localViewHolder = this.b;
      List localList = this.o;
      int i3 = this.m;
      int i2 = localList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        a locala = (a)localList.get(i1);
        int i4 = paramCanvas.save();
        Callback.a(paramCanvas, paramRecyclerView, locala.h, locala.l, locala.m, locala.i);
        paramCanvas.restoreToCount(i4);
        i1 += 1;
      }
      if (localViewHolder != null)
      {
        i1 = paramCanvas.save();
        Callback.a(paramCanvas, paramRecyclerView, localViewHolder, f2, f1, i3);
        paramCanvas.restoreToCount(i1);
      }
      i1 = 0;
      i2 -= 1;
      if (i2 >= 0)
      {
        paramCanvas = (a)localList.get(i2);
        if ((paramCanvas.o) && (!paramCanvas.k)) {
          localList.remove(i2);
        }
      }
      for (;;)
      {
        i2 -= 1;
        break;
        if (!paramCanvas.o)
        {
          i1 = 1;
          continue;
          if (i1 != 0) {
            paramRecyclerView.invalidate();
          }
          return;
        }
      }
      f1 = 0.0F;
      f2 = 0.0F;
    }
  }
  
  public final void a(Rect paramRect, View paramView)
  {
    paramRect.setEmpty();
  }
  
  final void a(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
  {
    float f1 = paramMotionEvent.getX(paramInt2);
    float f2 = paramMotionEvent.getY(paramInt2);
    this.g = (f1 - this.c);
    this.h = (f2 - this.d);
    if ((paramInt1 & 0x4) == 0) {
      this.g = Math.max(0.0F, this.g);
    }
    if ((paramInt1 & 0x8) == 0) {
      this.g = Math.min(0.0F, this.g);
    }
    if ((paramInt1 & 0x1) == 0) {
      this.h = Math.max(0.0F, this.h);
    }
    if ((paramInt1 & 0x2) == 0) {
      this.h = Math.min(0.0F, this.h);
    }
  }
  
  public final void a(View paramView)
  {
    b(paramView);
    paramView = this.p.b(paramView);
    if (paramView == null) {}
    do
    {
      return;
      if ((this.b != null) && (paramView == this.b))
      {
        a(null, 0);
        return;
      }
      a(paramView, false);
    } while (!this.a.remove(paramView.a));
    Callback.b(paramView);
  }
  
  final void a(RecyclerView.ViewHolder paramViewHolder)
  {
    if (this.p.isLayoutRequested()) {}
    label10:
    Object localObject;
    int i1;
    label483:
    do
    {
      int i4;
      int i5;
      do
      {
        do
        {
          break label10;
          do
          {
            return;
          } while (this.m != 2);
          Callback.g();
          i4 = (int)(this.i + this.g);
          i5 = (int)(this.j + this.h);
        } while ((Math.abs(i5 - paramViewHolder.a.getTop()) < paramViewHolder.a.getHeight() * 0.5F) && (Math.abs(i4 - paramViewHolder.a.getLeft()) < paramViewHolder.a.getWidth() * 0.5F));
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        if (this.x == null)
        {
          this.x = new ArrayList();
          this.y = new ArrayList();
          Callback.e();
          i6 = Math.round(this.i + this.g) + 0;
          i7 = Math.round(this.j + this.h) + 0;
          i8 = paramViewHolder.a.getWidth() + i6 + 0;
          i9 = paramViewHolder.a.getHeight() + i7 + 0;
          i10 = (i6 + i8) / 2;
          i11 = (i7 + i9) / 2;
          localObject = this.p.b();
          i12 = ((RecyclerView.LayoutManager)localObject).p();
          i1 = 0;
        }
        for (;;)
        {
          if (i1 >= i12) {
            break label483;
          }
          View localView = ((RecyclerView.LayoutManager)localObject).f(i1);
          if ((localView != paramViewHolder.a) && (localView.getBottom() >= i7) && (localView.getTop() <= i9) && (localView.getRight() >= i6) && (localView.getLeft() <= i8))
          {
            RecyclerView.ViewHolder localViewHolder = this.p.b(localView);
            Callback.b();
            int i2 = Math.abs(i10 - (localView.getLeft() + localView.getRight()) / 2);
            int i3 = localView.getTop();
            i3 = Math.abs(i11 - (localView.getBottom() + i3) / 2);
            int i13 = i2 * i2 + i3 * i3;
            i3 = 0;
            int i14 = this.x.size();
            i2 = 0;
            for (;;)
            {
              if ((i2 < i14) && (i13 > ((Integer)this.y.get(i2)).intValue()))
              {
                i3 += 1;
                i2 += 1;
                continue;
                this.x.clear();
                this.y.clear();
                break;
              }
            }
            this.x.add(i3, localViewHolder);
            this.y.add(i3, Integer.valueOf(i13));
          }
          i1 += 1;
        }
        localObject = this.x;
      } while (((List)localObject).size() == 0);
      localObject = Callback.a(paramViewHolder, (List)localObject, i4, i5);
      if (localObject == null)
      {
        this.x.clear();
        this.y.clear();
        return;
      }
      i1 = ((RecyclerView.ViewHolder)localObject).e();
      paramViewHolder.e();
    } while (!this.l.c());
    Callback.a(this.p, paramViewHolder, (RecyclerView.ViewHolder)localObject, i1);
  }
  
  final void a(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramViewHolder == this.b) && (paramInt == this.m)) {
      return;
    }
    this.C = Long.MIN_VALUE;
    int i3 = this.m;
    a(paramViewHolder, true);
    this.m = paramInt;
    if (paramInt == 2)
    {
      this.s = paramViewHolder.a;
      if (Build.VERSION.SDK_INT < 21)
      {
        if (this.z == null) {
          this.z = new e(this);
        }
        this.p.a(this.z);
      }
    }
    int i1 = 0;
    int i2 = 0;
    Object localObject;
    int i4;
    int i5;
    if (this.b != null)
    {
      localObject = this.b;
      if (((RecyclerView.ViewHolder)localObject).a.getParent() == null) {
        break label707;
      }
      if ((i3 == 2) || (this.m == 2)) {
        break label579;
      }
      i1 = this.l.a();
      i4 = (Callback.b(i1, ViewCompat.getLayoutDirection(this.p)) & 0xFF00) >> 8;
      if (i4 == 0) {
        break label579;
      }
      i5 = (i1 & 0xFF00) >> 8;
      if (Math.abs(this.g) <= Math.abs(this.h)) {
        break label585;
      }
      i2 = a(i4);
      if (i2 <= 0) {
        break label562;
      }
      i1 = i2;
      if ((i5 & i2) == 0) {
        i1 = Callback.a(i2, ViewCompat.getLayoutDirection(this.p));
      }
      if (this.r != null)
      {
        this.r.recycle();
        this.r = null;
      }
    }
    float f1;
    float f2;
    switch (i1)
    {
    default: 
      f1 = 0.0F;
      f2 = 0.0F;
      label325:
      if (i3 == 2)
      {
        i2 = 8;
        label335:
        a(this.v);
        localObject = new c(this, (RecyclerView.ViewHolder)localObject, i2, i3, this.v[0], this.v[1], f1, f2, i1, (RecyclerView.ViewHolder)localObject);
        ((a)localObject).a(Callback.a(this.p, i2));
        this.o.add(localObject);
        ((a)localObject).a();
        i1 = 1;
        label412:
        this.b = null;
        if (paramViewHolder != null)
        {
          this.n = ((this.l.a(this.p) & (1 << paramInt * 8 + 8) - 1) >> this.m * 8);
          this.i = paramViewHolder.a.getLeft();
          this.j = paramViewHolder.a.getTop();
          this.b = paramViewHolder;
          if (paramInt == 2) {
            this.b.a.performHapticFeedback(0);
          }
        }
        paramViewHolder = this.p.getParent();
        if (paramViewHolder != null) {
          if (this.b == null) {
            break label728;
          }
        }
      }
      break;
    }
    label562:
    label579:
    label585:
    label707:
    label728:
    for (boolean bool = true;; bool = false)
    {
      paramViewHolder.requestDisallowInterceptTouchEvent(bool);
      if (i1 == 0) {
        this.p.b().z();
      }
      Callback.a(this.b);
      this.p.invalidate();
      return;
      i2 = b(i4);
      i1 = i2;
      if (i2 > 0) {
        break;
      }
      do
      {
        i1 = 0;
        break;
        i2 = b(i4);
        i1 = i2;
        if (i2 > 0) {
          break;
        }
        i2 = a(i4);
      } while (i2 <= 0);
      i1 = i2;
      if ((i5 & i2) != 0) {
        break;
      }
      i1 = Callback.a(i2, ViewCompat.getLayoutDirection(this.p));
      break;
      f2 = 0.0F;
      f1 = Math.signum(this.g) * this.p.getWidth();
      break label325;
      f1 = 0.0F;
      f2 = Math.signum(this.h) * this.p.getHeight();
      break label325;
      if (i1 > 0)
      {
        i2 = 2;
        break label335;
      }
      i2 = 4;
      break label335;
      b(((RecyclerView.ViewHolder)localObject).a);
      Callback.b((RecyclerView.ViewHolder)localObject);
      i1 = i2;
      break label412;
    }
  }
  
  final boolean a()
  {
    if (this.b == null)
    {
      this.C = Long.MIN_VALUE;
      return false;
    }
    long l2 = System.currentTimeMillis();
    long l1;
    Object localObject;
    int i2;
    int i1;
    label128:
    int i3;
    label178:
    RecyclerView localRecyclerView;
    if (this.C == Long.MIN_VALUE)
    {
      l1 = 0L;
      localObject = this.p.b();
      if (this.B == null) {
        this.B = new Rect();
      }
      ((RecyclerView.LayoutManager)localObject).b(this.b.a, this.B);
      if (!((RecyclerView.LayoutManager)localObject).i()) {
        break label372;
      }
      i2 = (int)(this.i + this.g);
      i1 = i2 - this.B.left - this.p.getPaddingLeft();
      if ((this.g >= 0.0F) || (i1 >= 0)) {
        break label320;
      }
      if (!((RecyclerView.LayoutManager)localObject).j()) {
        break label429;
      }
      i3 = (int)(this.j + this.h);
      i2 = i3 - this.B.top - this.p.getPaddingTop();
      if ((this.h >= 0.0F) || (i2 >= 0)) {
        break label377;
      }
      if (i1 == 0) {
        break label446;
      }
      localObject = this.l;
      localRecyclerView = this.p;
      i3 = this.b.a.getWidth();
      this.p.getWidth();
      i1 = ((Callback)localObject).a(localRecyclerView, i3, i1, l1);
    }
    label320:
    label372:
    label377:
    label429:
    label446:
    for (;;)
    {
      if (i2 != 0)
      {
        localObject = this.l;
        localRecyclerView = this.p;
        i3 = this.b.a.getHeight();
        this.p.getHeight();
        i2 = ((Callback)localObject).a(localRecyclerView, i3, i2, l1);
      }
      for (;;)
      {
        if ((i1 != 0) || (i2 != 0))
        {
          if (this.C == Long.MIN_VALUE) {
            this.C = l2;
          }
          this.p.scrollBy(i1, i2);
          return true;
          l1 = l2 - this.C;
          break;
          if (this.g > 0.0F)
          {
            i2 = i2 + this.b.a.getWidth() + this.B.right - (this.p.getWidth() - this.p.getPaddingRight());
            i1 = i2;
            if (i2 > 0) {
              break label128;
            }
          }
          i1 = 0;
          break label128;
          if (this.h > 0.0F)
          {
            i3 = i3 + this.b.a.getHeight() + this.B.bottom - (this.p.getHeight() - this.p.getPaddingBottom());
            i2 = i3;
            if (i3 > 0) {
              break label178;
            }
          }
          i2 = 0;
          break label178;
        }
        this.C = Long.MIN_VALUE;
        return false;
      }
    }
  }
  
  final boolean a(int paramInt1, MotionEvent paramMotionEvent, int paramInt2)
  {
    Object localObject2 = null;
    if ((this.b == null) && (paramInt1 == 2) && (this.m != 2))
    {
      Callback.d();
      if (this.p.c() != 1) {
        break label40;
      }
    }
    label40:
    Object localObject3;
    Object localObject1;
    label61:
    float f1;
    float f2;
    float f3;
    float f4;
    do
    {
      do
      {
        do
        {
          return false;
          localObject3 = this.p.b();
          if (this.k != -1) {
            break;
          }
          localObject1 = localObject2;
          if (localObject1 == null) {
            break label369;
          }
          paramInt1 = (this.l.a(this.p) & 0xFF00) >> 8;
        } while (paramInt1 == 0);
        f1 = paramMotionEvent.getX(paramInt2);
        f2 = paramMotionEvent.getY(paramInt2);
        f1 -= this.c;
        f2 -= this.d;
        f3 = Math.abs(f1);
        f4 = Math.abs(f2);
      } while ((f3 < this.w) && (f4 < this.w));
      if (f3 <= f4) {
        break label371;
      }
    } while (((f1 < 0.0F) && ((paramInt1 & 0x4) == 0)) || ((f1 > 0.0F) && ((paramInt1 & 0x8) == 0)));
    label369:
    label371:
    do
    {
      this.h = 0.0F;
      this.g = 0.0F;
      this.k = paramMotionEvent.getPointerId(0);
      a((RecyclerView.ViewHolder)localObject1, 1);
      return true;
      paramInt1 = paramMotionEvent.findPointerIndex(this.k);
      f3 = paramMotionEvent.getX(paramInt1);
      f4 = this.c;
      f1 = paramMotionEvent.getY(paramInt1);
      f2 = this.d;
      f3 = Math.abs(f3 - f4);
      f1 = Math.abs(f1 - f2);
      if (f3 < this.w)
      {
        localObject1 = localObject2;
        if (f1 < this.w) {
          break label61;
        }
      }
      if (f3 > f1)
      {
        localObject1 = localObject2;
        if (((RecyclerView.LayoutManager)localObject3).i()) {
          break label61;
        }
      }
      if (f1 > f3)
      {
        localObject1 = localObject2;
        if (((RecyclerView.LayoutManager)localObject3).j()) {
          break label61;
        }
      }
      localObject3 = b(paramMotionEvent);
      localObject1 = localObject2;
      if (localObject3 == null) {
        break label61;
      }
      localObject1 = this.p.b((View)localObject3);
      break label61;
      break;
      if ((f2 < 0.0F) && ((paramInt1 & 0x1) == 0)) {
        break;
      }
    } while ((f2 <= 0.0F) || ((paramInt1 & 0x2) != 0));
    return false;
  }
  
  public final void b(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    this.t = -1;
    float f2;
    float f1;
    if (this.b != null)
    {
      a(this.v);
      f2 = this.v[0];
      f1 = this.v[1];
    }
    for (;;)
    {
      RecyclerView.ViewHolder localViewHolder = this.b;
      List localList = this.o;
      int i2 = this.m;
      int i3 = localList.size();
      int i1 = 0;
      while (i1 < i3)
      {
        a locala = (a)localList.get(i1);
        locala.c();
        int i4 = paramCanvas.save();
        Callback.a(paramCanvas, paramRecyclerView, locala.h, locala.l, locala.m, locala.i, false);
        paramCanvas.restoreToCount(i4);
        i1 += 1;
      }
      if (localViewHolder != null)
      {
        i1 = paramCanvas.save();
        Callback.a(paramCanvas, paramRecyclerView, localViewHolder, f2, f1, i2, true);
        paramCanvas.restoreToCount(i1);
      }
      return;
      f1 = 0.0F;
      f2 = 0.0F;
    }
  }
  
  final void b(View paramView)
  {
    if (paramView == this.s)
    {
      this.s = null;
      if (this.z != null) {
        this.p.a(null);
      }
    }
  }
  
  public static abstract class Callback
  {
    private static final i a = new j.a();
    private static final Interpolator b = new f();
    private static final Interpolator c = new g();
    private int d = -1;
    
    static
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        a = new j.c();
        return;
      }
      if (Build.VERSION.SDK_INT >= 11)
      {
        a = new j.b();
        return;
      }
    }
    
    public static float a(float paramFloat)
    {
      return paramFloat;
    }
    
    public static int a(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0xC0C0C;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
      if (paramInt2 == 0) {
        return paramInt1 | i << 2;
      }
      return paramInt1 | i << 1 & 0xFFF3F3F3 | (i << 1 & 0xC0C0C) << 2;
    }
    
    public static long a(RecyclerView paramRecyclerView, int paramInt)
    {
      paramRecyclerView = paramRecyclerView.i();
      if (paramRecyclerView == null)
      {
        if (paramInt == 8) {
          return 200L;
        }
        return 250L;
      }
      if (paramInt == 8) {
        return paramRecyclerView.e();
      }
      return paramRecyclerView.g();
    }
    
    public static RecyclerView.ViewHolder a(RecyclerView.ViewHolder paramViewHolder, List<RecyclerView.ViewHolder> paramList, int paramInt1, int paramInt2)
    {
      int m = paramViewHolder.a.getWidth();
      int n = paramViewHolder.a.getHeight();
      int i = -1;
      int i1 = paramInt1 - paramViewHolder.a.getLeft();
      int i2 = paramInt2 - paramViewHolder.a.getTop();
      int i3 = paramList.size();
      int j = 0;
      Object localObject2 = null;
      Object localObject1;
      int k;
      if (j < i3)
      {
        localObject1 = (RecyclerView.ViewHolder)paramList.get(j);
        if (i1 <= 0) {
          break label343;
        }
        k = ((RecyclerView.ViewHolder)localObject1).a.getRight() - (paramInt1 + m);
        if ((k >= 0) || (((RecyclerView.ViewHolder)localObject1).a.getRight() <= paramViewHolder.a.getRight())) {
          break label343;
        }
        k = Math.abs(k);
        if (k <= i) {
          break label343;
        }
        localObject2 = localObject1;
        i = k;
        label142:
        if (i1 >= 0) {
          break label356;
        }
        k = ((RecyclerView.ViewHolder)localObject1).a.getLeft() - paramInt1;
        if ((k <= 0) || (((RecyclerView.ViewHolder)localObject1).a.getLeft() >= paramViewHolder.a.getLeft())) {
          break label356;
        }
        k = Math.abs(k);
        if (k <= i) {
          break label356;
        }
        localObject2 = localObject1;
        i = k;
      }
      label343:
      label356:
      for (;;)
      {
        if (i2 < 0)
        {
          k = ((RecyclerView.ViewHolder)localObject1).a.getTop() - paramInt2;
          if ((k > 0) && (((RecyclerView.ViewHolder)localObject1).a.getTop() < paramViewHolder.a.getTop()))
          {
            k = Math.abs(k);
            if (k > i)
            {
              localObject2 = localObject1;
              i = k;
            }
          }
        }
        for (;;)
        {
          if (i2 > 0)
          {
            k = ((RecyclerView.ViewHolder)localObject1).a.getBottom() - (paramInt2 + n);
            if ((k < 0) && (((RecyclerView.ViewHolder)localObject1).a.getBottom() > paramViewHolder.a.getBottom()))
            {
              k = Math.abs(k);
              if (k > i) {
                i = k;
              }
            }
          }
          for (;;)
          {
            j += 1;
            localObject2 = localObject1;
            break;
            return (RecyclerView.ViewHolder)localObject2;
            break label142;
            localObject1 = localObject2;
          }
        }
      }
    }
    
    public static void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt)
    {
      a.a(paramCanvas, paramRecyclerView, paramViewHolder.a, paramFloat1, paramFloat2, paramInt);
    }
    
    public static void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      a.a(paramCanvas, paramRecyclerView, paramViewHolder.a, paramFloat1, paramFloat2, paramInt, paramBoolean);
    }
    
    public static void a(RecyclerView.ViewHolder paramViewHolder)
    {
      if (paramViewHolder != null) {
        a.b(paramViewHolder.a);
      }
    }
    
    public static void a(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt)
    {
      RecyclerView.LayoutManager localLayoutManager = paramRecyclerView.b();
      if ((localLayoutManager instanceof ItemTouchHelper.b)) {
        ((ItemTouchHelper.b)localLayoutManager).a(paramViewHolder1.a, paramViewHolder2.a);
      }
      do
      {
        do
        {
          return;
          if (localLayoutManager.i())
          {
            if (RecyclerView.LayoutManager.h(paramViewHolder2.a) <= paramRecyclerView.getPaddingLeft()) {
              paramRecyclerView.b(paramInt);
            }
            if (RecyclerView.LayoutManager.j(paramViewHolder2.a) >= paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight()) {
              paramRecyclerView.b(paramInt);
            }
          }
        } while (!localLayoutManager.j());
        if (RecyclerView.LayoutManager.i(paramViewHolder2.a) <= paramRecyclerView.getPaddingTop()) {
          paramRecyclerView.b(paramInt);
        }
      } while (RecyclerView.LayoutManager.k(paramViewHolder2.a) < paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom());
      paramRecyclerView.b(paramInt);
    }
    
    public static float b(float paramFloat)
    {
      return paramFloat;
    }
    
    public static int b(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0x303030;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 = (i ^ 0xFFFFFFFF) & paramInt1;
      if (paramInt2 == 0) {
        return paramInt1 | i >> 2;
      }
      return paramInt1 | i >> 1 & 0xFFCFCFCF | (i >> 1 & 0x303030) >> 2;
    }
    
    public static void b(RecyclerView.ViewHolder paramViewHolder)
    {
      a.a(paramViewHolder.a);
    }
    
    public static boolean b()
    {
      return true;
    }
    
    public static boolean d()
    {
      return true;
    }
    
    public static int e()
    {
      return 0;
    }
    
    public static float f()
    {
      return 0.5F;
    }
    
    public static float g()
    {
      return 0.5F;
    }
    
    public abstract int a();
    
    final int a(RecyclerView paramRecyclerView)
    {
      return b(a(), ViewCompat.getLayoutDirection(paramRecyclerView));
    }
    
    public final int a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, long paramLong)
    {
      float f1 = 1.0F;
      if (this.d == -1)
      {
        i = ResourceUtil.g(paramRecyclerView.getContext(), "item_touch_helper_max_drag_scroll_per_frame");
        this.d = paramRecyclerView.getResources().getDimensionPixelSize(i);
      }
      int i = this.d;
      int j = Math.abs(paramInt2);
      int k = (int)Math.signum(paramInt2);
      float f2 = Math.min(1.0F, j * 1.0F / paramInt1);
      paramInt1 = (int)(i * k * c.getInterpolation(f2));
      if (paramLong > 2000L) {}
      for (;;)
      {
        f2 = paramInt1;
        i = (int)(b.getInterpolation(f1) * f2);
        paramInt1 = i;
        if (i == 0)
        {
          if (paramInt2 <= 0) {
            break;
          }
          paramInt1 = 1;
        }
        return paramInt1;
        f1 = (float)paramLong / 2000.0F;
      }
      return -1;
    }
    
    public abstract boolean c();
    
    public abstract void h();
  }
  
  public static abstract class SimpleCallback
    extends ItemTouchHelper.Callback
  {
    private int a;
    private int b;
    
    public SimpleCallback(int paramInt1, int paramInt2)
    {
      this.a = paramInt2;
      this.b = paramInt1;
    }
  }
  
  private class a
    implements Animator.AnimatorListener
  {
    private final ValueAnimator a;
    private float b;
    final float d;
    final float e;
    final float f;
    final float g;
    final RecyclerView.ViewHolder h;
    final int i;
    final int j;
    public boolean k;
    float l;
    float m;
    boolean n = false;
    boolean o = false;
    
    a(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      this.i = paramInt2;
      this.j = paramInt1;
      this.h = paramViewHolder;
      this.d = paramFloat1;
      this.e = paramFloat2;
      this.f = paramFloat3;
      this.g = paramFloat4;
      this.a = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
      this.a.addUpdateListener(new h(this, ItemTouchHelper.this));
      this.a.setTarget(paramViewHolder.a);
      this.a.addListener(this);
      this.b = 0.0F;
    }
    
    public final void a()
    {
      this.h.a(false);
      this.a.start();
    }
    
    public final void a(float paramFloat)
    {
      this.b = paramFloat;
    }
    
    public final void a(long paramLong)
    {
      this.a.setDuration(paramLong);
    }
    
    public final void b()
    {
      this.a.cancel();
    }
    
    public final void c()
    {
      if (this.d == this.f) {}
      for (this.l = this.h.a.getTranslationX(); this.e == this.g; this.l = (this.d + this.b * (this.f - this.d)))
      {
        this.m = this.h.a.getTranslationY();
        return;
      }
      this.m = (this.e + this.b * (this.g - this.e));
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      this.b = 1.0F;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!this.o) {
        this.h.a(true);
      }
      this.o = true;
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
  
  public static abstract interface b
  {
    public abstract void a(View paramView1, View paramView2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\ItemTouchHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */