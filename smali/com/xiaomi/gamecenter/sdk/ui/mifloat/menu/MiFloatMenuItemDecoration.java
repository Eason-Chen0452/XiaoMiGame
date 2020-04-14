package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.android.support.v7.widget.RecyclerView.ItemDecoration;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiFloatMenuItemDecoration
  extends RecyclerView.ItemDecoration
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private boolean k = true;
  private Resources l;
  private int m;
  private Context n;
  
  public MiFloatMenuItemDecoration(Context paramContext)
  {
    this.n = paramContext;
    this.l = this.n.getResources();
    int i1 = ResourceUtils.g(this.n, "view_dimen_740");
    this.j = this.l.getDimensionPixelOffset(i1);
    i1 = ResourceUtils.g(this.n, "view_dimen_20");
    this.f = this.l.getDimensionPixelOffset(i1);
    i1 = ResourceUtils.g(this.n, "view_dimen_80");
    this.g = this.l.getDimensionPixelOffset(i1);
    i1 = ResourceUtils.g(this.n, "view_dimen_10");
    this.h = this.l.getDimensionPixelOffset(i1);
    i1 = ResourceUtils.g(this.n, "view_dimen_40");
    this.i = this.l.getDimensionPixelOffset(i1);
    i1 = ResourceUtils.g(this.n, "view_dimen_50");
    this.d = this.l.getDimensionPixelOffset(i1);
  }
  
  public final void a(int paramInt)
  {
    this.m = paramInt;
    paramInt = ResourceUtils.g(this.n, "view_dimen_180");
    if (this.k)
    {
      this.c = (this.l.getDimensionPixelOffset(paramInt) * 4);
      this.e = (this.j - this.f);
      this.a = ((this.e - this.c) / 3);
      this.b = (this.a / 2);
      return;
    }
    this.c = (this.l.getDimensionPixelOffset(paramInt) * 3);
    this.e = (this.j - this.g);
    this.a = ((this.e - this.c) / 3);
    this.b = (this.a / 2);
  }
  
  public final void a(Rect paramRect, View paramView)
  {
    int i1 = RecyclerView.e(paramView);
    if (this.k)
    {
      paramRect.left = this.a;
      if (i1 % 4 == 0) {
        paramRect.left = 0;
      }
    }
    do
    {
      return;
      paramRect.left = this.a;
      return;
      if (i1 + 3 >= this.m) {}
      for (paramRect.bottom = 0;; paramRect.bottom = this.d)
      {
        paramRect.left = this.b;
        if (i1 % 3 != 0) {
          break;
        }
        paramRect.left = 0;
        return;
      }
    } while ((i1 + 1) % 3 != 0);
    paramRect.left = this.a;
  }
  
  public final void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuItemDecoration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */