package com.xiaomi.android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

public class LinearSmoothScroller
  extends RecyclerView.SmoothScroller
{
  protected final LinearInterpolator a = new LinearInterpolator();
  protected final DecelerateInterpolator b = new DecelerateInterpolator();
  protected PointF c;
  protected int d = 0;
  protected int e = 0;
  private final float f;
  
  public LinearSmoothScroller(Context paramContext)
  {
    this.f = (25.0F / paramContext.getResources().getDisplayMetrics().densityDpi);
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int i = paramInt1 - paramInt2;
    paramInt2 = i;
    if (paramInt1 * i <= 0) {
      paramInt2 = 0;
    }
    return paramInt2;
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    switch (paramInt5)
    {
    default: 
      throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
    case -1: 
      paramInt1 = paramInt3 - paramInt1;
    }
    do
    {
      do
      {
        return paramInt1;
        return paramInt4 - paramInt2;
        paramInt3 -= paramInt1;
        paramInt1 = paramInt3;
      } while (paramInt3 > 0);
      paramInt2 = paramInt4 - paramInt2;
      paramInt1 = paramInt2;
    } while (paramInt2 < 0);
    return 0;
  }
  
  private int b(int paramInt)
  {
    return (int)Math.ceil(Math.abs(paramInt) * this.f);
  }
  
  protected final void a()
  {
    this.e = 0;
    this.d = 0;
    this.c = null;
  }
  
  protected final void a(int paramInt1, int paramInt2, RecyclerView.SmoothScroller.Action paramAction)
  {
    if (g() == 0) {
      c();
    }
    do
    {
      return;
      this.d = a(this.d, paramInt1);
      this.e = a(this.e, paramInt2);
    } while ((this.d != 0) || (this.e != 0));
    paramInt1 = f();
    Object localObject = b();
    if ((localObject instanceof RecyclerView.SmoothScroller.a)) {}
    for (localObject = ((RecyclerView.SmoothScroller.a)localObject).c(paramInt1); (localObject == null) || ((((PointF)localObject).x == 0.0F) && (((PointF)localObject).y == 0.0F)); localObject = null)
    {
      paramAction.a(f());
      c();
      return;
      Log.w("LinearSmoothScroller", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView.SmoothScroller.a.class.getCanonicalName());
    }
    double d1 = Math.sqrt(((PointF)localObject).x * ((PointF)localObject).x + ((PointF)localObject).y * ((PointF)localObject).y);
    ((PointF)localObject).x = ((float)(((PointF)localObject).x / d1));
    ((PointF)localObject).y = ((float)(((PointF)localObject).y / d1));
    this.c = ((PointF)localObject);
    this.d = ((int)(((PointF)localObject).x * 10000.0F));
    this.e = ((int)(((PointF)localObject).y * 10000.0F));
    paramInt1 = b(10000);
    paramAction.a((int)(this.d * 1.2F), (int)(this.e * 1.2F), (int)(paramInt1 * 1.2F), this.a);
  }
  
  protected final void a(View paramView, RecyclerView.SmoothScroller.Action paramAction)
  {
    int k = 1;
    int m = 0;
    int i;
    RecyclerView.LayoutManager localLayoutManager;
    int j;
    if ((this.c == null) || (this.c.x == 0.0F))
    {
      i = 0;
      localLayoutManager = b();
      if ((localLayoutManager != null) && (localLayoutManager.i())) {
        break label169;
      }
      j = 0;
      label49:
      if ((this.c != null) && (this.c.y != 0.0F)) {
        break label235;
      }
      i = 0;
      label70:
      localLayoutManager = b();
      k = m;
      if (localLayoutManager != null) {
        if (localLayoutManager.j()) {
          break label255;
        }
      }
    }
    label169:
    RecyclerView.LayoutParams localLayoutParams;
    int n;
    for (k = m;; k = a(k - m, localLayoutParams.bottomMargin + n, localLayoutManager.v(), localLayoutManager.t() - localLayoutManager.x(), i))
    {
      i = (int)Math.ceil(b((int)Math.sqrt(j * j + k * k)) / 0.3356D);
      if (i > 0) {
        paramAction.a(-j, -k, i, this.b);
      }
      return;
      if (this.c.x > 0.0F)
      {
        i = 1;
        break;
      }
      i = -1;
      break;
      localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      j = RecyclerView.LayoutManager.h(paramView);
      n = localLayoutParams.leftMargin;
      int i1 = RecyclerView.LayoutManager.j(paramView);
      j = a(j - n, localLayoutParams.rightMargin + i1, localLayoutManager.u(), localLayoutManager.s() - localLayoutManager.w(), i);
      break label49;
      label235:
      i = k;
      if (this.c.y > 0.0F) {
        break label70;
      }
      i = -1;
      break label70;
      label255:
      localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      k = RecyclerView.LayoutManager.i(paramView);
      m = localLayoutParams.topMargin;
      n = RecyclerView.LayoutManager.k(paramView);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\LinearSmoothScroller.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */