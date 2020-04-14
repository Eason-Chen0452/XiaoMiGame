package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.content.Context;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageSwitcher;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.AndroidBug54971Workaround;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiFloatView
  extends FrameLayout
{
  public STATUS a = STATUS.NORMAL;
  long b;
  private float c;
  private float d;
  private float e;
  private float f;
  private float g;
  private float h;
  private final a i;
  private int j = 0;
  private int k = 0;
  private int l = 300;
  private int m = 300;
  private boolean n = false;
  private boolean o = false;
  private RelativeLayout p;
  private ImageSwitcher q;
  private ImageView r;
  private b s;
  private AndroidBug54971Workaround t;
  private int u;
  private int v;
  private aa w;
  private boolean x = false;
  private View.OnTouchListener y = new ae(this);
  
  public MiFloatView(Context paramContext, int paramInt1, int paramInt2, a parama, b paramb)
  {
    super(paramContext);
    this.j = paramInt1;
    this.k = paramInt2;
    this.i = parama;
    this.s = paramb;
    this.p = ((RelativeLayout)LayoutInflater.from(getContext()).inflate(ResourceUtils.f(getContext(), "mio_layout_float_view"), null));
    paramInt1 = ResourceUtils.d(getContext(), "is_float_icon");
    this.q = ((ImageSwitcher)this.p.findViewById(paramInt1));
    this.q.setFactory(new ac(this));
    paramInt1 = ResourceUtils.d(getContext(), "img_float_point");
    this.r = ((ImageView)this.p.findViewById(paramInt1));
    this.u = ResourceUtils.c(getContext(), "float_window_nor");
    this.v = ResourceUtils.c(getContext(), "float_window_disable");
    this.q.setImageResource(this.u);
    addView(this.p);
    paramInt1 = ResourceUtils.i(getContext(), "appear");
    this.q.setInAnimation(getContext(), paramInt1);
    paramInt1 = ResourceUtils.i(getContext(), "disappear");
    this.q.setOutAnimation(getContext(), paramInt1);
    paramContext = (FrameLayout.LayoutParams)this.p.getLayoutParams();
    paramContext.width = this.i.c;
    paramContext.height = this.i.d;
    this.p.setLayoutParams(paramContext);
    this.p.setOnTouchListener(this.y);
    this.p.setOnClickListener(new ad(this));
    if (this.t == null) {
      this.t = new AndroidBug54971Workaround(this, new ab(this));
    }
  }
  
  /* Error */
  private void b(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: aload_0
    //   7: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   10: invokevirtual 220	android/widget/RelativeLayout:getWidth	()I
    //   13: iload_1
    //   14: iadd
    //   15: putfield 56	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:l	I
    //   18: aload_0
    //   19: getfield 78	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:i	Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;
    //   22: getfield 222	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a:a	I
    //   25: istore_3
    //   26: aload_0
    //   27: getfield 78	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:i	Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;
    //   30: getfield 224	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a:b	I
    //   33: istore 4
    //   35: aload_0
    //   36: getfield 56	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:l	I
    //   39: iload_3
    //   40: if_icmple +18 -> 58
    //   43: aload_0
    //   44: iload_3
    //   45: putfield 56	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:l	I
    //   48: iload_3
    //   49: aload_0
    //   50: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   53: invokevirtual 220	android/widget/RelativeLayout:getWidth	()I
    //   56: isub
    //   57: istore_1
    //   58: aload_0
    //   59: aload_0
    //   60: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   63: invokevirtual 227	android/widget/RelativeLayout:getHeight	()I
    //   66: iload_2
    //   67: iadd
    //   68: putfield 58	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:m	I
    //   71: aload_0
    //   72: getfield 58	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:m	I
    //   75: iload 4
    //   77: if_icmple +20 -> 97
    //   80: aload_0
    //   81: iload 4
    //   83: putfield 58	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:m	I
    //   86: iload 4
    //   88: aload_0
    //   89: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   92: invokevirtual 227	android/widget/RelativeLayout:getHeight	()I
    //   95: isub
    //   96: istore_2
    //   97: aload_0
    //   98: iload_1
    //   99: putfield 52	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:j	I
    //   102: aload_0
    //   103: iload_2
    //   104: putfield 54	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:k	I
    //   107: iload_1
    //   108: ifne +55 -> 163
    //   111: iconst_1
    //   112: istore 5
    //   114: aload_0
    //   115: iload 5
    //   117: putfield 60	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:n	Z
    //   120: iload_1
    //   121: iload_3
    //   122: aload_0
    //   123: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   126: invokevirtual 220	android/widget/RelativeLayout:getWidth	()I
    //   129: isub
    //   130: if_icmpne +39 -> 169
    //   133: iload 6
    //   135: istore 5
    //   137: aload_0
    //   138: iload 5
    //   140: putfield 62	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:o	Z
    //   143: aload_0
    //   144: getfield 105	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:p	Landroid/widget/RelativeLayout;
    //   147: iload_1
    //   148: iload_2
    //   149: aload_0
    //   150: getfield 56	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:l	I
    //   153: aload_0
    //   154: getfield 58	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView:m	I
    //   157: invokevirtual 231	android/widget/RelativeLayout:layout	(IIII)V
    //   160: aload_0
    //   161: monitorexit
    //   162: return
    //   163: iconst_0
    //   164: istore 5
    //   166: goto -52 -> 114
    //   169: iconst_0
    //   170: istore 5
    //   172: goto -35 -> 137
    //   175: astore 7
    //   177: aload_0
    //   178: monitorexit
    //   179: aload 7
    //   181: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	MiFloatView
    //   0	182	1	paramInt1	int
    //   0	182	2	paramInt2	int
    //   25	105	3	i1	int
    //   33	63	4	i2	int
    //   112	59	5	bool1	boolean
    //   1	133	6	bool2	boolean
    //   175	5	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	35	175	finally
    //   35	58	175	finally
    //   58	71	175	finally
    //   71	97	175	finally
    //   97	107	175	finally
    //   114	133	175	finally
    //   137	160	175	finally
  }
  
  public final int a()
  {
    return this.j;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.e = paramInt1;
    this.f = paramInt2;
    this.j = paramInt1;
    this.k = paramInt2;
    b(paramInt1, paramInt2);
  }
  
  public final void a(aa paramaa)
  {
    this.w = paramaa;
  }
  
  public final int b()
  {
    return this.k;
  }
  
  public final int c()
  {
    if (this.p != null) {
      return this.p.getWidth();
    }
    return 0;
  }
  
  public final int d()
  {
    if (this.p != null) {
      return this.p.getHeight();
    }
    return 0;
  }
  
  public final boolean e()
  {
    return this.x;
  }
  
  final void f()
  {
    int i1 = this.k;
    b(0, i1);
    if (this.s != null) {
      this.s.a(0, i1);
    }
  }
  
  final void g()
  {
    int i1 = this.i.a - this.p.getWidth();
    int i2 = this.k;
    b(i1, i2);
    if (this.s != null) {
      this.s.a(i1, i2);
    }
  }
  
  final void h()
  {
    int i1 = this.i.a / 2;
    int i2 = this.k;
    if (this.j + this.p.getWidth() / 2 < i1) {}
    for (i1 = 0;; i1 = this.i.a - this.p.getWidth())
    {
      b(i1, i2);
      if (this.s != null) {
        this.s.a(i1, i2);
      }
      return;
    }
  }
  
  public final void i()
  {
    if (this.a != STATUS.NORMAL)
    {
      this.a = STATUS.NORMAL;
      this.q.setImageResource(this.u);
    }
  }
  
  public final void j()
  {
    if (this.a != STATUS.DISABLE)
    {
      this.a = STATUS.DISABLE;
      this.q.setImageResource(this.v);
    }
  }
  
  public final void k()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, -this.i.c / 2, 0.0F, 0.0F);
    localTranslateAnimation.setFillAfter(true);
    localTranslateAnimation.setDuration(200L);
    localTranslateAnimation.setAnimationListener(new af(this));
    clearAnimation();
    startAnimation(localTranslateAnimation);
  }
  
  public final void l()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, this.i.c / 2, 0.0F, 0.0F);
    localTranslateAnimation.setFillAfter(true);
    localTranslateAnimation.setDuration(200L);
    localTranslateAnimation.setAnimationListener(new ag(this));
    clearAnimation();
    startAnimation(localTranslateAnimation);
  }
  
  public final void m()
  {
    if (this.r.getVisibility() == 0)
    {
      int i1 = ResourceUtils.c(getContext(), "icon_red_point_right");
      this.r.setImageResource(i1);
    }
    clearAnimation();
    Logger.a("MiGameSDK.MiFloatView", "appearFromEdge");
    i();
  }
  
  public final boolean n()
  {
    return this.n;
  }
  
  public final boolean o()
  {
    return this.o;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.b = System.currentTimeMillis();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.w != null) {
      this.w.a();
    }
    a(this.j, this.k);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    b(this.j, this.k);
  }
  
  public final void p()
  {
    int i1 = ResourceUtils.c(getContext(), "icon_red_point_right");
    if (this.a == STATUS.RIGHT_HIDE) {
      i1 = ResourceUtils.c(getContext(), "icon_red_point_left");
    }
    this.r.setImageResource(i1);
    this.r.setVisibility(0);
  }
  
  public final void q()
  {
    this.r.setVisibility(8);
  }
  
  public String toString()
  {
    return "MiFloatView{xInView=" + this.c + ", yInView=" + this.d + ", xInScreen=" + this.e + ", yInScreen=" + this.f + ", xDownInScreen=" + this.g + ", yDownInScreen=" + this.h + ", oldX=" + this.j + ", oldY=" + this.k + ", mRight=" + this.l + ", mBottom=" + this.m + ", isLeftEdge=" + this.n + ", isRightEdge=" + this.o + ", status=" + this.a + ", isMoving=" + this.x + '}';
  }
  
  public static enum STATUS
  {
    private STATUS() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\MiFloatView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */