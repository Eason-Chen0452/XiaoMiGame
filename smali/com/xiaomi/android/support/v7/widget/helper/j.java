package com.xiaomi.android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;

final class j
{
  static final class a
    implements i
  {
    private static void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2)
    {
      paramCanvas.save();
      paramCanvas.translate(paramFloat1, paramFloat2);
      paramRecyclerView.drawChild(paramCanvas, paramView, 0L);
      paramCanvas.restore();
    }
    
    public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt)
    {
      if (paramInt == 2) {
        a(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2);
      }
    }
    
    public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      if (paramInt != 2) {
        a(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2);
      }
    }
    
    public final void a(View paramView)
    {
      paramView.setVisibility(0);
    }
    
    public final void b(View paramView)
    {
      paramView.setVisibility(4);
    }
  }
  
  static class b
    implements i
  {
    public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt) {}
    
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      paramView.setTranslationX(paramFloat1);
      paramView.setTranslationY(paramFloat2);
    }
    
    public void a(View paramView)
    {
      paramView.setTranslationX(0.0F);
      paramView.setTranslationY(0.0F);
    }
    
    public final void b(View paramView) {}
  }
  
  static final class c
    extends j.b
  {
    public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      int j;
      float f3;
      float f1;
      int i;
      if (paramBoolean)
      {
        j = ResourceUtil.f(paramView.getContext(), "item_touch_helper_previous_elevation");
        if (paramView.getTag(j) == null)
        {
          f3 = ViewCompat.getElevation(paramView);
          int k = paramRecyclerView.getChildCount();
          f1 = 0.0F;
          i = 0;
          if (i < k)
          {
            View localView = paramRecyclerView.getChildAt(i);
            if (localView == paramView) {
              break label127;
            }
            float f2 = ViewCompat.getElevation(localView);
            if (f2 <= f1) {
              break label127;
            }
            f1 = f2;
          }
        }
      }
      label127:
      for (;;)
      {
        i += 1;
        break;
        ViewCompat.setElevation(paramView, 1.0F + f1);
        paramView.setTag(j, Float.valueOf(f3));
        super.a(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2, paramInt, paramBoolean);
        return;
      }
    }
    
    public final void a(View paramView)
    {
      int i = ResourceUtil.f(paramView.getContext(), "item_touch_helper_previous_elevation");
      Object localObject = paramView.getTag(i);
      if ((localObject != null) && ((localObject instanceof Float))) {
        ViewCompat.setElevation(paramView, ((Float)localObject).floatValue());
      }
      paramView.setTag(i, null);
      super.a(paramView);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\helper\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */