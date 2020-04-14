package com.xiaomi.android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements NestedScrollingChild, ScrollingView
{
  static final Interpolator H;
  private static final int[] I = { 16843830 };
  private static final int[] J = { 16842987 };
  private static final boolean K;
  private static final boolean L;
  private static final boolean M;
  private static final Class<?>[] N;
  static final boolean a;
  static final boolean b;
  static final boolean c;
  n.a A;
  final State B;
  boolean C;
  boolean D;
  boolean E;
  RecyclerViewAccessibilityDelegate F;
  @VisibleForTesting
  final List<ViewHolder> G;
  private final g O = new g();
  private SavedState P;
  private final Rect Q = new Rect();
  private final ArrayList<e> R = new ArrayList();
  private e S;
  private int T = 0;
  private boolean U;
  private int V;
  private final AccessibilityManager W;
  private final int[] aA;
  private final int[] aB;
  private final int[] aC;
  private Runnable aD;
  private final ae.b aE;
  private List<d> aa;
  private int ab = 0;
  private int ac = 0;
  private EdgeEffect ad;
  private EdgeEffect ae;
  private EdgeEffect af;
  private EdgeEffect ag;
  private int ah = 0;
  private int ai = -1;
  private VelocityTracker aj;
  private int ak;
  private int al;
  private int am;
  private int an;
  private int ao;
  private OnFlingListener ap;
  private final int aq;
  private final int ar;
  private float as = Float.MIN_VALUE;
  private boolean at = true;
  private OnScrollListener au;
  private List<OnScrollListener> av;
  private RecyclerView.ItemAnimator.a aw;
  private b ax;
  private final int[] ay;
  private NestedScrollingChildHelper az;
  final Recycler d = new Recycler();
  a e;
  b f;
  final ae g = new ae();
  boolean h;
  final Runnable i = new u(this);
  final Rect j = new Rect();
  final RectF k = new RectF();
  Adapter l;
  @VisibleForTesting
  LayoutManager m;
  f n;
  final ArrayList<ItemDecoration> o = new ArrayList();
  boolean p;
  boolean q;
  boolean r;
  @VisibleForTesting
  boolean s;
  boolean t;
  boolean u;
  boolean v;
  boolean w = false;
  ItemAnimator x = new DefaultItemAnimator();
  final h y = new h();
  n z;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20))
    {
      bool = true;
      a = bool;
      if (Build.VERSION.SDK_INT < 23) {
        break label167;
      }
      bool = true;
      label62:
      b = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label172;
      }
      bool = true;
      label76:
      c = bool;
      if (Build.VERSION.SDK_INT < 21) {
        break label177;
      }
      bool = true;
      label90:
      K = bool;
      if (Build.VERSION.SDK_INT > 15) {
        break label182;
      }
      bool = true;
      label104:
      L = bool;
      if (Build.VERSION.SDK_INT > 15) {
        break label187;
      }
    }
    label167:
    label172:
    label177:
    label182:
    label187:
    for (boolean bool = true;; bool = false)
    {
      M = bool;
      N = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      H = new w();
      return;
      bool = false;
      break;
      bool = false;
      break label62;
      bool = false;
      break label76;
      bool = false;
      break label90;
      bool = false;
      break label104;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject1;
    if (K)
    {
      localObject1 = new n.a();
      this.A = ((n.a)localObject1);
      this.B = new State();
      this.C = false;
      this.D = false;
      this.aw = new c();
      this.E = false;
      this.ay = new int[2];
      this.aA = new int[2];
      this.aB = new int[2];
      this.aC = new int[2];
      this.G = new ArrayList();
      this.aD = new v(this);
      this.aE = new x(this);
      if (paramAttributeSet == null) {
        break label691;
      }
      localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, J, paramInt, 0);
      this.h = ((TypedArray)localObject1).getBoolean(0, true);
      ((TypedArray)localObject1).recycle();
      label328:
      setScrollContainer(true);
      setFocusableInTouchMode(true);
      localObject1 = ViewConfiguration.get(paramContext);
      this.ao = ((ViewConfiguration)localObject1).getScaledTouchSlop();
      this.aq = ((ViewConfiguration)localObject1).getScaledMinimumFlingVelocity();
      this.ar = ((ViewConfiguration)localObject1).getScaledMaximumFlingVelocity();
      if (getOverScrollMode() != 2) {
        break label699;
      }
    }
    Object localObject2;
    Object localObject3;
    Object localObject4;
    StateListDrawable localStateListDrawable;
    Drawable localDrawable;
    label691:
    label699:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      this.x.a(this.aw);
      this.e = new a(new z(this));
      this.f = new b(new y(this));
      if (ViewCompat.getImportantForAccessibility(this) == 0) {
        ViewCompat.setImportantForAccessibility(this, 1);
      }
      this.W = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      this.F = new RecyclerViewAccessibilityDelegate(this);
      ViewCompat.setAccessibilityDelegate(this, this.F);
      if (paramAttributeSet == null) {
        break label1303;
      }
      localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, ResourceUtil.d(getContext(), "RecyclerView"), paramInt, 0);
      localObject2 = ((TypedArray)localObject1).getString(ResourceUtil.e(getContext(), "RecyclerView_layoutManager"));
      if (((TypedArray)localObject1).getInt(ResourceUtil.e(getContext(), "RecyclerView_android_descendantFocusability"), -1) == -1) {
        setDescendantFocusability(262144);
      }
      this.r = ((TypedArray)localObject1).getBoolean(ResourceUtil.e(getContext(), "RecyclerView_fastScrollEnabled"), false);
      if (!this.r) {
        break label788;
      }
      localObject3 = (StateListDrawable)((TypedArray)localObject1).getDrawable(ResourceUtil.e(getContext(), "RecyclerView_fastScrollVerticalThumbDrawable"));
      localObject4 = ((TypedArray)localObject1).getDrawable(ResourceUtil.e(getContext(), "RecyclerView_fastScrollVerticalTrackDrawable"));
      localStateListDrawable = (StateListDrawable)((TypedArray)localObject1).getDrawable(ResourceUtil.e(getContext(), "RecyclerView_fastScrollHorizontalThumbDrawable"));
      localDrawable = ((TypedArray)localObject1).getDrawable(ResourceUtil.e(getContext(), "RecyclerView_fastScrollHorizontalTrackDrawable"));
      if ((localObject3 != null) && (localObject4 != null) && (localStateListDrawable != null) && (localDrawable != null)) {
        break label705;
      }
      throw new IllegalArgumentException("Trying to set fast scroller without both required drawables.");
      localObject1 = null;
      break;
      this.h = true;
      break label328;
    }
    label705:
    int i1 = ResourceUtil.g(getContext(), "fastscroll_default_thickness");
    int i2 = ResourceUtil.g(getContext(), "fastscroll_minimum_range");
    int i3 = ResourceUtil.g(getContext(), "fastscroll_margin");
    Resources localResources = getContext().getResources();
    new k(this, (StateListDrawable)localObject3, (Drawable)localObject4, localStateListDrawable, localDrawable, localResources.getDimensionPixelSize(i1), localResources.getDimensionPixelSize(i2), localResources.getDimensionPixelOffset(i3));
    label788:
    ((TypedArray)localObject1).recycle();
    if (localObject2 != null)
    {
      localObject1 = ((String)localObject2).trim();
      if (((String)localObject1).length() != 0)
      {
        if (((String)localObject1).charAt(0) != '.') {
          break label978;
        }
        localObject1 = paramContext.getPackageName() + (String)localObject1;
      }
    }
    for (;;)
    {
      try
      {
        if (isInEditMode())
        {
          localObject2 = getClass().getClassLoader();
          localObject4 = ((ClassLoader)localObject2).loadClass((String)localObject1).asSubclass(LayoutManager.class);
        }
        try
        {
          localObject2 = ((Class)localObject4).getConstructor(N);
          localObject3 = new Object[4];
          localObject3[0] = paramContext;
          localObject3[1] = paramAttributeSet;
          localObject3[2] = Integer.valueOf(paramInt);
          localObject3[3] = Integer.valueOf(0);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          try
          {
            localObject2 = ((Class)localObject4).getConstructor(new Class[0]);
            localThrowable = null;
          }
          catch (NoSuchMethodException paramContext)
          {
            Throwable localThrowable;
            paramContext.initCause(localThrowable);
            throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + (String)localObject1, paramContext);
          }
        }
        ((Constructor)localObject2).setAccessible(true);
        a((LayoutManager)((Constructor)localObject2).newInstance((Object[])localObject3));
        if (Build.VERSION.SDK_INT >= 21)
        {
          paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, I, paramInt, 0);
          bool = paramContext.getBoolean(0, true);
          paramContext.recycle();
          setNestedScrollingEnabled(bool);
          return;
          label978:
          if (((String)localObject1).contains(".")) {
            continue;
          }
          localObject1 = RecyclerView.class.getPackage().getName() + '.' + (String)localObject1;
          continue;
          localObject2 = paramContext.getClassLoader();
          continue;
          setDescendantFocusability(262144);
        }
      }
      catch (ClassNotFoundException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + (String)localObject1, paramContext);
      }
      catch (InvocationTargetException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (InstantiationException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (IllegalAccessException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + (String)localObject1, paramContext);
      }
      catch (ClassCastException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + (String)localObject1, paramContext);
      }
      label1303:
      bool = true;
    }
  }
  
  private boolean A()
  {
    return this.ab > 0;
  }
  
  private boolean B()
  {
    return (this.x != null) && (this.m.g());
  }
  
  private void C()
  {
    boolean bool2 = true;
    if (this.w)
    {
      this.e.a();
      this.m.b();
    }
    int i1;
    label53:
    State localState;
    if (B())
    {
      this.e.b();
      if ((!this.C) && (!this.D)) {
        break label172;
      }
      i1 = 1;
      localState = this.B;
      if ((!this.s) || (this.x == null) || ((!this.w) && (i1 == 0) && (!this.m.u)) || ((this.w) && (!this.l.b()))) {
        break label177;
      }
      bool1 = true;
      label113:
      localState.i = bool1;
      localState = this.B;
      if ((!this.B.i) || (i1 == 0) || (this.w) || (!B())) {
        break label182;
      }
    }
    label172:
    label177:
    label182:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localState.j = bool1;
      return;
      this.e.e();
      break;
      i1 = 0;
      break label53;
      bool1 = false;
      break label113;
    }
  }
  
  private void D()
  {
    if (this.l == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (this.m == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    this.B.h = false;
    long l1;
    RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo;
    boolean bool1;
    boolean bool2;
    Object localObject3;
    int i3;
    if (this.B.c == 1)
    {
      G();
      this.m.b(this);
      H();
      this.B.a(4);
      e();
      f();
      this.B.c = 1;
      if (!this.B.i) {
        break label661;
      }
      i1 = this.f.a() - 1;
      if (i1 < 0) {
        break label650;
      }
      localObject1 = d(this.f.b(i1));
      if (!((ViewHolder)localObject1).b())
      {
        l1 = d((ViewHolder)localObject1);
        localItemHolderInfo = ItemAnimator.j().a((ViewHolder)localObject1);
        localObject2 = (ViewHolder)this.g.b.get(l1);
        if ((localObject2 == null) || (((ViewHolder)localObject2).b())) {
          break label636;
        }
        bool1 = this.g.a((ViewHolder)localObject2);
        bool2 = this.g.a((ViewHolder)localObject1);
        if ((bool1) && (localObject2 == localObject1)) {
          break label636;
        }
        localObject3 = this.g.b((ViewHolder)localObject2);
        this.g.b((ViewHolder)localObject1, localItemHolderInfo);
        localItemHolderInfo = this.g.c((ViewHolder)localObject1);
        if (localObject3 != null) {
          break label541;
        }
        i3 = this.f.a();
        i2 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (i2 >= i3) {
          break label498;
        }
        localObject3 = d(this.f.b(i2));
        if ((localObject3 != localObject1) && (d((ViewHolder)localObject3) == l1))
        {
          if ((this.l != null) && (this.l.b()))
          {
            throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + localObject3 + " \n View Holder 2:" + localObject1);
            localObject1 = this.e;
            if ((!((a)localObject1).b.isEmpty()) && (!((a)localObject1).a.isEmpty())) {}
            for (i1 = 1;; i1 = 0)
            {
              if ((i1 == 0) && (this.m.s() == getWidth()) && (this.m.t() == getHeight())) {
                break label443;
              }
              this.m.b(this);
              H();
              break;
            }
            label443:
            this.m.b(this);
            break;
          }
          throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + localObject3 + " \n View Holder 2:" + localObject1);
        }
        i2 += 1;
      }
      label498:
      Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + localObject2 + " cannot be found but it is necessary for " + localObject1);
    }
    for (;;)
    {
      i1 -= 1;
      break;
      label541:
      ((ViewHolder)localObject2).a(false);
      if (bool1) {
        c((ViewHolder)localObject2);
      }
      if (localObject2 != localObject1)
      {
        if (bool2) {
          c((ViewHolder)localObject1);
        }
        ((ViewHolder)localObject2).h = ((ViewHolder)localObject1);
        c((ViewHolder)localObject2);
        this.d.b((ViewHolder)localObject2);
        ((ViewHolder)localObject1).a(false);
        ((ViewHolder)localObject1).i = ((ViewHolder)localObject2);
      }
      if (this.x.a((ViewHolder)localObject2, (ViewHolder)localObject1, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject3, localItemHolderInfo))
      {
        j();
        continue;
        label636:
        this.g.b((ViewHolder)localObject1, localItemHolderInfo);
      }
    }
    label650:
    this.g.a(this.aE);
    label661:
    this.m.b(this.d);
    this.B.a = this.B.d;
    this.w = false;
    this.B.i = false;
    this.B.j = false;
    this.m.u = false;
    if (this.d.b != null) {
      this.d.b.clear();
    }
    if (this.m.y)
    {
      this.m.x = 0;
      this.m.y = false;
      this.d.b();
    }
    this.m.a(this.B);
    g();
    a(false);
    this.g.a();
    int i1 = this.ay[0];
    int i2 = this.ay[1];
    a(this.ay);
    if ((this.ay[0] != i1) || (this.ay[1] != i2))
    {
      i1 = 1;
      if (i1 != 0) {
        m();
      }
      if ((this.at) && (this.l != null) && (hasFocus()) && (getDescendantFocusability() != 393216) && ((getDescendantFocusability() != 131072) || (!isFocused()))) {
        break label905;
      }
    }
    label905:
    label958:
    do
    {
      for (;;)
      {
        E();
        return;
        i1 = 0;
        break;
        if (isFocused()) {
          break label970;
        }
        localObject1 = getFocusedChild();
        if ((!M) || ((((View)localObject1).getParent() != null) && (((View)localObject1).hasFocus()))) {
          break label958;
        }
        if (this.f.a() != 0) {
          break label970;
        }
        requestFocus();
      }
    } while (!this.f.d((View)localObject1));
    label970:
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.B.l != -1L)
    {
      localObject1 = localObject2;
      if (this.l.b()) {
        localObject1 = a(this.B.l);
      }
    }
    localObject2 = null;
    if ((localObject1 == null) || (this.f.d(((ViewHolder)localObject1).a)) || (!((ViewHolder)localObject1).a.hasFocusable()))
    {
      localObject1 = localObject2;
      if (this.f.a() > 0) {
        localObject1 = F();
      }
      label1072:
      if (localObject1 == null) {
        break label1140;
      }
      if (this.B.m == -1L) {
        break label1142;
      }
      localObject2 = ((View)localObject1).findViewById(this.B.m);
      if ((localObject2 == null) || (!((View)localObject2).isFocusable())) {
        break label1142;
      }
      localObject1 = localObject2;
    }
    label1140:
    label1142:
    for (;;)
    {
      ((View)localObject1).requestFocus();
      break;
      localObject1 = ((ViewHolder)localObject1).a;
      break label1072;
      break;
    }
  }
  
  private void E()
  {
    this.B.l = -1L;
    this.B.k = -1;
    this.B.m = -1;
  }
  
  @Nullable
  private View F()
  {
    int i3;
    int i2;
    if (this.B.k != -1)
    {
      i1 = this.B.k;
      i3 = this.B.b();
      i2 = i1;
    }
    ViewHolder localViewHolder;
    for (;;)
    {
      if (i2 >= i3) {
        break label75;
      }
      localViewHolder = d(i2);
      if (localViewHolder == null) {
        break label75;
      }
      if (localViewHolder.a.hasFocusable())
      {
        return localViewHolder.a;
        i1 = 0;
        break;
      }
      i2 += 1;
    }
    label75:
    int i1 = Math.min(i3, i1) - 1;
    while (i1 >= 0)
    {
      localViewHolder = d(i1);
      if (localViewHolder == null) {
        return null;
      }
      if (localViewHolder.a.hasFocusable()) {
        return localViewHolder.a;
      }
      i1 -= 1;
    }
    return null;
  }
  
  private void G()
  {
    this.B.a(1);
    this.B.h = false;
    e();
    this.g.a();
    f();
    C();
    if ((this.at) && (hasFocus()) && (this.l != null)) {}
    for (Object localObject1 = getFocusedChild();; localObject1 = null)
    {
      if (localObject1 == null)
      {
        localObject1 = null;
        if (localObject1 != null) {
          break label351;
        }
        E();
        label79:
        localObject1 = this.B;
        if ((!this.B.i) || (!this.D)) {
          break label524;
        }
      }
      int i2;
      int i1;
      Object localObject2;
      label351:
      Object localObject3;
      label489:
      label524:
      for (boolean bool = true;; bool = false)
      {
        ((State)localObject1).g = bool;
        this.D = false;
        this.C = false;
        this.B.f = this.B.j;
        this.B.d = this.l.a();
        a(this.ay);
        if (!this.B.i) {
          break label529;
        }
        i2 = this.f.a();
        i1 = 0;
        long l1;
        while (i1 < i2)
        {
          localObject1 = d(this.f.b(i1));
          if ((!((ViewHolder)localObject1).b()) && ((!((ViewHolder)localObject1).k()) || (this.l.b())))
          {
            ItemAnimator.e((ViewHolder)localObject1);
            ((ViewHolder)localObject1).q();
            localObject2 = ItemAnimator.j().a((ViewHolder)localObject1);
            this.g.a((ViewHolder)localObject1, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject2);
            if ((this.B.g) && (((ViewHolder)localObject1).t()) && (!((ViewHolder)localObject1).n()) && (!((ViewHolder)localObject1).b()) && (!((ViewHolder)localObject1).k()))
            {
              l1 = d((ViewHolder)localObject1);
              this.g.a(l1, (ViewHolder)localObject1);
            }
          }
          i1 += 1;
        }
        localObject1 = c((View)localObject1);
        if (localObject1 == null)
        {
          localObject1 = null;
          break;
        }
        localObject1 = b((View)localObject1);
        break;
        localObject2 = this.B;
        if (this.l.b())
        {
          l1 = ((ViewHolder)localObject1).e;
          ((State)localObject2).l = l1;
          localObject2 = this.B;
          if (!this.w) {
            break label489;
          }
          i1 = -1;
        }
        for (;;)
        {
          ((State)localObject2).k = i1;
          localObject3 = this.B;
          localObject1 = ((ViewHolder)localObject1).a;
          i1 = ((View)localObject1).getId();
          while ((!((View)localObject1).isFocused()) && ((localObject1 instanceof ViewGroup)) && (((View)localObject1).hasFocus()))
          {
            localObject2 = ((ViewGroup)localObject1).getFocusedChild();
            localObject1 = localObject2;
            if (((View)localObject2).getId() != -1)
            {
              i1 = ((View)localObject2).getId();
              localObject1 = localObject2;
            }
          }
          l1 = -1L;
          break;
          if (((ViewHolder)localObject1).n()) {
            i1 = ((ViewHolder)localObject1).d;
          } else {
            i1 = ((ViewHolder)localObject1).e();
          }
        }
        ((State)localObject3).m = i1;
        break label79;
      }
      label529:
      if (this.B.j)
      {
        i2 = this.f.b();
        i1 = 0;
        while (i1 < i2)
        {
          localObject1 = d(this.f.c(i1));
          if ((!((ViewHolder)localObject1).b()) && (((ViewHolder)localObject1).d == -1)) {
            ((ViewHolder)localObject1).d = ((ViewHolder)localObject1).c;
          }
          i1 += 1;
        }
        bool = this.B.e;
        this.B.e = false;
        this.m.c(this.d, this.B);
        this.B.e = bool;
        i1 = 0;
        if (i1 < this.f.a())
        {
          localObject3 = d(this.f.b(i1));
          label708:
          RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo;
          if (!((ViewHolder)localObject3).b())
          {
            localObject1 = (ae.a)this.g.a.get(localObject3);
            if ((localObject1 == null) || ((((ae.a)localObject1).a & 0x4) == 0)) {
              break label762;
            }
            i2 = 1;
            if (i2 == 0)
            {
              ItemAnimator.e((ViewHolder)localObject3);
              bool = ((ViewHolder)localObject3).a(8192);
              ((ViewHolder)localObject3).q();
              localItemHolderInfo = ItemAnimator.j().a((ViewHolder)localObject3);
              if (!bool) {
                break label767;
              }
              a((ViewHolder)localObject3, localItemHolderInfo);
            }
          }
          for (;;)
          {
            i1 += 1;
            break;
            label762:
            i2 = 0;
            break label708;
            label767:
            ae localae = this.g;
            localObject2 = (ae.a)localae.a.get(localObject3);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = ae.a.a();
              localae.a.put(localObject3, localObject1);
            }
            ((ae.a)localObject1).a |= 0x2;
            ((ae.a)localObject1).b = localItemHolderInfo;
          }
        }
        I();
      }
      for (;;)
      {
        g();
        a(false);
        this.B.c = 2;
        return;
        I();
      }
    }
  }
  
  private void H()
  {
    e();
    f();
    this.B.a(6);
    this.e.e();
    this.B.d = this.l.a();
    this.B.b = 0;
    this.B.f = false;
    this.m.c(this.d, this.B);
    this.B.e = false;
    this.P = null;
    State localState = this.B;
    if ((this.B.i) && (this.x != null)) {}
    for (boolean bool = true;; bool = false)
    {
      localState.i = bool;
      this.B.c = 4;
      g();
      a(false);
      return;
    }
  }
  
  private void I()
  {
    int i2 = 0;
    int i3 = this.f.b();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject = d(this.f.c(i1));
      if (!((ViewHolder)localObject).b()) {
        ((ViewHolder)localObject).a();
      }
      i1 += 1;
    }
    Object localObject = this.d;
    i3 = ((Recycler)localObject).c.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((ViewHolder)((Recycler)localObject).c.get(i1)).a();
      i1 += 1;
    }
    i3 = ((Recycler)localObject).a.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((ViewHolder)((Recycler)localObject).a.get(i1)).a();
      i1 += 1;
    }
    if (((Recycler)localObject).b != null)
    {
      i3 = ((Recycler)localObject).b.size();
      i1 = i2;
      while (i1 < i3)
      {
        ((ViewHolder)((Recycler)localObject).b.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  private NestedScrollingChildHelper J()
  {
    if (this.az == null) {
      this.az = new NestedScrollingChildHelper(this);
    }
    return this.az;
  }
  
  private ViewHolder a(long paramLong)
  {
    ViewHolder localViewHolder2 = null;
    ViewHolder localViewHolder1 = localViewHolder2;
    if (this.l != null)
    {
      if (this.l.b()) {
        break label31;
      }
      localViewHolder1 = localViewHolder2;
    }
    label31:
    int i1;
    do
    {
      return localViewHolder1;
      int i2 = this.f.b();
      i1 = 0;
      localViewHolder1 = null;
      if (i1 >= i2) {
        break;
      }
      localViewHolder2 = d(this.f.c(i1));
      if ((localViewHolder2 == null) || (localViewHolder2.n()) || (localViewHolder2.e != paramLong)) {
        break label120;
      }
      localViewHolder1 = localViewHolder2;
    } while (!this.f.d(localViewHolder2.a));
    localViewHolder1 = localViewHolder2;
    label120:
    for (;;)
    {
      i1 += 1;
      break;
      return localViewHolder1;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == this.ai) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      this.ai = paramMotionEvent.getPointerId(i1);
      int i2 = (int)(paramMotionEvent.getX(i1) + 0.5F);
      this.am = i2;
      this.ak = i2;
      i1 = (int)(paramMotionEvent.getY(i1) + 0.5F);
      this.an = i1;
      this.al = i1;
      return;
    }
  }
  
  static void a(View paramView, Rect paramRect)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    Rect localRect = localLayoutParams.d;
    int i1 = paramView.getLeft();
    int i2 = localRect.left;
    int i3 = localLayoutParams.leftMargin;
    int i4 = paramView.getTop();
    int i5 = localRect.top;
    int i6 = localLayoutParams.topMargin;
    int i7 = paramView.getRight();
    int i8 = localRect.right;
    int i9 = localLayoutParams.rightMargin;
    int i10 = paramView.getBottom();
    int i11 = localRect.bottom;
    paramRect.set(i1 - i2 - i3, i4 - i5 - i6, i7 + i8 + i9, localLayoutParams.bottomMargin + (i11 + i10));
  }
  
  private void a(@NonNull View paramView1, @Nullable View paramView2)
  {
    boolean bool2 = true;
    Object localObject;
    Rect localRect;
    boolean bool1;
    if (paramView2 != null)
    {
      localObject = paramView2;
      this.j.set(0, 0, ((View)localObject).getWidth(), ((View)localObject).getHeight());
      localObject = ((View)localObject).getLayoutParams();
      if ((localObject instanceof LayoutParams))
      {
        localObject = (LayoutParams)localObject;
        if (!((LayoutParams)localObject).e)
        {
          localObject = ((LayoutParams)localObject).d;
          localRect = this.j;
          localRect.left -= ((Rect)localObject).left;
          localRect = this.j;
          localRect.right += ((Rect)localObject).right;
          localRect = this.j;
          localRect.top -= ((Rect)localObject).top;
          localRect = this.j;
          int i1 = localRect.bottom;
          localRect.bottom = (((Rect)localObject).bottom + i1);
        }
      }
      if (paramView2 != null)
      {
        offsetDescendantRectToMyCoords(paramView2, this.j);
        offsetRectIntoDescendantCoords(paramView1, this.j);
      }
      localObject = this.m;
      localRect = this.j;
      if (this.s) {
        break label225;
      }
      bool1 = true;
      label200:
      if (paramView2 != null) {
        break label231;
      }
    }
    for (;;)
    {
      ((LayoutManager)localObject).a(this, paramView1, localRect, bool1, bool2);
      return;
      localObject = paramView1;
      break;
      label225:
      bool1 = false;
      break label200;
      label231:
      bool2 = false;
    }
  }
  
  static void a(@NonNull ViewHolder paramViewHolder)
  {
    Object localObject;
    if (paramViewHolder.b != null) {
      localObject = (View)paramViewHolder.b.get();
    }
    while (localObject != null)
    {
      if (localObject == paramViewHolder.a) {
        return;
      }
      localObject = ((View)localObject).getParent();
      if ((localObject instanceof View)) {
        localObject = (View)localObject;
      } else {
        localObject = null;
      }
    }
    paramViewHolder.b = null;
  }
  
  private void a(int[] paramArrayOfInt)
  {
    int i7 = this.f.a();
    if (i7 == 0)
    {
      paramArrayOfInt[0] = -1;
      paramArrayOfInt[1] = -1;
      return;
    }
    int i1 = Integer.MAX_VALUE;
    int i3 = Integer.MIN_VALUE;
    int i5 = 0;
    int i4;
    int i2;
    if (i5 < i7)
    {
      ViewHolder localViewHolder = d(this.f.b(i5));
      i4 = i1;
      if (localViewHolder.b()) {
        break label122;
      }
      int i6 = localViewHolder.d();
      i2 = i1;
      if (i6 < i1) {
        i2 = i6;
      }
      i4 = i2;
      if (i6 <= i3) {
        break label122;
      }
      i1 = i2;
      i2 = i6;
    }
    for (;;)
    {
      i5 += 1;
      i3 = i2;
      break;
      paramArrayOfInt[0] = i1;
      paramArrayOfInt[1] = i3;
      return;
      label122:
      i2 = i3;
      i1 = i4;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    int i2 = 0;
    int i5 = 0;
    int i3 = 0;
    int i6 = 0;
    int i4 = 0;
    d();
    if (this.l != null)
    {
      e();
      f();
      TraceCompat.beginSection("RV Scroll");
      if (paramInt1 != 0)
      {
        i2 = this.m.a(paramInt1, this.d, this.B);
        i1 = paramInt1 - i2;
        if (paramInt2 != 0)
        {
          i4 = this.m.b(paramInt2, this.d, this.B);
          i3 = paramInt2 - i4;
        }
        TraceCompat.endSection();
        o();
        g();
        a(false);
        i5 = i3;
        i3 = i4;
      }
    }
    for (;;)
    {
      if (!this.o.isEmpty()) {
        invalidate();
      }
      if (dispatchNestedScroll(i2, i3, i1, i5, this.aA))
      {
        this.am -= this.aA[0];
        this.an -= this.aA[1];
        if (paramMotionEvent != null) {
          paramMotionEvent.offsetLocation(this.aA[0], this.aA[1]);
        }
        paramMotionEvent = this.aC;
        paramMotionEvent[0] += this.aA[0];
        paramMotionEvent = this.aC;
        paramMotionEvent[1] += this.aA[1];
      }
      while (getOverScrollMode() == 2)
      {
        if ((i2 != 0) || (i3 != 0)) {
          m();
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        if ((i2 == 0) && (i3 == 0)) {
          break;
        }
        return true;
      }
      float f1;
      float f2;
      float f3;
      float f4;
      if (paramMotionEvent != null)
      {
        f1 = paramMotionEvent.getX();
        f2 = i1;
        f3 = paramMotionEvent.getY();
        f4 = i5;
        i1 = 0;
        if (f2 >= 0.0F) {
          break label428;
        }
        t();
        EdgeEffectCompat.onPull(this.ad, -f2 / getWidth(), 1.0F - f3 / getHeight());
        i1 = 1;
        label358:
        if (f4 >= 0.0F) {
          break label468;
        }
        v();
        EdgeEffectCompat.onPull(this.ae, -f4 / getHeight(), f1 / getWidth());
        i1 = 1;
      }
      for (;;)
      {
        if ((i1 != 0) || (f2 != 0.0F) || (f4 != 0.0F)) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        a(paramInt1, paramInt2);
        break;
        label428:
        if (f2 <= 0.0F) {
          break label358;
        }
        u();
        EdgeEffectCompat.onPull(this.af, f2 / getWidth(), f3 / getHeight());
        i1 = 1;
        break label358;
        label468:
        if (f4 > 0.0F)
        {
          w();
          EdgeEffectCompat.onPull(this.ag, f4 / getHeight(), 1.0F - f1 / getWidth());
          i1 = 1;
        }
      }
      return false;
      i5 = 0;
      i1 = i2;
      i2 = i5;
      break;
      i3 = 0;
      i2 = i6;
    }
  }
  
  private boolean a(View paramView1, View paramView2, int paramInt)
  {
    this.j.set(0, 0, paramView1.getWidth(), paramView1.getHeight());
    this.Q.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
    offsetDescendantRectToMyCoords(paramView1, this.j);
    offsetDescendantRectToMyCoords(paramView2, this.Q);
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("direction must be absolute. received:" + paramInt);
    case 17: 
      if (((this.j.right <= this.Q.right) && (this.j.left < this.Q.right)) || (this.j.left <= this.Q.left)) {
        break;
      }
    }
    do
    {
      do
      {
        do
        {
          return true;
          return false;
        } while (((this.j.left < this.Q.left) || (this.j.right <= this.Q.left)) && (this.j.right < this.Q.right));
        return false;
      } while (((this.j.bottom > this.Q.bottom) || (this.j.top >= this.Q.bottom)) && (this.j.top > this.Q.top));
      return false;
    } while (((this.j.top < this.Q.top) || (this.j.bottom <= this.Q.top)) && (this.j.bottom < this.Q.bottom));
    return false;
  }
  
  private void c(ViewHolder paramViewHolder)
  {
    View localView = paramViewHolder.a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      this.d.b(b(localView));
      if (!paramViewHolder.o()) {
        break;
      }
      this.f.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      this.f.a(localView);
      return;
    }
    this.f.e(localView);
  }
  
  private long d(ViewHolder paramViewHolder)
  {
    if (this.l.b()) {
      return paramViewHolder.e;
    }
    return paramViewHolder.c;
  }
  
  private ViewHolder d(int paramInt)
  {
    Object localObject = null;
    if (this.w) {}
    int i1;
    ViewHolder localViewHolder;
    do
    {
      return (ViewHolder)localObject;
      int i2 = this.f.b();
      i1 = 0;
      localObject = null;
      if (i1 >= i2) {
        break;
      }
      localViewHolder = d(this.f.c(i1));
      if ((localViewHolder == null) || (localViewHolder.n()) || (b(localViewHolder) != paramInt)) {
        break label100;
      }
      localObject = localViewHolder;
    } while (!this.f.d(localViewHolder.a));
    localObject = localViewHolder;
    label100:
    for (;;)
    {
      i1 += 1;
      break;
      return (ViewHolder)localObject;
    }
  }
  
  static ViewHolder d(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return ((LayoutParams)paramView.getLayoutParams()).c;
  }
  
  public static int e(View paramView)
  {
    paramView = d(paramView);
    if (paramView != null) {
      return paramView.d();
    }
    return -1;
  }
  
  @Nullable
  static RecyclerView g(@NonNull View paramView)
  {
    if (!(paramView instanceof ViewGroup)) {
      return null;
    }
    if ((paramView instanceof RecyclerView)) {
      return (RecyclerView)paramView;
    }
    paramView = (ViewGroup)paramView;
    int i2 = paramView.getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      RecyclerView localRecyclerView = g(paramView.getChildAt(i1));
      if (localRecyclerView != null) {
        return localRecyclerView;
      }
      i1 += 1;
    }
    return null;
  }
  
  static long p()
  {
    if (K) {
      return System.nanoTime();
    }
    return 0L;
  }
  
  private void r()
  {
    a(0);
    s();
  }
  
  private void s()
  {
    this.y.b();
    if (this.m != null) {
      this.m.y();
    }
  }
  
  private void t()
  {
    if (this.ad != null) {
      return;
    }
    this.ad = new EdgeEffect(getContext());
    if (this.h)
    {
      this.ad.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.ad.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  private void u()
  {
    if (this.af != null) {
      return;
    }
    this.af = new EdgeEffect(getContext());
    if (this.h)
    {
      this.af.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.af.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  private void v()
  {
    if (this.ae != null) {
      return;
    }
    this.ae = new EdgeEffect(getContext());
    if (this.h)
    {
      this.ae.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.ae.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  private void w()
  {
    if (this.ag != null) {
      return;
    }
    this.ag = new EdgeEffect(getContext());
    if (this.h)
    {
      this.ag.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.ag.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  private void x()
  {
    this.ag = null;
    this.ae = null;
    this.af = null;
    this.ad = null;
  }
  
  private void y()
  {
    if (this.aj != null) {
      this.aj.clear();
    }
    stopNestedScroll();
    boolean bool2 = false;
    if (this.ad != null)
    {
      this.ad.onRelease();
      bool2 = this.ad.isFinished();
    }
    boolean bool1 = bool2;
    if (this.ae != null)
    {
      this.ae.onRelease();
      bool1 = bool2 | this.ae.isFinished();
    }
    bool2 = bool1;
    if (this.af != null)
    {
      this.af.onRelease();
      bool2 = bool1 | this.af.isFinished();
    }
    bool1 = bool2;
    if (this.ag != null)
    {
      this.ag.onRelease();
      bool1 = bool2 | this.ag.isFinished();
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private void z()
  {
    y();
    a(0);
  }
  
  public final View a(float paramFloat1, float paramFloat2)
  {
    int i1 = this.f.a() - 1;
    while (i1 >= 0)
    {
      View localView = this.f.b(i1);
      float f1 = localView.getTranslationX();
      float f2 = localView.getTranslationY();
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= f1 + localView.getRight()) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  final void a()
  {
    if (this.x != null) {
      this.x.d();
    }
    if (this.m != null)
    {
      this.m.c(this.d);
      this.m.b(this.d);
    }
    this.d.a();
  }
  
  final void a(int paramInt)
  {
    if (paramInt == this.ah) {}
    for (;;)
    {
      return;
      this.ah = paramInt;
      if (paramInt != 2) {
        s();
      }
      if (this.av != null)
      {
        paramInt = this.av.size() - 1;
        while (paramInt >= 0)
        {
          this.av.get(paramInt);
          paramInt -= 1;
        }
      }
    }
  }
  
  final void a(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.ad != null)
    {
      bool1 = bool2;
      if (!this.ad.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0)
        {
          this.ad.onRelease();
          bool1 = this.ad.isFinished();
        }
      }
    }
    bool2 = bool1;
    if (this.af != null)
    {
      bool2 = bool1;
      if (!this.af.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0)
        {
          this.af.onRelease();
          bool2 = bool1 | this.af.isFinished();
        }
      }
    }
    bool1 = bool2;
    if (this.ae != null)
    {
      bool1 = bool2;
      if (!this.ae.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0)
        {
          this.ae.onRelease();
          bool1 = bool2 | this.ae.isFinished();
        }
      }
    }
    bool2 = bool1;
    if (this.ag != null)
    {
      bool2 = bool1;
      if (!this.ag.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0)
        {
          this.ag.onRelease();
          bool2 = bool1 | this.ag.isFinished();
        }
      }
    }
    if (bool2) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = this.f.b();
    int i1 = 0;
    if (i1 < i2)
    {
      localObject = d(this.f.c(i1));
      if ((localObject != null) && (!((ViewHolder)localObject).b()))
      {
        if (((ViewHolder)localObject).c < paramInt1 + paramInt2) {
          break label82;
        }
        ((ViewHolder)localObject).a(-paramInt2, paramBoolean);
        this.B.e = true;
      }
      for (;;)
      {
        i1 += 1;
        break;
        label82:
        if (((ViewHolder)localObject).c >= paramInt1)
        {
          int i3 = -paramInt2;
          ((ViewHolder)localObject).b(8);
          ((ViewHolder)localObject).a(i3, paramBoolean);
          ((ViewHolder)localObject).c = (paramInt1 - 1);
          this.B.e = true;
        }
      }
    }
    Object localObject = this.d;
    i1 = ((Recycler)localObject).c.size() - 1;
    if (i1 >= 0)
    {
      ViewHolder localViewHolder = (ViewHolder)((Recycler)localObject).c.get(i1);
      if (localViewHolder != null)
      {
        if (localViewHolder.c < paramInt1 + paramInt2) {
          break label200;
        }
        localViewHolder.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i1 -= 1;
        break;
        label200:
        if (localViewHolder.c >= paramInt1)
        {
          localViewHolder.b(8);
          ((Recycler)localObject).b(i1);
        }
      }
    }
    requestLayout();
  }
  
  public final void a(Adapter paramAdapter)
  {
    if (this.u)
    {
      a("Do not setLayoutFrozen in layout or scroll");
      this.u = false;
      if ((this.t) && (this.m != null) && (this.l != null)) {
        requestLayout();
      }
      this.t = false;
    }
    if (this.l != null) {
      this.l.b(this.O);
    }
    a();
    this.e.a();
    Adapter localAdapter1 = this.l;
    this.l = paramAdapter;
    if (paramAdapter != null) {
      paramAdapter.a(this.O);
    }
    paramAdapter = this.d;
    Adapter localAdapter2 = this.l;
    paramAdapter.a();
    paramAdapter.e().a(localAdapter1, localAdapter2);
    this.B.e = true;
    l();
    requestLayout();
  }
  
  public final void a(ItemDecoration paramItemDecoration)
  {
    if (this.m != null) {
      this.m.a("Cannot add item decoration during a scroll  or layout");
    }
    if (this.o.isEmpty()) {
      setWillNotDraw(false);
    }
    this.o.add(paramItemDecoration);
    k();
    requestLayout();
  }
  
  public final void a(LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager == this.m) {
      return;
    }
    r();
    if (this.m != null)
    {
      if (this.x != null) {
        this.x.d();
      }
      this.m.c(this.d);
      this.m.b(this.d);
      this.d.a();
      if (this.p) {
        this.m.b(this, this.d);
      }
      this.m.a(null);
      this.m = null;
    }
    b localb;
    for (;;)
    {
      localb = this.f;
      for (b.a locala = localb.b;; locala = locala.b)
      {
        locala.a = 0L;
        if (locala.b == null) {
          break;
        }
      }
      this.d.a();
    }
    int i1 = localb.c.size() - 1;
    while (i1 >= 0)
    {
      localb.a.d((View)localb.c.get(i1));
      localb.c.remove(i1);
      i1 -= 1;
    }
    localb.a.b();
    this.m = paramLayoutManager;
    if (paramLayoutManager != null)
    {
      if (paramLayoutManager.q != null) {
        throw new IllegalArgumentException("LayoutManager " + paramLayoutManager + " is already attached to a RecyclerView: " + paramLayoutManager.q);
      }
      this.m.a(this);
      if (this.p) {
        this.m.v = true;
      }
    }
    this.d.b();
    requestLayout();
  }
  
  public final void a(OnScrollListener paramOnScrollListener)
  {
    if (this.av == null) {
      this.av = new ArrayList();
    }
    this.av.add(paramOnScrollListener);
  }
  
  final void a(ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    paramViewHolder.a(0, 8192);
    if ((this.B.g) && (paramViewHolder.t()) && (!paramViewHolder.n()) && (!paramViewHolder.b()))
    {
      long l1 = d(paramViewHolder);
      this.g.a(l1, paramViewHolder);
    }
    this.g.a(paramViewHolder, paramItemHolderInfo);
  }
  
  final void a(@NonNull ViewHolder paramViewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder.a(false);
    if (this.x.b(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      j();
    }
  }
  
  public final void a(b paramb)
  {
    if (paramb == this.ax) {
      return;
    }
    this.ax = paramb;
    if (this.ax != null) {}
    for (boolean bool = true;; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }
  
  public final void a(e parame)
  {
    this.R.add(parame);
  }
  
  final void a(String paramString)
  {
    if (A())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
    if (this.ac > 0) {
      Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(""));
    }
  }
  
  final void a(boolean paramBoolean)
  {
    if (this.T <= 0) {
      this.T = 1;
    }
    if (!paramBoolean) {
      this.t = false;
    }
    if (this.T == 1)
    {
      if ((paramBoolean) && (this.t) && (!this.u) && (this.m != null) && (this.l != null)) {
        D();
      }
      if (!this.u) {
        this.t = false;
      }
    }
    this.T -= 1;
  }
  
  final boolean a(View paramView)
  {
    e();
    boolean bool2 = this.f.g(paramView);
    if (bool2)
    {
      paramView = d(paramView);
      this.d.b(paramView);
      this.d.a(paramView);
    }
    if (!bool2) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      a(bool1);
      return bool2;
    }
  }
  
  @VisibleForTesting
  final boolean a(ViewHolder paramViewHolder, int paramInt)
  {
    if (A())
    {
      paramViewHolder.l = paramInt;
      this.G.add(paramViewHolder);
      return false;
    }
    ViewCompat.setImportantForAccessibility(paramViewHolder.a, paramInt);
    return true;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }
  
  final int b(ViewHolder paramViewHolder)
  {
    int i1;
    if ((paramViewHolder.a(524)) || (!paramViewHolder.m())) {
      i1 = -1;
    }
    a locala;
    int i2;
    int i5;
    int i4;
    do
    {
      return i1;
      locala = this.e;
      i2 = paramViewHolder.c;
      i5 = locala.a.size();
      i4 = 0;
      i1 = i2;
    } while (i4 >= i5);
    paramViewHolder = (a.b)locala.a.get(i4);
    switch (paramViewHolder.a)
    {
    default: 
      i1 = i2;
    }
    for (;;)
    {
      i4 += 1;
      i2 = i1;
      break;
      i1 = i2;
      if (paramViewHolder.b <= i2)
      {
        i1 = i2 + paramViewHolder.d;
        continue;
        i1 = i2;
        if (paramViewHolder.b <= i2)
        {
          if (paramViewHolder.b + paramViewHolder.d > i2) {
            return -1;
          }
          i1 = i2 - paramViewHolder.d;
          continue;
          if (paramViewHolder.b == i2)
          {
            i1 = paramViewHolder.d;
          }
          else
          {
            int i3 = i2;
            if (paramViewHolder.b < i2) {
              i3 = i2 - 1;
            }
            i1 = i3;
            if (paramViewHolder.d <= i3) {
              i1 = i3 + 1;
            }
          }
        }
      }
    }
  }
  
  public final LayoutManager b()
  {
    return this.m;
  }
  
  public final ViewHolder b(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return d(paramView);
  }
  
  public final void b(int paramInt)
  {
    if (this.u) {
      return;
    }
    r();
    if (this.m == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    this.m.d(paramInt);
    awakenScrollBars();
  }
  
  final void b(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      t();
      this.ad.onAbsorb(-paramInt1);
      if (paramInt2 >= 0) {
        break label66;
      }
      v();
      this.ae.onAbsorb(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      u();
      this.af.onAbsorb(paramInt1);
      break;
      label66:
      if (paramInt2 > 0)
      {
        w();
        this.ag.onAbsorb(paramInt2);
      }
    }
  }
  
  public final void b(OnScrollListener paramOnScrollListener)
  {
    if (this.av != null) {
      this.av.remove(paramOnScrollListener);
    }
  }
  
  final void b(@NonNull ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    c(paramViewHolder);
    paramViewHolder.a(false);
    if (this.x.a(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      j();
    }
  }
  
  public final void b(e parame)
  {
    this.R.remove(parame);
    if (this.S == parame) {
      this.S = null;
    }
  }
  
  public final int c()
  {
    return this.ah;
  }
  
  @Nullable
  public final View c(View paramView)
  {
    for (ViewParent localViewParent = paramView.getParent(); (localViewParent != null) && (localViewParent != this) && ((localViewParent instanceof View)); localViewParent = paramView.getParent()) {
      paramView = (View)localViewParent;
    }
    if (localViewParent == this) {
      return paramView;
    }
    return null;
  }
  
  final void c(int paramInt)
  {
    if (this.m == null) {
      return;
    }
    this.m.d(paramInt);
    awakenScrollBars();
  }
  
  final void c(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(LayoutManager.a(paramInt1, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), LayoutManager.a(paramInt2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (this.m.a((LayoutParams)paramLayoutParams));
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (this.m == null) {}
    while (!this.m.i()) {
      return 0;
    }
    return this.m.d(this.B);
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (this.m == null) {}
    while (!this.m.i()) {
      return 0;
    }
    return this.m.b(this.B);
  }
  
  public int computeHorizontalScrollRange()
  {
    if (this.m == null) {}
    while (!this.m.i()) {
      return 0;
    }
    return this.m.f(this.B);
  }
  
  public int computeVerticalScrollExtent()
  {
    if (this.m == null) {}
    while (!this.m.j()) {
      return 0;
    }
    return this.m.e(this.B);
  }
  
  public int computeVerticalScrollOffset()
  {
    if (this.m == null) {}
    while (!this.m.j()) {
      return 0;
    }
    return this.m.c(this.B);
  }
  
  public int computeVerticalScrollRange()
  {
    if (this.m == null) {}
    while (!this.m.j()) {
      return 0;
    }
    return this.m.g(this.B);
  }
  
  final void d()
  {
    int i3 = 0;
    if ((!this.s) || (this.w))
    {
      TraceCompat.beginSection("RV FullInvalidate");
      D();
      TraceCompat.endSection();
    }
    label167:
    label174:
    do
    {
      do
      {
        return;
      } while (!this.e.d());
      if ((this.e.a(4)) && (!this.e.a(11)))
      {
        TraceCompat.beginSection("RV PartialInvalidate");
        e();
        f();
        this.e.b();
        int i1;
        if (!this.t)
        {
          int i4 = this.f.a();
          i1 = 0;
          int i2 = i3;
          if (i1 < i4)
          {
            ViewHolder localViewHolder = d(this.f.b(i1));
            if ((localViewHolder == null) || (localViewHolder.b()) || (!localViewHolder.t())) {
              break label167;
            }
            i2 = 1;
          }
          if (i2 == 0) {
            break label174;
          }
          D();
        }
        for (;;)
        {
          a(true);
          g();
          TraceCompat.endSection();
          return;
          i1 += 1;
          break;
          this.e.c();
        }
      }
    } while (!this.e.d());
    TraceCompat.beginSection("RV FullInvalidate");
    D();
    TraceCompat.endSection();
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return J().dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return J().dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return J().dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return J().dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = this.o.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((ItemDecoration)this.o.get(i1)).a(paramCanvas, this);
      i1 += 1;
    }
    int i5;
    if ((this.ad != null) && (!this.ad.isFinished()))
    {
      i5 = paramCanvas.save();
      if (this.h)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((this.ad == null) || (!this.ad.draw(paramCanvas))) {
          break label452;
        }
        i2 = 1;
        label124:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (this.ae != null)
      {
        i1 = i2;
        if (!this.ae.isFinished())
        {
          i5 = paramCanvas.save();
          if (this.h) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((this.ae == null) || (!this.ae.draw(paramCanvas))) {
            break label457;
          }
          i1 = 1;
          label198:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (this.af != null)
      {
        i2 = i1;
        if (!this.af.isFinished())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!this.h) {
            break label462;
          }
          i2 = getPaddingTop();
          label253:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((this.af == null) || (!this.af.draw(paramCanvas))) {
            break label467;
          }
          i2 = 1;
          label291:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (this.ag != null)
      {
        i1 = i2;
        if (!this.ag.isFinished())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!this.h) {
            break label472;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label368:
          i1 = i4;
          if (this.ag != null)
          {
            i1 = i4;
            if (this.ag.draw(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (this.x != null) && (this.o.size() > 0) && (this.x.b())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        return;
        i1 = 0;
        break;
        label452:
        i2 = 0;
        break label124;
        label457:
        i1 = 0;
        break label198;
        label462:
        i2 = 0;
        break label253;
        label467:
        i2 = 0;
        break label291;
        label472:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label368;
      }
      i2 = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  final void e()
  {
    this.T += 1;
    if ((this.T == 1) && (!this.u)) {
      this.t = false;
    }
  }
  
  final Rect f(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!localLayoutParams.e) {
      return localLayoutParams.d;
    }
    if ((this.B.f) && ((localLayoutParams.c.t()) || (localLayoutParams.c.k()))) {
      return localLayoutParams.d;
    }
    Rect localRect = localLayoutParams.d;
    localRect.set(0, 0, 0, 0);
    int i2 = this.o.size();
    int i1 = 0;
    while (i1 < i2)
    {
      this.j.set(0, 0, 0, 0);
      ((ItemDecoration)this.o.get(i1)).a(this.j, paramView);
      localRect.left += this.j.left;
      localRect.top += this.j.top;
      localRect.right += this.j.right;
      localRect.bottom += this.j.bottom;
      i1 += 1;
    }
    localLayoutParams.e = false;
    return localRect;
  }
  
  final void f()
  {
    this.ab += 1;
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    int i5 = 17;
    int i6 = 0;
    boolean bool2 = true;
    int i1;
    Object localObject;
    label78:
    int i3;
    if ((this.l != null) && (this.m != null) && (!A()) && (!this.u))
    {
      i1 = 1;
      localObject = FocusFinder.getInstance();
      if ((i1 == 0) || ((paramInt != 2) && (paramInt != 1))) {
        break label333;
      }
      if (!this.m.j()) {
        break label567;
      }
      if (paramInt != 2) {
        break label229;
      }
      i1 = 130;
      if (((FocusFinder)localObject).findNextFocus(this, paramView, i1) != null) {
        break label235;
      }
      i3 = 1;
      label92:
      i2 = i3;
      if (L) {
        paramInt = i1;
      }
    }
    label153:
    label161:
    label171:
    label229:
    label235:
    label241:
    label246:
    label252:
    label258:
    label264:
    label292:
    label333:
    label530:
    label567:
    for (int i2 = i3;; i2 = 0)
    {
      int i4 = i2;
      i3 = paramInt;
      if (i2 == 0)
      {
        i4 = i2;
        i3 = paramInt;
        if (this.m.i())
        {
          if (ViewCompat.getLayoutDirection(this.m.q) != 1) {
            break label241;
          }
          i1 = 1;
          if (paramInt != 2) {
            break label246;
          }
          i2 = 1;
          if ((i2 ^ i1) == 0) {
            break label252;
          }
          i1 = 66;
          if (((FocusFinder)localObject).findNextFocus(this, paramView, i1) != null) {
            break label258;
          }
        }
      }
      for (i2 = 1;; i2 = 0)
      {
        i4 = i2;
        i3 = paramInt;
        if (L)
        {
          i3 = i1;
          i4 = i2;
        }
        if (i4 == 0) {
          break label292;
        }
        d();
        if (c(paramView) != null) {
          break label264;
        }
        return null;
        i1 = 0;
        break;
        i1 = 33;
        break label78;
        i3 = 0;
        break label92;
        i1 = 0;
        break label153;
        i2 = 0;
        break label161;
        i1 = 17;
        break label171;
      }
      e();
      this.m.a(paramView, i3, this.d, this.B);
      a(false);
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, i3);
      paramInt = i3;
      for (;;)
      {
        if ((localObject != null) && (!((View)localObject).hasFocusable()))
        {
          if (getFocusedChild() == null)
          {
            return super.focusSearch(paramView, paramInt);
            localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, paramInt);
            if ((localObject == null) && (i1 != 0))
            {
              d();
              if (c(paramView) == null) {
                return null;
              }
              e();
              localObject = this.m.a(paramView, paramInt, this.d, this.B);
              a(false);
            }
          }
          else
          {
            a((View)localObject, null);
            return paramView;
          }
        }
        else
        {
          boolean bool1;
          if ((localObject == null) || (localObject == this)) {
            bool1 = false;
          }
          while (bool1)
          {
            return (View)localObject;
            bool1 = bool2;
            if (paramView != null) {
              if ((paramInt == 2) || (paramInt == 1))
              {
                if (ViewCompat.getLayoutDirection(this.m.q) == 1) {}
                for (i1 = 1;; i1 = 0)
                {
                  i2 = i6;
                  if (paramInt == 2) {
                    i2 = 1;
                  }
                  i3 = i5;
                  if ((i2 ^ i1) != 0) {
                    i3 = 66;
                  }
                  bool1 = bool2;
                  if (a(paramView, (View)localObject, i3)) {
                    break;
                  }
                  if (paramInt != 2) {
                    break label530;
                  }
                  bool1 = a(paramView, (View)localObject, 130);
                  break;
                }
                bool1 = a(paramView, (View)localObject, 33);
              }
              else
              {
                bool1 = a(paramView, (View)localObject, paramInt);
              }
            }
          }
          return super.focusSearch(paramView, paramInt);
        }
      }
    }
  }
  
  final void g()
  {
    this.ab -= 1;
    if (this.ab <= 0)
    {
      this.ab = 0;
      int i1 = this.V;
      this.V = 0;
      Object localObject;
      if ((i1 != 0) && (h()))
      {
        localObject = AccessibilityEvent.obtain();
        ((AccessibilityEvent)localObject).setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes((AccessibilityEvent)localObject, i1);
        sendAccessibilityEventUnchecked((AccessibilityEvent)localObject);
      }
      i1 = this.G.size() - 1;
      while (i1 >= 0)
      {
        localObject = (ViewHolder)this.G.get(i1);
        if ((((ViewHolder)localObject).a.getParent() == this) && (!((ViewHolder)localObject).b()))
        {
          int i2 = ((ViewHolder)localObject).l;
          if (i2 != -1)
          {
            ViewCompat.setImportantForAccessibility(((ViewHolder)localObject).a, i2);
            ((ViewHolder)localObject).l = -1;
          }
        }
        i1 -= 1;
      }
      this.G.clear();
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.m == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.m.f();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.m == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.m.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.m == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.m.a(paramLayoutParams);
  }
  
  public int getBaseline()
  {
    if (this.m != null) {
      return -1;
    }
    return super.getBaseline();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.ax == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return this.ax.a(paramInt1, paramInt2);
  }
  
  public boolean getClipToPadding()
  {
    return this.h;
  }
  
  final void h(View paramView)
  {
    d(paramView);
    if (this.aa != null)
    {
      int i1 = this.aa.size() - 1;
      while (i1 >= 0)
      {
        ((d)this.aa.get(i1)).a(paramView);
        i1 -= 1;
      }
    }
  }
  
  final boolean h()
  {
    return (this.W != null) && (this.W.isEnabled());
  }
  
  public boolean hasNestedScrollingParent()
  {
    return J().hasNestedScrollingParent();
  }
  
  public final ItemAnimator i()
  {
    return this.x;
  }
  
  final void i(View paramView)
  {
    d(paramView);
    if (this.aa != null)
    {
      int i1 = this.aa.size() - 1;
      while (i1 >= 0)
      {
        this.aa.get(i1);
        i1 -= 1;
      }
    }
  }
  
  public boolean isAttachedToWindow()
  {
    return this.p;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return J().isNestedScrollingEnabled();
  }
  
  final void j()
  {
    if ((!this.E) && (this.p))
    {
      ViewCompat.postOnAnimation(this, this.aD);
      this.E = true;
    }
  }
  
  final void k()
  {
    int i2 = 0;
    int i3 = this.f.b();
    int i1 = 0;
    while (i1 < i3)
    {
      ((LayoutParams)this.f.c(i1).getLayoutParams()).e = true;
      i1 += 1;
    }
    Recycler localRecycler = this.d;
    i3 = localRecycler.c.size();
    i1 = i2;
    while (i1 < i3)
    {
      LayoutParams localLayoutParams = (LayoutParams)((ViewHolder)localRecycler.c.get(i1)).a.getLayoutParams();
      if (localLayoutParams != null) {
        localLayoutParams.e = true;
      }
      i1 += 1;
    }
  }
  
  final void l()
  {
    int i2 = this.f.b();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject = d(this.f.c(i1));
      if ((localObject != null) && (!((ViewHolder)localObject).b())) {
        ((ViewHolder)localObject).b(6);
      }
      i1 += 1;
    }
    k();
    Object localObject = this.d;
    if ((((Recycler)localObject).f.l != null) && (((Recycler)localObject).f.l.b()))
    {
      i2 = ((Recycler)localObject).c.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      ViewHolder localViewHolder = (ViewHolder)((Recycler)localObject).c.get(i1);
      if (localViewHolder != null)
      {
        localViewHolder.b(6);
        localViewHolder.a(null);
      }
      i1 += 1;
      continue;
      ((Recycler)localObject).d();
    }
  }
  
  final void m()
  {
    this.ac += 1;
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    if (this.au != null) {
      this.au.a(this);
    }
    if (this.av != null)
    {
      i1 = this.av.size() - 1;
      while (i1 >= 0)
      {
        ((OnScrollListener)this.av.get(i1)).a(this);
        i1 -= 1;
      }
    }
    this.ac -= 1;
  }
  
  public final boolean n()
  {
    return (!this.s) || (this.w) || (this.e.d());
  }
  
  final void o()
  {
    int i2 = this.f.a();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = this.f.b(i1);
      Object localObject = b(localView);
      if ((localObject != null) && (((ViewHolder)localObject).i != null))
      {
        localObject = ((ViewHolder)localObject).i.a;
        int i3 = localView.getLeft();
        int i4 = localView.getTop();
        if ((i3 != ((View)localObject).getLeft()) || (i4 != ((View)localObject).getTop())) {
          ((View)localObject).layout(i3, i4, ((View)localObject).getWidth() + i3, ((View)localObject).getHeight() + i4);
        }
      }
      i1 += 1;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.ab = 0;
    this.p = true;
    boolean bool;
    float f1;
    if ((this.s) && (!isLayoutRequested()))
    {
      bool = true;
      this.s = bool;
      if (this.m != null) {
        this.m.v = true;
      }
      this.E = false;
      if (K)
      {
        this.z = ((n)n.a.get());
        if (this.z == null)
        {
          this.z = new n();
          Display localDisplay = ViewCompat.getDisplay(this);
          if ((isInEditMode()) || (localDisplay == null)) {
            break label162;
          }
          f1 = localDisplay.getRefreshRate();
          if (f1 < 30.0F) {
            break label162;
          }
        }
      }
    }
    for (;;)
    {
      this.z.d = ((1.0E9F / f1));
      n.a.set(this.z);
      this.z.b.add(this);
      return;
      bool = false;
      break;
      label162:
      f1 = 60.0F;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.x != null) {
      this.x.d();
    }
    r();
    this.p = false;
    if (this.m != null) {
      this.m.b(this, this.d);
    }
    this.G.clear();
    removeCallbacks(this.aD);
    ae.a.b();
    if (K)
    {
      this.z.b.remove(this);
      this.z = null;
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = this.o.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((ItemDecoration)this.o.get(i1)).b(paramCanvas, this);
      i1 += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    float f3 = 0.0F;
    if (this.m == null) {}
    label171:
    label174:
    for (;;)
    {
      return false;
      if ((!this.u) && ((paramMotionEvent.getSource() & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (this.m.j())
        {
          f1 = -paramMotionEvent.getAxisValue(9);
          if (!this.m.i()) {
            break label171;
          }
        }
        for (float f2 = paramMotionEvent.getAxisValue(10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label174;
          }
          if (this.as == Float.MIN_VALUE)
          {
            TypedValue localTypedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
              this.as = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
            }
          }
          else
          {
            f3 = this.as;
          }
          a((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    boolean bool1 = true;
    if (this.u)
    {
      bool1 = false;
      return bool1;
    }
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      this.S = null;
    }
    int i4 = this.R.size();
    int i1 = 0;
    if (i1 < i4)
    {
      e locale = (e)this.R.get(i1);
      if ((locale.a(paramMotionEvent)) && (i2 != 3)) {
        this.S = locale;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0) {
        break label114;
      }
      z();
      return true;
      i1 += 1;
      break;
    }
    label114:
    if (this.m == null) {
      return false;
    }
    boolean bool2 = this.m.i();
    boolean bool3 = this.m.j();
    if (this.aj == null) {
      this.aj = VelocityTracker.obtain();
    }
    this.aj.addMovement(paramMotionEvent);
    i2 = paramMotionEvent.getActionMasked();
    i1 = paramMotionEvent.getActionIndex();
    switch (i2)
    {
    case 4: 
    default: 
      if (this.ah != 1) {
        return false;
      }
      break;
    case 0: 
      label216:
      if (this.U) {
        this.U = false;
      }
      this.ai = paramMotionEvent.getPointerId(0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      this.am = i1;
      this.ak = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      this.an = i1;
      this.al = i1;
      if (this.ah == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        a(1);
      }
      paramMotionEvent = this.aC;
      this.aC[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool2) {}
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool3) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      break label216;
      this.ai = paramMotionEvent.getPointerId(i1);
      i2 = (int)(paramMotionEvent.getX(i1) + 0.5F);
      this.am = i2;
      this.ak = i2;
      i1 = (int)(paramMotionEvent.getY(i1) + 0.5F);
      this.an = i1;
      this.al = i1;
      break label216;
      i2 = paramMotionEvent.findPointerIndex(this.ai);
      if (i2 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ai + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i1 = (int)(paramMotionEvent.getX(i2) + 0.5F);
      i2 = (int)(paramMotionEvent.getY(i2) + 0.5F);
      if (this.ah == 1) {
        break label216;
      }
      i1 -= this.ak;
      i4 = i2 - this.al;
      int i5;
      if ((bool2) && (Math.abs(i1) > this.ao))
      {
        i2 = this.ak;
        i5 = this.ao;
        if (i1 < 0)
        {
          i1 = -1;
          label533:
          this.am = (i1 * i5 + i2);
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        i2 = i1;
        if (bool3)
        {
          i2 = i1;
          if (Math.abs(i4) > this.ao)
          {
            i2 = this.al;
            i5 = this.ao;
            if (i4 >= 0) {
              break label614;
            }
          }
        }
        label614:
        for (i1 = i3;; i1 = 1)
        {
          this.an = (i2 + i1 * i5);
          i2 = 1;
          if (i2 == 0) {
            break;
          }
          a(1);
          break;
          i1 = 1;
          break label533;
        }
        a(paramMotionEvent);
        break label216;
        this.aj.clear();
        stopNestedScroll();
        break label216;
        z();
        break label216;
        break;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    TraceCompat.beginSection("RV OnLayout");
    D();
    TraceCompat.endSection();
    this.s = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 0;
    if (this.m == null) {
      c(paramInt1, paramInt2);
    }
    do
    {
      int i1;
      do
      {
        return;
        if (!this.m.w) {
          break;
        }
        int i3 = View.MeasureSpec.getMode(paramInt1);
        int i4 = View.MeasureSpec.getMode(paramInt2);
        i1 = i2;
        if (i3 == 1073741824)
        {
          i1 = i2;
          if (i4 == 1073741824) {
            i1 = 1;
          }
        }
        this.m.c(paramInt1, paramInt2);
      } while ((i1 != 0) || (this.l == null));
      if (this.B.c == 1) {
        G();
      }
      this.m.a(paramInt1, paramInt2);
      this.B.h = true;
      H();
      this.m.b(paramInt1, paramInt2);
    } while (!this.m.m());
    this.m.a(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    this.B.h = true;
    H();
    this.m.b(paramInt1, paramInt2);
    return;
    if (this.q)
    {
      this.m.c(paramInt1, paramInt2);
      return;
    }
    if (this.v)
    {
      e();
      f();
      C();
      g();
      if (this.B.j)
      {
        this.B.f = true;
        this.v = false;
        a(false);
      }
    }
    else
    {
      if (this.l == null) {
        break label321;
      }
    }
    label321:
    for (this.B.d = this.l.a();; this.B.d = 0)
    {
      e();
      this.m.c(paramInt1, paramInt2);
      a(false);
      this.B.f = false;
      return;
      this.e.e();
      this.B.f = false;
      break;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    if (A()) {
      return false;
    }
    return super.onRequestFocusInDescendants(paramInt, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    do
    {
      return;
      this.P = ((SavedState)paramParcelable);
      super.onRestoreInstanceState(this.P.getSuperState());
    } while ((this.m == null) || (this.P.a == null));
    this.m.a(this.P.a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (this.P != null)
    {
      localSavedState.a = this.P.a;
      return localSavedState;
    }
    if (this.m != null)
    {
      localSavedState.a = this.m.h();
      return localSavedState;
    }
    localSavedState.a = null;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      x();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i7 = 0;
    if ((this.u) || (this.U)) {}
    label144:
    label153:
    label159:
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      if (this.S != null)
      {
        if (i1 == 0) {
          this.S = null;
        }
      }
      else
      {
        if (i1 == 0) {
          break label153;
        }
        i2 = this.R.size();
        i1 = 0;
        if (i1 >= i2) {
          break label153;
        }
        localObject = (e)this.R.get(i1);
        if (!((e)localObject).a(paramMotionEvent)) {
          break label144;
        }
        this.S = ((e)localObject);
        i1 = 1;
      }
      for (;;)
      {
        if (i1 == 0) {
          break label159;
        }
        z();
        return true;
        this.S.b(paramMotionEvent);
        if ((i1 == 3) || (i1 == 1)) {
          this.S = null;
        }
        i1 = 1;
        continue;
        i1 += 1;
        break;
        i1 = 0;
      }
    } while (this.m == null);
    boolean bool1 = this.m.i();
    boolean bool2 = this.m.j();
    if (this.aj == null) {
      this.aj = VelocityTracker.obtain();
    }
    Object localObject = MotionEvent.obtain(paramMotionEvent);
    int i3 = paramMotionEvent.getActionMasked();
    int i2 = paramMotionEvent.getActionIndex();
    if (i3 == 0)
    {
      int[] arrayOfInt = this.aC;
      this.aC[1] = 0;
      arrayOfInt[0] = 0;
    }
    ((MotionEvent)localObject).offsetLocation(this.aC[0], this.aC[1]);
    int i1 = i7;
    switch (i3)
    {
    default: 
      i1 = i7;
    case 4: 
      if (i1 == 0) {
        this.aj.addMovement((MotionEvent)localObject);
      }
      ((MotionEvent)localObject).recycle();
      return true;
    case 0: 
      this.ai = paramMotionEvent.getPointerId(0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      this.am = i1;
      this.ak = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      this.an = i1;
      this.al = i1;
      if (!bool1) {
        break;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      i1 = i7;
      break;
      this.ai = paramMotionEvent.getPointerId(i2);
      i1 = (int)(paramMotionEvent.getX(i2) + 0.5F);
      this.am = i1;
      this.ak = i1;
      i1 = (int)(paramMotionEvent.getY(i2) + 0.5F);
      this.an = i1;
      this.al = i1;
      i1 = i7;
      break;
      i1 = paramMotionEvent.findPointerIndex(this.ai);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ai + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i8 = (int)(paramMotionEvent.getX(i1) + 0.5F);
      int i9 = (int)(paramMotionEvent.getY(i1) + 0.5F);
      int i4 = this.am - i8;
      i3 = this.an - i9;
      i1 = i3;
      i2 = i4;
      if (dispatchNestedPreScroll(i4, i3, this.aB, this.aA))
      {
        i2 = i4 - this.aB[0];
        i1 = i3 - this.aB[1];
        ((MotionEvent)localObject).offsetLocation(this.aA[0], this.aA[1]);
        paramMotionEvent = this.aC;
        paramMotionEvent[0] += this.aA[0];
        paramMotionEvent = this.aC;
        paramMotionEvent[1] += this.aA[1];
      }
      i3 = i1;
      i4 = i2;
      if (this.ah != 1)
      {
        if ((!bool1) || (Math.abs(i2) <= this.ao)) {
          break label1337;
        }
        if (i2 <= 0) {
          break label939;
        }
        i2 -= this.ao;
      }
      label737:
      label787:
      label863:
      label939:
      label951:
      label969:
      label1029:
      label1047:
      label1084:
      label1087:
      label1112:
      label1117:
      label1260:
      label1332:
      label1337:
      for (i3 = 1;; i3 = 0)
      {
        int i5 = i1;
        int i6 = i3;
        if (bool2)
        {
          i5 = i1;
          i6 = i3;
          if (Math.abs(i1) > this.ao)
          {
            if (i1 <= 0) {
              break label951;
            }
            i5 = i1 - this.ao;
            i6 = 1;
          }
        }
        i3 = i5;
        i4 = i2;
        if (i6 != 0)
        {
          a(1);
          i4 = i2;
          i3 = i5;
        }
        i1 = i7;
        if (this.ah != 1) {
          break;
        }
        this.am = (i8 - this.aA[0]);
        this.an = (i9 - this.aA[1]);
        if (bool1)
        {
          i1 = i4;
          if (!bool2) {
            break label969;
          }
        }
        for (i2 = i3;; i2 = 0)
        {
          if (a(i1, i2, (MotionEvent)localObject)) {
            getParent().requestDisallowInterceptTouchEvent(true);
          }
          i1 = i7;
          if (this.z == null) {
            break;
          }
          if (i4 == 0)
          {
            i1 = i7;
            if (i3 == 0) {
              break;
            }
          }
          this.z.a(this, i4, i3);
          i1 = i7;
          break;
          i2 += this.ao;
          break label737;
          i5 = i1 + this.ao;
          break label787;
          i1 = 0;
          break label863;
        }
        a(paramMotionEvent);
        i1 = i7;
        break;
        this.aj.addMovement((MotionEvent)localObject);
        this.aj.computeCurrentVelocity(1000, this.ar);
        float f1;
        float f2;
        if (bool1)
        {
          f1 = -this.aj.getXVelocity(this.ai);
          if (!bool2) {
            break label1112;
          }
          f2 = -this.aj.getYVelocity(this.ai);
          if ((f1 != 0.0F) || (f2 != 0.0F))
          {
            i1 = (int)f1;
            i2 = (int)f2;
            if (this.m != null) {
              break label1117;
            }
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
          }
        }
        while (this.u)
        {
          i1 = 0;
          if (i1 == 0) {
            a(0);
          }
          y();
          i1 = 1;
          break;
          f1 = 0.0F;
          break label1029;
          f2 = 0.0F;
          break label1047;
        }
        bool1 = this.m.i();
        bool2 = this.m.j();
        if ((!bool1) || (Math.abs(i1) < this.aq)) {
          i1 = 0;
        }
        for (;;)
        {
          if ((!bool2) || (Math.abs(i2) < this.aq)) {
            i2 = 0;
          }
          for (;;)
          {
            if (((i1 == 0) && (i2 == 0)) || (dispatchNestedPreFling(i1, i2))) {
              break label1332;
            }
            if ((bool1) || (bool2)) {}
            for (bool1 = true;; bool1 = false)
            {
              dispatchNestedFling(i1, i2, bool1);
              if ((this.ap == null) || (!this.ap.a())) {
                break label1260;
              }
              i1 = 1;
              break;
            }
            if (!bool1) {
              break label1084;
            }
            i1 = Math.max(-this.ar, Math.min(i1, this.ar));
            i2 = Math.max(-this.ar, Math.min(i2, this.ar));
            this.y.a(i1, i2);
            i1 = 1;
            break label1087;
            z();
            i1 = i7;
            break;
          }
          break label1084;
        }
      }
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ViewHolder localViewHolder = d(paramView);
    if (localViewHolder != null)
    {
      if (!localViewHolder.o()) {
        break label32;
      }
      localViewHolder.j();
    }
    label32:
    while (localViewHolder.b())
    {
      h(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localViewHolder);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    int i2 = 0;
    LayoutManager localLayoutManager = this.m;
    if ((localLayoutManager.t != null) && (localLayoutManager.t.e())) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        i1 = i2;
        if (!A()) {}
      }
      else
      {
        i1 = 1;
      }
      if ((i1 == 0) && (paramView2 != null)) {
        a(paramView1, paramView2);
      }
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return this.m.a(this, paramView, paramRect, paramBoolean, false);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i2 = this.R.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((e)this.R.get(i1)).a(paramBoolean);
      i1 += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((this.T == 0) && (!this.u))
    {
      super.requestLayout();
      return;
    }
    this.t = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.m == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (this.u);
      bool1 = this.m.i();
      bool2 = this.m.j();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label74;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label74:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = 0;
    int i2 = 0;
    if (A()) {
      if (paramAccessibilityEvent == null) {
        break label52;
      }
    }
    label52:
    for (i1 = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent);; i1 = 0)
    {
      if (i1 == 0) {
        i1 = i2;
      }
      for (;;)
      {
        this.V = (i1 | this.V);
        i1 = 1;
        if (i1 != 0) {
          return;
        }
        super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
        return;
      }
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.h) {
      x();
    }
    this.h = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.s) {
      requestLayout();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    J().setNestedScrollingEnabled(paramBoolean);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return J().startNestedScroll(paramInt);
  }
  
  public void stopNestedScroll()
  {
    J().stopNestedScroll();
  }
  
  public static abstract class Adapter<VH extends RecyclerView.ViewHolder>
  {
    private final RecyclerView.a a = new RecyclerView.a();
    private boolean b = false;
    
    public abstract int a();
    
    public long a(int paramInt)
    {
      return -1L;
    }
    
    public abstract VH a(ViewGroup paramViewGroup);
    
    public final void a(int paramInt1, int paramInt2)
    {
      this.a.a(paramInt1, paramInt2);
    }
    
    public final void a(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      this.a.registerObserver(paramAdapterDataObserver);
    }
    
    public abstract void a(VH paramVH, int paramInt);
    
    public final void b(int paramInt)
    {
      this.a.a(paramInt);
    }
    
    public final void b(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      this.a.unregisterObserver(paramAdapterDataObserver);
    }
    
    public final void b(VH paramVH, int paramInt)
    {
      paramVH.c = paramInt;
      if (this.b) {
        paramVH.e = a(paramInt);
      }
      paramVH.a(1, 519);
      TraceCompat.beginSection("RV OnBindView");
      paramVH.q();
      a(paramVH, paramInt);
      paramVH.p();
      paramVH = paramVH.a.getLayoutParams();
      if ((paramVH instanceof RecyclerView.LayoutParams)) {
        ((RecyclerView.LayoutParams)paramVH).e = true;
      }
      TraceCompat.endSection();
    }
    
    public final boolean b()
    {
      return this.b;
    }
    
    public final void c()
    {
      this.a.a();
    }
  }
  
  public static abstract class AdapterDataObserver
  {
    public void a() {}
    
    public void a(int paramInt) {}
    
    public void a(int paramInt1, int paramInt2) {}
  }
  
  public static abstract class ItemAnimator
  {
    private a a = null;
    private ArrayList<Object> b = new ArrayList();
    private long c = 120L;
    private long d = 120L;
    private long e = 250L;
    private long f = 250L;
    
    @NonNull
    public static ItemHolderInfo d(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return new ItemHolderInfo().a(paramViewHolder);
    }
    
    static int e(RecyclerView.ViewHolder paramViewHolder)
    {
      int j = RecyclerView.ViewHolder.f(paramViewHolder) & 0xE;
      int i;
      if (paramViewHolder.k()) {
        i = 4;
      }
      int k;
      int m;
      do
      {
        do
        {
          do
          {
            do
            {
              return i;
              i = j;
            } while ((j & 0x4) != 0);
            k = paramViewHolder.d;
            m = paramViewHolder.e();
            i = j;
          } while (k == -1);
          i = j;
        } while (m == -1);
        i = j;
      } while (k == m);
      return j | 0x800;
    }
    
    public static ItemHolderInfo j()
    {
      return new ItemHolderInfo();
    }
    
    public abstract void a();
    
    final void a(a parama)
    {
      this.a = parama;
    }
    
    public abstract boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull ItemHolderInfo paramItemHolderInfo1, @Nullable ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder1, @NonNull RecyclerView.ViewHolder paramViewHolder2, @NonNull ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull List<Object> paramList)
    {
      return g(paramViewHolder);
    }
    
    public abstract boolean b();
    
    public abstract boolean b(@NonNull RecyclerView.ViewHolder paramViewHolder, @Nullable ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void c(RecyclerView.ViewHolder paramViewHolder);
    
    public abstract boolean c(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void d();
    
    public final long e()
    {
      return this.e;
    }
    
    public final long f()
    {
      return this.c;
    }
    
    public final void f(RecyclerView.ViewHolder paramViewHolder)
    {
      if (this.a != null) {
        this.a.a(paramViewHolder);
      }
    }
    
    public final long g()
    {
      return this.d;
    }
    
    public boolean g(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return true;
    }
    
    public final long h()
    {
      return this.f;
    }
    
    public final void i()
    {
      int j = this.b.size();
      int i = 0;
      while (i < j)
      {
        this.b.get(i);
        i += 1;
      }
      this.b.clear();
    }
    
    public static class ItemHolderInfo
    {
      public int a;
      public int b;
      public int c;
      public int d;
      
      public final ItemHolderInfo a(RecyclerView.ViewHolder paramViewHolder)
      {
        paramViewHolder = paramViewHolder.a;
        this.a = paramViewHolder.getLeft();
        this.b = paramViewHolder.getTop();
        this.c = paramViewHolder.getRight();
        this.d = paramViewHolder.getBottom();
        return this;
      }
    }
    
    static abstract interface a
    {
      public abstract void a(RecyclerView.ViewHolder paramViewHolder);
    }
  }
  
  public static abstract class ItemDecoration
  {
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void a(Rect paramRect, View paramView)
    {
      ((RecyclerView.LayoutParams)paramView.getLayoutParams()).c.d();
      paramRect.set(0, 0, 0, 0);
    }
    
    public void b(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
  }
  
  public static abstract class LayoutManager
  {
    private final ad.b a = new aa(this);
    private final ad.b b = new ab(this);
    private boolean c = true;
    private boolean d = true;
    private int e;
    private int f;
    private int g;
    private int h;
    b p;
    RecyclerView q;
    ad r = new ad(this.a);
    ad s = new ad(this.b);
    @Nullable
    RecyclerView.SmoothScroller t;
    boolean u = false;
    boolean v = false;
    boolean w = false;
    int x;
    boolean y;
    
    public static int a(int paramInt1, int paramInt2, int paramInt3)
    {
      int j = View.MeasureSpec.getMode(paramInt1);
      int i = View.MeasureSpec.getSize(paramInt1);
      paramInt1 = i;
      switch (j)
      {
      default: 
        paramInt1 = Math.max(paramInt2, paramInt3);
      case 1073741824: 
        return paramInt1;
      }
      return Math.min(i, Math.max(paramInt2, paramInt3));
    }
    
    public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      int i = Math.max(0, paramInt1 - paramInt3);
      if (paramBoolean) {
        if (paramInt4 >= 0)
        {
          paramInt1 = 1073741824;
          paramInt3 = paramInt4;
        }
      }
      for (;;)
      {
        return View.MeasureSpec.makeMeasureSpec(paramInt3, paramInt1);
        if (paramInt4 == -1)
        {
          paramInt3 = i;
          paramInt1 = paramInt2;
          switch (paramInt2)
          {
          }
          paramInt1 = 0;
          paramInt3 = 0;
        }
        else if (paramInt4 == -2)
        {
          paramInt3 = 0;
          do
          {
            paramInt1 = 0;
            break;
            if (paramInt4 >= 0)
            {
              paramInt1 = 1073741824;
              paramInt3 = paramInt4;
              break;
            }
            paramInt3 = i;
            paramInt1 = paramInt2;
            if (paramInt4 == -1) {
              break;
            }
            if (paramInt4 != -2) {
              break label148;
            }
            if (paramInt2 == Integer.MIN_VALUE) {
              break label139;
            }
            paramInt3 = i;
          } while (paramInt2 != 1073741824);
          label139:
          paramInt1 = Integer.MIN_VALUE;
          paramInt3 = i;
        }
        else
        {
          label148:
          paramInt1 = 0;
          paramInt3 = 0;
        }
      }
    }
    
    public static Properties a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
    {
      Properties localProperties = new Properties();
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ResourceUtil.d(paramContext, "RecyclerView"), paramInt1, paramInt2);
      localProperties.a = paramAttributeSet.getInt(ResourceUtil.e(paramContext, "RecyclerView_android_orientation"), 1);
      localProperties.b = paramAttributeSet.getInt(ResourceUtil.e(paramContext, "RecyclerView_spanCount"), 1);
      localProperties.c = paramAttributeSet.getBoolean(ResourceUtil.e(paramContext, "RecyclerView_reverseLayout"), false);
      localProperties.d = paramAttributeSet.getBoolean(ResourceUtil.e(paramContext, "RecyclerView_stackFromEnd"), false);
      paramAttributeSet.recycle();
      return localProperties;
    }
    
    private void a(int paramInt)
    {
      if (f(paramInt) != null) {
        this.p.a(paramInt);
      }
    }
    
    public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = localLayoutParams.d;
      paramView.layout(localRect.left + paramInt1 + localLayoutParams.leftMargin, localRect.top + paramInt2 + localLayoutParams.topMargin, paramInt3 - localRect.right - localLayoutParams.rightMargin, paramInt4 - localRect.bottom - localLayoutParams.bottomMargin);
    }
    
    private void a(View paramView, int paramInt, boolean paramBoolean)
    {
      RecyclerView.ViewHolder localViewHolder1 = RecyclerView.d(paramView);
      RecyclerView.LayoutParams localLayoutParams1;
      if ((paramBoolean) || (localViewHolder1.n()))
      {
        this.q.g.d(localViewHolder1);
        localLayoutParams1 = (RecyclerView.LayoutParams)paramView.getLayoutParams();
        if ((!localViewHolder1.h()) && (!localViewHolder1.f())) {
          break label128;
        }
        if (!localViewHolder1.f()) {
          break label120;
        }
        localViewHolder1.g();
        label68:
        this.p.a(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      for (;;)
      {
        if (localLayoutParams1.f)
        {
          localViewHolder1.a.invalidate();
          localLayoutParams1.f = false;
        }
        return;
        this.q.g.e(localViewHolder1);
        break;
        label120:
        localViewHolder1.i();
        break label68;
        label128:
        if (paramView.getParent() == this.q)
        {
          int j = this.p.c(paramView);
          int i = paramInt;
          if (paramInt == -1) {
            i = this.p.a();
          }
          if (j == -1) {
            throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.q.indexOfChild(paramView));
          }
          if (j != i)
          {
            paramView = this.q.m;
            View localView = paramView.f(j);
            if (localView == null) {
              throw new IllegalArgumentException("Cannot move a child from non-existing index:" + j);
            }
            paramView.c(j);
            RecyclerView.LayoutParams localLayoutParams2 = (RecyclerView.LayoutParams)localView.getLayoutParams();
            RecyclerView.ViewHolder localViewHolder2 = RecyclerView.d(localView);
            if (localViewHolder2.n()) {
              paramView.q.g.d(localViewHolder2);
            }
            for (;;)
            {
              paramView.p.a(localView, i, localLayoutParams2, localViewHolder2.n());
              break;
              paramView.q.g.e(localViewHolder2);
            }
          }
        }
        else
        {
          this.p.a(paramView, paramInt, false);
          localLayoutParams1.e = true;
          if ((this.t != null) && (this.t.e())) {
            this.t.a(paramView);
          }
        }
      }
    }
    
    private static boolean b(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {}
      do
      {
        do
        {
          return false;
          switch (i)
          {
          default: 
            return false;
          }
        } while (paramInt2 < paramInt1);
        return true;
        return true;
      } while (paramInt2 != paramInt1);
      return true;
    }
    
    private void c(int paramInt)
    {
      f(paramInt);
      this.p.d(paramInt);
    }
    
    public static int e(View paramView)
    {
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).c.d();
    }
    
    public static int f(View paramView)
    {
      Rect localRect = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d;
      int i = paramView.getMeasuredWidth();
      int j = localRect.left;
      return localRect.right + (i + j);
    }
    
    public static int g(View paramView)
    {
      Rect localRect = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d;
      int i = paramView.getMeasuredHeight();
      int j = localRect.top;
      return localRect.bottom + (i + j);
    }
    
    public static int h(View paramView)
    {
      return paramView.getLeft() - ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d.left;
    }
    
    public static int i(View paramView)
    {
      return paramView.getTop() - ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d.top;
    }
    
    public static int j(View paramView)
    {
      int i = paramView.getRight();
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d.right + i;
    }
    
    public static int k(View paramView)
    {
      int i = paramView.getBottom();
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d.bottom + i;
    }
    
    public int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      if ((this.q == null) || (this.q.l == null)) {}
      while (!j()) {
        return 1;
      }
      return this.q.l.a();
    }
    
    @Nullable
    public View a(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return null;
    }
    
    public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
    }
    
    public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
        return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.LayoutParams(paramLayoutParams);
    }
    
    public void a() {}
    
    final void a(int paramInt1, int paramInt2)
    {
      this.g = View.MeasureSpec.getSize(paramInt1);
      this.e = View.MeasureSpec.getMode(paramInt1);
      if ((this.e == 0) && (!RecyclerView.b)) {
        this.g = 0;
      }
      this.h = View.MeasureSpec.getSize(paramInt2);
      this.f = View.MeasureSpec.getMode(paramInt2);
      if ((this.f == 0) && (!RecyclerView.b)) {
        this.h = 0;
      }
    }
    
    public void a(int paramInt1, int paramInt2, RecyclerView.State paramState, a parama) {}
    
    public void a(int paramInt, a parama) {}
    
    public final void a(int paramInt, RecyclerView.Recycler paramRecycler)
    {
      View localView = f(paramInt);
      a(paramInt);
      paramRecycler.a(localView);
    }
    
    public void a(Rect paramRect, int paramInt1, int paramInt2)
    {
      int i = paramRect.width();
      int j = u();
      int k = w();
      int m = paramRect.height();
      int n = v();
      int i1 = x();
      d(a(paramInt1, i + j + k, ViewCompat.getMinimumWidth(this.q)), a(paramInt2, m + n + i1, ViewCompat.getMinimumHeight(this.q)));
    }
    
    public void a(Parcelable paramParcelable) {}
    
    public final void a(View paramView)
    {
      a(paramView, -1, true);
    }
    
    public final void a(View paramView, Rect paramRect)
    {
      Object localObject = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).d;
      int i = -((Rect)localObject).left;
      int j = -((Rect)localObject).top;
      int k = paramView.getWidth();
      int m = ((Rect)localObject).right;
      int n = paramView.getHeight();
      paramRect.set(i, j, k + m, ((Rect)localObject).bottom + n);
      if (this.q != null)
      {
        localObject = paramView.getMatrix();
        if ((localObject != null) && (!((Matrix)localObject).isIdentity()))
        {
          RectF localRectF = this.q.k;
          localRectF.set(paramRect);
          ((Matrix)localObject).mapRect(localRectF);
          paramRect.set((int)Math.floor(localRectF.left), (int)Math.floor(localRectF.top), (int)Math.ceil(localRectF.right), (int)Math.ceil(localRectF.bottom));
        }
      }
      paramRect.offset(paramView.getLeft(), paramView.getTop());
    }
    
    final void a(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.d(paramView);
      if ((localViewHolder != null) && (!localViewHolder.n()) && (!this.p.d(localViewHolder.a))) {
        a(this.q.d, this.q.B, paramView, paramAccessibilityNodeInfoCompat);
      }
    }
    
    public void a(AccessibilityEvent paramAccessibilityEvent)
    {
      boolean bool2 = true;
      Object localObject = this.q.d;
      localObject = this.q.B;
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      if ((this.q == null) || (paramAccessibilityEvent == null)) {
        return;
      }
      boolean bool1 = bool2;
      if (!this.q.canScrollVertically(1))
      {
        bool1 = bool2;
        if (!this.q.canScrollVertically(-1))
        {
          bool1 = bool2;
          if (!this.q.canScrollHorizontally(-1)) {
            if (!this.q.canScrollHorizontally(1)) {
              break label119;
            }
          }
        }
      }
      label119:
      for (bool1 = bool2;; bool1 = false)
      {
        paramAccessibilityEvent.setScrollable(bool1);
        if (this.q.l == null) {
          break;
        }
        paramAccessibilityEvent.setItemCount(this.q.l.a());
        return;
      }
    }
    
    public final void a(RecyclerView.Recycler paramRecycler)
    {
      int i = p() - 1;
      if (i >= 0)
      {
        View localView = f(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.d(localView);
        if (!localViewHolder.b())
        {
          if ((!localViewHolder.k()) || (localViewHolder.n()) || (this.q.l.b())) {
            break label78;
          }
          a(i);
          paramRecycler.a(localViewHolder);
        }
        for (;;)
        {
          i -= 1;
          break;
          label78:
          c(i);
          paramRecycler.c(localView);
          this.q.g.e(localViewHolder);
        }
      }
    }
    
    public void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      int i;
      if (j())
      {
        i = e(paramView);
        if (!i()) {
          break label49;
        }
      }
      label49:
      for (int j = e(paramView);; j = 0)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, 1, false, false));
        return;
        i = 0;
        break;
      }
    }
    
    public void a(RecyclerView.State paramState) {}
    
    final void a(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        this.q = null;
        this.p = null;
        this.g = 0;
      }
      for (this.h = 0;; this.h = paramRecyclerView.getHeight())
      {
        this.e = 1073741824;
        this.f = 1073741824;
        return;
        this.q = paramRecyclerView;
        this.p = paramRecyclerView.f;
        this.g = paramRecyclerView.getWidth();
      }
    }
    
    @CallSuper
    public void a(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler) {}
    
    public void a(String paramString)
    {
      if (this.q != null) {
        this.q.a(paramString);
      }
    }
    
    final boolean a(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
    {
      return (!this.c) || (!b(paramView.getMeasuredWidth(), paramInt1, paramLayoutParams.width)) || (!b(paramView.getMeasuredHeight(), paramInt2, paramLayoutParams.height));
    }
    
    public boolean a(RecyclerView.LayoutParams paramLayoutParams)
    {
      return paramLayoutParams != null;
    }
    
    public final boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
    {
      int[] arrayOfInt = new int[2];
      int i2 = u();
      int m = v();
      int i3 = this.g - w();
      int i1 = this.h;
      int i6 = x();
      int i4 = paramView.getLeft() + paramRect.left - paramView.getScrollX();
      int n = paramView.getTop() + paramRect.top - paramView.getScrollY();
      int i5 = i4 + paramRect.width();
      int i7 = paramRect.height();
      int i = Math.min(0, i4 - i2);
      int j = Math.min(0, n - m);
      int k = Math.max(0, i5 - i3);
      i1 = Math.max(0, n + i7 - (i1 - i6));
      if (ViewCompat.getLayoutDirection(this.q) == 1) {
        if (k != 0)
        {
          i = k;
          if (j == 0) {
            break label271;
          }
          label162:
          arrayOfInt[0] = i;
          arrayOfInt[1] = j;
          k = arrayOfInt[0];
          j = arrayOfInt[1];
          if (paramBoolean2)
          {
            paramView = paramRecyclerView.getFocusedChild();
            if (paramView != null) {
              break label286;
            }
            i = 0;
            label203:
            if (i == 0) {
              break label481;
            }
          }
          if ((k == 0) && (j == 0)) {
            break label481;
          }
          if (!paramBoolean1) {
            break label401;
          }
          paramRecyclerView.scrollBy(k, j);
        }
      }
      for (;;)
      {
        return true;
        i = Math.max(i, i5 - i3);
        break;
        if (i != 0) {
          break;
        }
        for (;;)
        {
          i = Math.min(i4 - i2, k);
        }
        label271:
        j = Math.min(n - m, i1);
        break label162;
        label286:
        i = u();
        m = v();
        n = this.g;
        i1 = w();
        i2 = this.h;
        i3 = x();
        paramRect = this.q.j;
        RecyclerView.a(paramView, paramRect);
        if ((paramRect.left - k >= n - i1) || (paramRect.right - k <= i) || (paramRect.top - j >= i2 - i3) || (paramRect.bottom - j <= m))
        {
          i = 0;
          break label203;
        }
        i = 1;
        break label203;
        label401:
        if (paramRecyclerView.m == null)
        {
          Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        }
        else if (!paramRecyclerView.u)
        {
          i = k;
          if (!paramRecyclerView.m.i()) {
            i = 0;
          }
          if (!paramRecyclerView.m.j()) {
            j = 0;
          }
          if ((i != 0) || (j != 0)) {
            paramRecyclerView.y.c(i, j);
          }
        }
      }
      label481:
      return false;
    }
    
    public int b(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      if ((this.q == null) || (this.q.l == null)) {}
      while (!i()) {
        return 1;
      }
      return this.q.l.a();
    }
    
    public int b(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public View b(int paramInt)
    {
      int j = p();
      int i = 0;
      while (i < j)
      {
        View localView = f(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.d(localView);
        if ((localViewHolder != null) && (localViewHolder.d() == paramInt) && (!localViewHolder.b()) && ((this.q.B.f) || (!localViewHolder.n()))) {
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    public void b() {}
    
    final void b(int paramInt1, int paramInt2)
    {
      int i5 = p();
      if (i5 == 0)
      {
        this.q.c(paramInt1, paramInt2);
        return;
      }
      int i = 0;
      int j = Integer.MIN_VALUE;
      int n = Integer.MIN_VALUE;
      int k = Integer.MAX_VALUE;
      int i3 = Integer.MAX_VALUE;
      while (i < i5)
      {
        View localView = f(i);
        Rect localRect = this.q.j;
        RecyclerView.a(localView, localRect);
        int m = i3;
        if (localRect.left < i3) {
          m = localRect.left;
        }
        int i1 = n;
        if (localRect.right > n) {
          i1 = localRect.right;
        }
        int i2 = k;
        if (localRect.top < k) {
          i2 = localRect.top;
        }
        int i4 = j;
        if (localRect.bottom > j) {
          i4 = localRect.bottom;
        }
        i += 1;
        i3 = m;
        n = i1;
        k = i2;
        j = i4;
      }
      this.q.j.set(i3, k, n, j);
      a(this.q.j, paramInt1, paramInt2);
    }
    
    public final void b(View paramView)
    {
      a(paramView, 0, true);
    }
    
    public final void b(View paramView, Rect paramRect)
    {
      if (this.q == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(this.q.f(paramView));
    }
    
    final void b(RecyclerView.Recycler paramRecycler)
    {
      int j = paramRecycler.a.size();
      int i = j - 1;
      while (i >= 0)
      {
        View localView = ((RecyclerView.ViewHolder)paramRecycler.a.get(i)).a;
        RecyclerView.ViewHolder localViewHolder = RecyclerView.d(localView);
        if (!localViewHolder.b())
        {
          localViewHolder.a(false);
          if (localViewHolder.o()) {
            this.q.removeDetachedView(localView, false);
          }
          if (this.q.x != null) {
            this.q.x.c(localViewHolder);
          }
          localViewHolder.a(true);
          paramRecycler.b(localView);
        }
        i -= 1;
      }
      paramRecycler.a.clear();
      if (paramRecycler.b != null) {
        paramRecycler.b.clear();
      }
      if (j > 0) {
        this.q.invalidate();
      }
    }
    
    final void b(RecyclerView paramRecyclerView)
    {
      a(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
    }
    
    final void b(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
    {
      this.v = false;
      a(paramRecyclerView, paramRecycler);
    }
    
    final boolean b(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
    {
      return (paramView.isLayoutRequested()) || (!this.c) || (!b(paramView.getWidth(), paramInt1, paramLayoutParams.width)) || (!b(paramView.getHeight(), paramInt2, paramLayoutParams.height));
    }
    
    public int c(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void c() {}
    
    public final void c(int paramInt1, int paramInt2)
    {
      this.q.c(paramInt1, paramInt2);
    }
    
    public final void c(View paramView)
    {
      a(paramView, -1, false);
    }
    
    public final void c(RecyclerView.Recycler paramRecycler)
    {
      int i = p() - 1;
      while (i >= 0)
      {
        if (!RecyclerView.d(f(i)).b()) {
          a(i, paramRecycler);
        }
        i -= 1;
      }
    }
    
    public void c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    public int d(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void d() {}
    
    public void d(int paramInt) {}
    
    public final void d(int paramInt1, int paramInt2)
    {
      RecyclerView.a(this.q, paramInt1, paramInt2);
    }
    
    public final void d(View paramView)
    {
      a(paramView, 0, false);
    }
    
    public int e(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void e() {}
    
    public int f(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public final View f(int paramInt)
    {
      if (this.p != null) {
        return this.p.b(paramInt);
      }
      return null;
    }
    
    public abstract RecyclerView.LayoutParams f();
    
    public int g(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public boolean g()
    {
      return false;
    }
    
    final boolean g(int paramInt)
    {
      Object localObject = this.q.d;
      localObject = this.q.B;
      if (this.q == null) {}
      int i;
      do
      {
        return false;
        switch (paramInt)
        {
        default: 
          i = 0;
          paramInt = 0;
        }
      } while ((paramInt == 0) && (i == 0));
      this.q.scrollBy(i, paramInt);
      return true;
      if (this.q.canScrollVertically(-1)) {}
      for (paramInt = -(this.h - v() - x());; paramInt = 0)
      {
        i = paramInt;
        if (this.q.canScrollHorizontally(-1))
        {
          i = -(this.g - u() - w());
          break;
          if (!this.q.canScrollVertically(1)) {
            break label204;
          }
        }
        label204:
        for (paramInt = this.h - v() - x();; paramInt = 0)
        {
          i = paramInt;
          if (this.q.canScrollHorizontally(1))
          {
            i = this.g - u() - w();
            break;
          }
          int j = 0;
          paramInt = i;
          i = j;
          break;
        }
      }
    }
    
    public Parcelable h()
    {
      return null;
    }
    
    public boolean i()
    {
      return false;
    }
    
    public boolean j()
    {
      return false;
    }
    
    boolean m()
    {
      return false;
    }
    
    public final void n()
    {
      if (this.q != null) {
        this.q.requestLayout();
      }
    }
    
    public final boolean o()
    {
      return this.d;
    }
    
    public final int p()
    {
      if (this.p != null) {
        return this.p.a();
      }
      return 0;
    }
    
    public final int q()
    {
      return this.e;
    }
    
    public final int r()
    {
      return this.f;
    }
    
    public final int s()
    {
      return this.g;
    }
    
    public final int t()
    {
      return this.h;
    }
    
    public final int u()
    {
      if (this.q != null) {
        return this.q.getPaddingLeft();
      }
      return 0;
    }
    
    public final int v()
    {
      if (this.q != null) {
        return this.q.getPaddingTop();
      }
      return 0;
    }
    
    public final int w()
    {
      if (this.q != null) {
        return this.q.getPaddingRight();
      }
      return 0;
    }
    
    public final int x()
    {
      if (this.q != null) {
        return this.q.getPaddingBottom();
      }
      return 0;
    }
    
    final void y()
    {
      if (this.t != null) {
        this.t.c();
      }
    }
    
    public final void z()
    {
      this.u = true;
    }
    
    public static class Properties
    {
      public int a;
      public int b;
      public boolean c;
      public boolean d;
    }
    
    public static abstract interface a
    {
      public abstract void a(int paramInt1, int paramInt2);
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    RecyclerView.ViewHolder c;
    final Rect d = new Rect();
    boolean e = true;
    boolean f = false;
    
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
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract class OnFlingListener
  {
    public abstract boolean a();
  }
  
  public static abstract class OnScrollListener
  {
    public void a(RecyclerView paramRecyclerView) {}
  }
  
  public static class RecycledViewPool
  {
    SparseArray<a> a = new SparseArray();
    private int b = 0;
    
    private a a(int paramInt)
    {
      a locala2 = (a)this.a.get(paramInt);
      a locala1 = locala2;
      if (locala2 == null)
      {
        locala1 = new a();
        this.a.put(paramInt, locala1);
      }
      return locala1;
    }
    
    private static long b(long paramLong1, long paramLong2)
    {
      if (paramLong1 == 0L) {
        return paramLong2;
      }
      return paramLong1 / 4L * 3L + paramLong2 / 4L;
    }
    
    final void a(int paramInt, long paramLong)
    {
      a locala = a(paramInt);
      locala.d = b(locala.d, paramLong);
    }
    
    final void a(long paramLong)
    {
      a locala = a(0);
      locala.c = b(locala.c, paramLong);
    }
    
    final void a(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2)
    {
      if (paramAdapter1 != null) {
        this.b -= 1;
      }
      if (this.b == 0)
      {
        int i = 0;
        while (i < this.a.size())
        {
          ((a)this.a.valueAt(i)).a.clear();
          i += 1;
        }
      }
      if (paramAdapter2 != null) {
        this.b += 1;
      }
    }
    
    public final void a(RecyclerView.ViewHolder paramViewHolder)
    {
      int i = paramViewHolder.f;
      ArrayList localArrayList = a(i).a;
      if (((a)this.a.get(i)).b <= localArrayList.size()) {
        return;
      }
      paramViewHolder.r();
      localArrayList.add(paramViewHolder);
    }
    
    final boolean a(int paramInt, long paramLong1, long paramLong2)
    {
      long l = a(paramInt).d;
      return (l == 0L) || (l + paramLong1 < paramLong2);
    }
    
    final boolean a(long paramLong1, long paramLong2)
    {
      boolean bool = false;
      long l = a(0).c;
      if ((l == 0L) || (l + paramLong1 < paramLong2)) {
        bool = true;
      }
      return bool;
    }
    
    static final class a
    {
      ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
      int b = 5;
      long c = 0L;
      long d = 0L;
    }
  }
  
  public final class Recycler
  {
    final ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
    ArrayList<RecyclerView.ViewHolder> b = null;
    final ArrayList<RecyclerView.ViewHolder> c = new ArrayList();
    int d = 2;
    RecyclerView.RecycledViewPool e;
    private final List<RecyclerView.ViewHolder> g = Collections.unmodifiableList(this.a);
    private int h = 2;
    private RecyclerView.ViewCacheExtension i;
    
    public Recycler() {}
    
    private RecyclerView.ViewHolder a(long paramLong)
    {
      int j = this.a.size() - 1;
      RecyclerView.ViewHolder localViewHolder;
      while (j >= 0)
      {
        localViewHolder = (RecyclerView.ViewHolder)this.a.get(j);
        if ((localViewHolder.e == paramLong) && (!localViewHolder.h()))
        {
          if (localViewHolder.f == 0)
          {
            localViewHolder.b(32);
            if ((localViewHolder.n()) && (!RecyclerView.this.B.f)) {
              localViewHolder.a(2, 14);
            }
            return localViewHolder;
          }
          this.a.remove(j);
          RecyclerView.this.removeDetachedView(localViewHolder.a, false);
          b(localViewHolder.a);
        }
        j -= 1;
      }
      j = this.c.size() - 1;
      while (j >= 0)
      {
        localViewHolder = (RecyclerView.ViewHolder)this.c.get(j);
        if (localViewHolder.e == paramLong)
        {
          if (localViewHolder.f == 0)
          {
            this.c.remove(j);
            return localViewHolder;
          }
          b(j);
          return null;
        }
        j -= 1;
      }
      return null;
    }
    
    private void a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      int j = paramViewGroup.getChildCount() - 1;
      while (j >= 0)
      {
        View localView = paramViewGroup.getChildAt(j);
        if ((localView instanceof ViewGroup)) {
          a((ViewGroup)localView, true);
        }
        j -= 1;
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
        return;
      }
      j = paramViewGroup.getVisibility();
      paramViewGroup.setVisibility(4);
      paramViewGroup.setVisibility(j);
    }
    
    private RecyclerView.ViewHolder c(int paramInt)
    {
      int k = 0;
      int m;
      if (this.b != null)
      {
        m = this.b.size();
        if (m != 0) {}
      }
      else
      {
        return null;
      }
      int j = 0;
      RecyclerView.ViewHolder localViewHolder;
      while (j < m)
      {
        localViewHolder = (RecyclerView.ViewHolder)this.b.get(j);
        if ((!localViewHolder.h()) && (localViewHolder.d() == paramInt))
        {
          localViewHolder.b(32);
          return localViewHolder;
        }
        j += 1;
      }
      if (RecyclerView.this.l.b())
      {
        paramInt = RecyclerView.this.e.a(paramInt, 0);
        if ((paramInt > 0) && (paramInt < RecyclerView.this.l.a()))
        {
          long l = RecyclerView.this.l.a(paramInt);
          paramInt = k;
          while (paramInt < m)
          {
            localViewHolder = (RecyclerView.ViewHolder)this.b.get(paramInt);
            if ((!localViewHolder.h()) && (localViewHolder.e == l))
            {
              localViewHolder.b(32);
              return localViewHolder;
            }
            paramInt += 1;
          }
        }
      }
      return null;
    }
    
    private RecyclerView.ViewHolder d(int paramInt)
    {
      int k = 0;
      int m = this.a.size();
      int j = 0;
      Object localObject1;
      while (j < m)
      {
        localObject1 = (RecyclerView.ViewHolder)this.a.get(j);
        if ((!((RecyclerView.ViewHolder)localObject1).h()) && (((RecyclerView.ViewHolder)localObject1).d() == paramInt) && (!((RecyclerView.ViewHolder)localObject1).k()) && ((RecyclerView.this.B.f) || (!((RecyclerView.ViewHolder)localObject1).n())))
        {
          ((RecyclerView.ViewHolder)localObject1).b(32);
          return (RecyclerView.ViewHolder)localObject1;
        }
        j += 1;
      }
      Object localObject2 = RecyclerView.this.f;
      m = ((b)localObject2).c.size();
      j = 0;
      if (j < m)
      {
        localObject1 = (View)((b)localObject2).c.get(j);
        RecyclerView.ViewHolder localViewHolder = ((b)localObject2).a.b((View)localObject1);
        if ((localViewHolder.d() != paramInt) || (localViewHolder.k()) || (localViewHolder.n())) {}
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          localObject2 = RecyclerView.d((View)localObject1);
          RecyclerView.this.f.f((View)localObject1);
          paramInt = RecyclerView.this.f.c((View)localObject1);
          if (paramInt == -1)
          {
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + localObject2);
            j += 1;
            break;
            localObject1 = null;
            continue;
          }
          RecyclerView.this.f.d(paramInt);
          c((View)localObject1);
          ((RecyclerView.ViewHolder)localObject2).b(8224);
          return (RecyclerView.ViewHolder)localObject2;
        }
      }
      m = this.c.size();
      j = k;
      while (j < m)
      {
        localObject1 = (RecyclerView.ViewHolder)this.c.get(j);
        if ((!((RecyclerView.ViewHolder)localObject1).k()) && (((RecyclerView.ViewHolder)localObject1).d() == paramInt))
        {
          this.c.remove(j);
          return (RecyclerView.ViewHolder)localObject1;
        }
        j += 1;
      }
      return null;
    }
    
    public final int a(int paramInt)
    {
      if ((paramInt < 0) || (paramInt >= RecyclerView.this.B.b())) {
        throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + RecyclerView.this.B.b());
      }
      if (!RecyclerView.this.B.f) {
        return paramInt;
      }
      return RecyclerView.this.e.b(paramInt);
    }
    
    @Nullable
    final RecyclerView.ViewHolder a(int paramInt, long paramLong)
    {
      if ((paramInt < 0) || (paramInt >= RecyclerView.this.B.b())) {
        throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + RecyclerView.this.B.b());
      }
      int j = 0;
      Object localObject2 = null;
      int k;
      Object localObject1;
      boolean bool;
      if (RecyclerView.this.B.f)
      {
        localObject2 = c(paramInt);
        if (localObject2 != null) {
          j = 1;
        }
      }
      else
      {
        k = j;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = d(paramInt);
          k = j;
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            if (!((RecyclerView.ViewHolder)localObject2).n()) {
              break label302;
            }
            bool = RecyclerView.this.B.f;
            label156:
            if (bool) {
              break label461;
            }
            ((RecyclerView.ViewHolder)localObject2).b(4);
            if (!((RecyclerView.ViewHolder)localObject2).f()) {
              break label445;
            }
            RecyclerView.this.removeDetachedView(((RecyclerView.ViewHolder)localObject2).a, false);
            ((RecyclerView.ViewHolder)localObject2).g();
            label193:
            a((RecyclerView.ViewHolder)localObject2);
            localObject1 = null;
            k = j;
          }
        }
      }
      label302:
      label445:
      label461:
      long l1;
      for (;;)
      {
        if (localObject1 == null)
        {
          j = RecyclerView.this.e.b(paramInt);
          if ((j < 0) || (j >= RecyclerView.this.l.a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + RecyclerView.this.B.b());
            j = 0;
            break;
            if ((((RecyclerView.ViewHolder)localObject2).c < 0) || (((RecyclerView.ViewHolder)localObject2).c >= RecyclerView.this.l.a())) {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
            }
            if (!RecyclerView.this.B.f)
            {
              localObject1 = RecyclerView.this.l;
              k = ((RecyclerView.ViewHolder)localObject2).c;
              if (((RecyclerView.ViewHolder)localObject2).f != 0)
              {
                bool = false;
                break label156;
              }
            }
            if ((RecyclerView.this.l.b()) && (((RecyclerView.ViewHolder)localObject2).e != RecyclerView.this.l.a(((RecyclerView.ViewHolder)localObject2).c)))
            {
              bool = false;
              break label156;
            }
            bool = true;
            break label156;
            if (!((RecyclerView.ViewHolder)localObject2).h()) {
              break label193;
            }
            ((RecyclerView.ViewHolder)localObject2).i();
            break label193;
            k = 1;
            localObject1 = localObject2;
            continue;
          }
          localObject2 = RecyclerView.this.l;
          if (RecyclerView.this.l.b())
          {
            localObject2 = a(RecyclerView.this.l.a(j));
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              ((RecyclerView.ViewHolder)localObject2).c = j;
              j = 1;
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (this.i != null)
                {
                  View localView = this.i.a();
                  localObject1 = localObject2;
                  if (localView != null)
                  {
                    localObject2 = RecyclerView.this.b(localView);
                    if (localObject2 == null) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    }
                    localObject1 = localObject2;
                    if (((RecyclerView.ViewHolder)localObject2).b()) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                    }
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject1 = (RecyclerView.RecycledViewPool.a)e().a.get(0);
                if ((localObject1 == null) || (((RecyclerView.RecycledViewPool.a)localObject1).a.isEmpty())) {
                  break label776;
                }
                localObject1 = ((RecyclerView.RecycledViewPool.a)localObject1).a;
              }
              label776:
              for (localObject1 = (RecyclerView.ViewHolder)((ArrayList)localObject1).remove(((ArrayList)localObject1).size() - 1);; localObject1 = null)
              {
                localObject2 = localObject1;
                if (localObject1 != null)
                {
                  ((RecyclerView.ViewHolder)localObject1).r();
                  localObject2 = localObject1;
                  if (RecyclerView.a)
                  {
                    localObject2 = localObject1;
                    if ((((RecyclerView.ViewHolder)localObject1).a instanceof ViewGroup))
                    {
                      a((ViewGroup)((RecyclerView.ViewHolder)localObject1).a, false);
                      localObject2 = localObject1;
                    }
                  }
                }
                localObject1 = localObject2;
                if (localObject2 != null) {
                  break label873;
                }
                l1 = RecyclerView.p();
                if ((paramLong == Long.MAX_VALUE) || (this.e.a(l1, paramLong))) {
                  break;
                }
                return null;
              }
              localObject1 = RecyclerView.this.l;
              localObject2 = RecyclerView.this;
              TraceCompat.beginSection("RV CreateView");
              localObject1 = ((RecyclerView.Adapter)localObject1).a((ViewGroup)localObject2);
              ((RecyclerView.ViewHolder)localObject1).f = 0;
              TraceCompat.endSection();
              if (RecyclerView.q())
              {
                localObject2 = RecyclerView.g(((RecyclerView.ViewHolder)localObject1).a);
                if (localObject2 != null) {
                  ((RecyclerView.ViewHolder)localObject1).b = new WeakReference(localObject2);
                }
              }
              long l2 = RecyclerView.p();
              this.e.a(l2 - l1);
            }
          }
        }
      }
      label873:
      for (localObject2 = localObject1;; localObject2 = localObject1)
      {
        if ((j != 0) && (!RecyclerView.this.B.f) && (((RecyclerView.ViewHolder)localObject2).a(8192)))
        {
          ((RecyclerView.ViewHolder)localObject2).a(0, 8192);
          if (RecyclerView.this.B.i)
          {
            RecyclerView.ItemAnimator.e((RecyclerView.ViewHolder)localObject2);
            localObject1 = RecyclerView.this.x;
            localObject1 = RecyclerView.this.B;
            ((RecyclerView.ViewHolder)localObject2).q();
            localObject1 = RecyclerView.ItemAnimator.d((RecyclerView.ViewHolder)localObject2);
            RecyclerView.this.a((RecyclerView.ViewHolder)localObject2, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject1);
          }
        }
        if ((RecyclerView.this.B.f) && (((RecyclerView.ViewHolder)localObject2).m()))
        {
          ((RecyclerView.ViewHolder)localObject2).g = paramInt;
          paramInt = 0;
        }
        for (;;)
        {
          localObject1 = ((RecyclerView.ViewHolder)localObject2).a.getLayoutParams();
          if (localObject1 == null)
          {
            localObject1 = (RecyclerView.LayoutParams)RecyclerView.this.generateDefaultLayoutParams();
            ((RecyclerView.ViewHolder)localObject2).a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
            label1042:
            ((RecyclerView.LayoutParams)localObject1).c = ((RecyclerView.ViewHolder)localObject2);
            if ((j == 0) || (paramInt == 0)) {
              break label1318;
            }
          }
          label1318:
          for (bool = true;; bool = false)
          {
            ((RecyclerView.LayoutParams)localObject1).f = bool;
            return (RecyclerView.ViewHolder)localObject2;
            if ((((RecyclerView.ViewHolder)localObject2).m()) && (!((RecyclerView.ViewHolder)localObject2).l()) && (!((RecyclerView.ViewHolder)localObject2).k())) {
              break label1324;
            }
            k = RecyclerView.this.e.b(paramInt);
            ((RecyclerView.ViewHolder)localObject2).m = RecyclerView.this;
            int m = ((RecyclerView.ViewHolder)localObject2).f;
            l1 = RecyclerView.p();
            if ((paramLong != Long.MAX_VALUE) && (!this.e.a(m, l1, paramLong))) {}
            for (paramInt = 0;; paramInt = 1)
            {
              break;
              RecyclerView.this.l.b((RecyclerView.ViewHolder)localObject2, k);
              paramLong = RecyclerView.p();
              this.e.a(((RecyclerView.ViewHolder)localObject2).f, paramLong - l1);
              localObject1 = ((RecyclerView.ViewHolder)localObject2).a;
              if (RecyclerView.this.h())
              {
                if (ViewCompat.getImportantForAccessibility((View)localObject1) == 0) {
                  ViewCompat.setImportantForAccessibility((View)localObject1, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate((View)localObject1)) {
                  ViewCompat.setAccessibilityDelegate((View)localObject1, RecyclerView.this.F.b);
                }
              }
              if (RecyclerView.this.B.f) {
                ((RecyclerView.ViewHolder)localObject2).g = paramInt;
              }
            }
            if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
            {
              localObject1 = (RecyclerView.LayoutParams)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
              ((RecyclerView.ViewHolder)localObject2).a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              break label1042;
            }
            localObject1 = (RecyclerView.LayoutParams)localObject1;
            break label1042;
          }
          label1324:
          paramInt = 0;
        }
        j = k;
        localObject2 = localObject1;
        break;
        j = k;
      }
    }
    
    public final void a()
    {
      this.a.clear();
      d();
    }
    
    public final void a(View paramView)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.d(paramView);
      if (localViewHolder.o()) {
        RecyclerView.this.removeDetachedView(paramView, false);
      }
      if (localViewHolder.f()) {
        localViewHolder.g();
      }
      for (;;)
      {
        a(localViewHolder);
        return;
        if (localViewHolder.h()) {
          localViewHolder.i();
        }
      }
    }
    
    final void a(RecyclerView.ViewHolder paramViewHolder)
    {
      int m = 1;
      Object localObject;
      if ((paramViewHolder.f()) || (paramViewHolder.a.getParent() != null))
      {
        localObject = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramViewHolder.f()).append(" isAttached:");
        if (paramViewHolder.a.getParent() != null) {}
        for (bool = true;; bool = false) {
          throw new IllegalArgumentException(bool);
        }
      }
      if (paramViewHolder.o()) {
        throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramViewHolder);
      }
      if (paramViewHolder.b()) {
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
      }
      boolean bool = RecyclerView.ViewHolder.a(paramViewHolder);
      if ((RecyclerView.this.l != null) && (bool)) {
        localObject = RecyclerView.this.l;
      }
      int k;
      int j;
      if (paramViewHolder.s()) {
        if ((this.d > 0) && (!paramViewHolder.a(526)))
        {
          k = this.c.size();
          j = k;
          if (k >= this.d)
          {
            j = k;
            if (k > 0)
            {
              b(0);
              j = k - 1;
            }
          }
          k = j;
          if (RecyclerView.q())
          {
            k = j;
            if (j > 0)
            {
              k = j;
              if (!RecyclerView.this.A.a(paramViewHolder.c))
              {
                j -= 1;
                while (j >= 0)
                {
                  k = ((RecyclerView.ViewHolder)this.c.get(j)).c;
                  if (!RecyclerView.this.A.a(k)) {
                    break;
                  }
                  j -= 1;
                }
                k = j + 1;
              }
            }
          }
          this.c.add(k, paramViewHolder);
          j = 1;
          if (j == 0)
          {
            a(paramViewHolder, true);
            k = m;
          }
        }
      }
      for (;;)
      {
        RecyclerView.this.g.f(paramViewHolder);
        if ((j == 0) && (k == 0) && (bool)) {
          paramViewHolder.m = null;
        }
        return;
        k = 0;
        continue;
        j = 0;
        break;
        k = 0;
        j = 0;
      }
    }
    
    final void a(RecyclerView.ViewHolder paramViewHolder, boolean paramBoolean)
    {
      RecyclerView.a(paramViewHolder);
      ViewCompat.setAccessibilityDelegate(paramViewHolder.a, null);
      if (paramBoolean)
      {
        Object localObject;
        if (RecyclerView.this.n != null) {
          localObject = RecyclerView.this.n;
        }
        if (RecyclerView.this.l != null) {
          localObject = RecyclerView.this.l;
        }
        if (RecyclerView.this.B != null) {
          RecyclerView.this.g.f(paramViewHolder);
        }
      }
      paramViewHolder.m = null;
      e().a(paramViewHolder);
    }
    
    final void b()
    {
      if (RecyclerView.this.m != null) {}
      for (int j = RecyclerView.this.m.x;; j = 0)
      {
        this.d = (j + this.h);
        j = this.c.size() - 1;
        while ((j >= 0) && (this.c.size() > this.d))
        {
          b(j);
          j -= 1;
        }
      }
    }
    
    final void b(int paramInt)
    {
      a((RecyclerView.ViewHolder)this.c.get(paramInt), true);
      this.c.remove(paramInt);
    }
    
    final void b(View paramView)
    {
      paramView = RecyclerView.d(paramView);
      RecyclerView.ViewHolder.b(paramView);
      RecyclerView.ViewHolder.c(paramView);
      paramView.i();
      a(paramView);
    }
    
    final void b(RecyclerView.ViewHolder paramViewHolder)
    {
      if (RecyclerView.ViewHolder.d(paramViewHolder)) {
        this.b.remove(paramViewHolder);
      }
      for (;;)
      {
        RecyclerView.ViewHolder.b(paramViewHolder);
        RecyclerView.ViewHolder.c(paramViewHolder);
        paramViewHolder.i();
        return;
        this.a.remove(paramViewHolder);
      }
    }
    
    public final List<RecyclerView.ViewHolder> c()
    {
      return this.g;
    }
    
    final void c(View paramView)
    {
      paramView = RecyclerView.d(paramView);
      int j;
      if ((!paramView.a(12)) && (paramView.t()))
      {
        RecyclerView localRecyclerView = RecyclerView.this;
        if ((localRecyclerView.x != null) && (!localRecyclerView.x.a(paramView, paramView.q()))) {
          break label92;
        }
        j = 1;
      }
      while (j != 0) {
        if ((paramView.k()) && (!paramView.n()) && (!RecyclerView.this.l.b()))
        {
          throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
          label92:
          j = 0;
        }
        else
        {
          paramView.a(this, false);
          this.a.add(paramView);
          return;
        }
      }
      if (this.b == null) {
        this.b = new ArrayList();
      }
      paramView.a(this, true);
      this.b.add(paramView);
    }
    
    final void d()
    {
      int j = this.c.size() - 1;
      while (j >= 0)
      {
        b(j);
        j -= 1;
      }
      this.c.clear();
      if (RecyclerView.q()) {
        RecyclerView.this.A.a();
      }
    }
    
    final RecyclerView.RecycledViewPool e()
    {
      if (this.e == null) {
        this.e = new RecyclerView.RecycledViewPool();
      }
      return this.e;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ac());
    Parcelable a;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      if (paramClassLoader != null) {}
      for (;;)
      {
        this.a = paramParcel.readParcelable(paramClassLoader);
        return;
        paramClassLoader = RecyclerView.LayoutManager.class.getClassLoader();
      }
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(this.a, 0);
    }
  }
  
  public static class SimpleOnItemTouchListener
    implements RecyclerView.e
  {
    public final void a(boolean paramBoolean) {}
    
    public final boolean a(MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public final void b(MotionEvent paramMotionEvent) {}
  }
  
  public static abstract class SmoothScroller
  {
    private int a = -1;
    private RecyclerView b;
    private RecyclerView.LayoutManager c;
    private boolean d;
    private boolean e;
    private View f;
    private final Action g = new Action(0, 0);
    
    protected abstract void a();
    
    public final void a(int paramInt)
    {
      this.a = paramInt;
    }
    
    protected abstract void a(int paramInt1, int paramInt2, Action paramAction);
    
    protected final void a(View paramView)
    {
      if (RecyclerView.e(paramView) == this.a) {
        this.f = paramView;
      }
    }
    
    protected abstract void a(View paramView, Action paramAction);
    
    @Nullable
    public final RecyclerView.LayoutManager b()
    {
      return this.c;
    }
    
    protected final void c()
    {
      if (!this.e) {
        return;
      }
      a();
      RecyclerView.State.a(this.b.B);
      this.f = null;
      this.a = -1;
      this.d = false;
      this.e = false;
      RecyclerView.LayoutManager.a(this.c, this);
      this.c = null;
      this.b = null;
    }
    
    public final boolean d()
    {
      return this.d;
    }
    
    public final boolean e()
    {
      return this.e;
    }
    
    public final int f()
    {
      return this.a;
    }
    
    public final int g()
    {
      return this.b.m.p();
    }
    
    public static class Action
    {
      private int a;
      private int b;
      private int c;
      private int d = -1;
      private Interpolator e;
      private boolean f = false;
      private int g = 0;
      
      public Action(int paramInt1, int paramInt2)
      {
        this(paramInt1, paramInt2, Integer.MIN_VALUE, null);
      }
      
      public Action(int paramInt1, int paramInt2, int paramInt3)
      {
        this(paramInt1, paramInt2, paramInt3, null);
      }
      
      public Action(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        this.a = paramInt1;
        this.b = paramInt2;
        this.c = paramInt3;
        this.e = paramInterpolator;
      }
      
      public final void a(int paramInt)
      {
        this.d = paramInt;
      }
      
      public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        this.a = paramInt1;
        this.b = paramInt2;
        this.c = paramInt3;
        this.e = paramInterpolator;
        this.f = true;
      }
      
      final void a(RecyclerView paramRecyclerView)
      {
        if (this.d >= 0)
        {
          int i = this.d;
          this.d = -1;
          paramRecyclerView.c(i);
          this.f = false;
          return;
        }
        if (this.f)
        {
          if ((this.e != null) && (this.c <= 0)) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
          }
          if (this.c <= 0) {
            throw new IllegalStateException("Scroll duration must be a positive number");
          }
          if (this.e == null) {
            if (this.c == Integer.MIN_VALUE) {
              paramRecyclerView.y.b(this.a, this.b);
            }
          }
          for (;;)
          {
            this.g += 1;
            if (this.g > 10) {
              Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            this.f = false;
            return;
            paramRecyclerView.y.a(this.a, this.b, this.c);
            continue;
            paramRecyclerView.y.a(this.a, this.b, this.c, this.e);
          }
        }
        this.g = 0;
      }
      
      final boolean a()
      {
        return this.d >= 0;
      }
    }
    
    public static abstract interface a
    {
      public abstract PointF c(int paramInt);
    }
  }
  
  public static class State
  {
    int a = 0;
    int b = 0;
    int c = 1;
    int d = 0;
    boolean e = false;
    boolean f = false;
    boolean g = false;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    int k;
    long l;
    int m;
    private int n = -1;
    private SparseArray<Object> o;
    
    final void a(int paramInt)
    {
      if ((this.c & paramInt) == 0) {
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(paramInt) + " but it is " + Integer.toBinaryString(this.c));
      }
    }
    
    public final boolean a()
    {
      return this.n != -1;
    }
    
    public final int b()
    {
      if (this.f) {
        return this.a - this.b;
      }
      return this.d;
    }
    
    public String toString()
    {
      return "State{mTargetPosition=" + this.n + ", mData=" + this.o + ", mItemCount=" + this.d + ", mPreviousLayoutItemCount=" + this.a + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.b + ", mStructureChanged=" + this.e + ", mInPreLayout=" + this.f + ", mRunSimpleAnimations=" + this.i + ", mRunPredictiveAnimations=" + this.j + '}';
    }
  }
  
  public static abstract class ViewCacheExtension
  {
    public abstract View a();
  }
  
  public static abstract class ViewHolder
  {
    private static final List<Object> o = Collections.EMPTY_LIST;
    public final View a;
    WeakReference<RecyclerView> b;
    int c = -1;
    int d = -1;
    long e = -1L;
    int f = -1;
    int g = -1;
    ViewHolder h = null;
    ViewHolder i = null;
    List<Object> j = null;
    List<Object> k = null;
    @VisibleForTesting
    int l = -1;
    RecyclerView m;
    private int n;
    private int p = 0;
    private RecyclerView.Recycler q = null;
    private boolean r = false;
    private int s = 0;
    
    public ViewHolder(View paramView)
    {
      if (paramView == null) {
        throw new IllegalArgumentException("itemView may not be null");
      }
      this.a = paramView;
    }
    
    final void a()
    {
      this.d = -1;
      this.g = -1;
    }
    
    final void a(int paramInt1, int paramInt2)
    {
      this.n = (this.n & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
    }
    
    final void a(int paramInt, boolean paramBoolean)
    {
      if (this.d == -1) {
        this.d = this.c;
      }
      if (this.g == -1) {
        this.g = this.c;
      }
      if (paramBoolean) {
        this.g += paramInt;
      }
      this.c += paramInt;
      if (this.a.getLayoutParams() != null) {
        ((RecyclerView.LayoutParams)this.a.getLayoutParams()).e = true;
      }
    }
    
    final void a(RecyclerView.Recycler paramRecycler, boolean paramBoolean)
    {
      this.q = paramRecycler;
      this.r = paramBoolean;
    }
    
    final void a(Object paramObject)
    {
      if (paramObject == null) {
        b(1024);
      }
      while ((this.n & 0x400) != 0) {
        return;
      }
      if (this.j == null)
      {
        this.j = new ArrayList();
        this.k = Collections.unmodifiableList(this.j);
      }
      this.j.add(paramObject);
    }
    
    public final void a(boolean paramBoolean)
    {
      int i1;
      if (paramBoolean)
      {
        i1 = this.p - 1;
        this.p = i1;
        if (this.p >= 0) {
          break label61;
        }
        this.p = 0;
        Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      }
      label61:
      do
      {
        return;
        i1 = this.p + 1;
        break;
        if ((!paramBoolean) && (this.p == 1))
        {
          this.n |= 0x10;
          return;
        }
      } while ((!paramBoolean) || (this.p != 0));
      this.n &= 0xFFFFFFEF;
    }
    
    final boolean a(int paramInt)
    {
      return (this.n & paramInt) != 0;
    }
    
    final void b(int paramInt)
    {
      this.n |= paramInt;
    }
    
    final boolean b()
    {
      return (this.n & 0x80) != 0;
    }
    
    @Deprecated
    public final int c()
    {
      if (this.g == -1) {
        return this.c;
      }
      return this.g;
    }
    
    public final int d()
    {
      if (this.g == -1) {
        return this.c;
      }
      return this.g;
    }
    
    public final int e()
    {
      if (this.m == null) {
        return -1;
      }
      return this.m.b(this);
    }
    
    final boolean f()
    {
      return this.q != null;
    }
    
    final void g()
    {
      this.q.b(this);
    }
    
    final boolean h()
    {
      return (this.n & 0x20) != 0;
    }
    
    final void i()
    {
      this.n &= 0xFFFFFFDF;
    }
    
    final void j()
    {
      this.n &= 0xFEFF;
    }
    
    final boolean k()
    {
      return (this.n & 0x4) != 0;
    }
    
    final boolean l()
    {
      return (this.n & 0x2) != 0;
    }
    
    final boolean m()
    {
      return (this.n & 0x1) != 0;
    }
    
    final boolean n()
    {
      return (this.n & 0x8) != 0;
    }
    
    final boolean o()
    {
      return (this.n & 0x100) != 0;
    }
    
    final void p()
    {
      if (this.j != null) {
        this.j.clear();
      }
      this.n &= 0xFBFF;
    }
    
    final List<Object> q()
    {
      if ((this.n & 0x400) == 0)
      {
        if ((this.j == null) || (this.j.size() == 0)) {
          return o;
        }
        return this.k;
      }
      return o;
    }
    
    final void r()
    {
      this.n = 0;
      this.c = -1;
      this.d = -1;
      this.e = -1L;
      this.g = -1;
      this.p = 0;
      this.h = null;
      this.i = null;
      p();
      this.s = 0;
      this.l = -1;
      RecyclerView.a(this);
    }
    
    public final boolean s()
    {
      return ((this.n & 0x10) == 0) && (!ViewCompat.hasTransientState(this.a));
    }
    
    final boolean t()
    {
      return (this.n & 0x2) != 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.c + " id=" + this.e + ", oldPos=" + this.d + ", pLpos:" + this.g);
      String str;
      if (f())
      {
        StringBuilder localStringBuilder2 = localStringBuilder1.append(" scrap ");
        if (this.r)
        {
          str = "[changeScrap]";
          localStringBuilder2.append(str);
        }
      }
      else
      {
        if (k()) {
          localStringBuilder1.append(" invalid");
        }
        if (!m()) {
          localStringBuilder1.append(" unbound");
        }
        if (l()) {
          localStringBuilder1.append(" update");
        }
        if (n()) {
          localStringBuilder1.append(" removed");
        }
        if (b()) {
          localStringBuilder1.append(" ignored");
        }
        if (o()) {
          localStringBuilder1.append(" tmpDetached");
        }
        if (!s()) {
          localStringBuilder1.append(" not recyclable(" + this.p + ")");
        }
        if (((this.n & 0x200) == 0) && (!k())) {
          break label299;
        }
      }
      label299:
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          localStringBuilder1.append(" undefined adapter position");
        }
        if (this.a.getParent() == null) {
          localStringBuilder1.append(" no parent");
        }
        localStringBuilder1.append("}");
        return localStringBuilder1.toString();
        str = "[attachedScrap]";
        break;
      }
    }
  }
  
  static final class a
    extends Observable<RecyclerView.AdapterDataObserver>
  {
    public final void a()
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)this.mObservers.get(i)).a();
        i -= 1;
      }
    }
    
    public final void a(int paramInt)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)this.mObservers.get(i)).a(paramInt);
        i -= 1;
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      int i = this.mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)this.mObservers.get(i)).a(paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract int a(int paramInt1, int paramInt2);
  }
  
  private final class c
    implements RecyclerView.ItemAnimator.a
  {
    c() {}
    
    public final void a(RecyclerView.ViewHolder paramViewHolder)
    {
      paramViewHolder.a(true);
      if ((paramViewHolder.h != null) && (paramViewHolder.i == null)) {
        paramViewHolder.h = null;
      }
      paramViewHolder.i = null;
      if ((!RecyclerView.ViewHolder.e(paramViewHolder)) && (!RecyclerView.this.a(paramViewHolder.a)) && (paramViewHolder.o())) {
        RecyclerView.this.removeDetachedView(paramViewHolder.a, false);
      }
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(View paramView);
  }
  
  public static abstract interface e
  {
    public abstract void a(boolean paramBoolean);
    
    public abstract boolean a(MotionEvent paramMotionEvent);
    
    public abstract void b(MotionEvent paramMotionEvent);
  }
  
  public static abstract interface f {}
  
  private final class g
    extends RecyclerView.AdapterDataObserver
  {
    g() {}
    
    private void b()
    {
      if ((RecyclerView.c) && (RecyclerView.this.q) && (RecyclerView.this.p))
      {
        ViewCompat.postOnAnimation(RecyclerView.this, RecyclerView.this.i);
        return;
      }
      RecyclerView.this.v = true;
      RecyclerView.this.requestLayout();
    }
    
    public final void a()
    {
      RecyclerView.this.a(null);
      RecyclerView.this.B.e = true;
      RecyclerView localRecyclerView = RecyclerView.this;
      if (!localRecyclerView.w)
      {
        localRecyclerView.w = true;
        int j = localRecyclerView.f.b();
        int i = 0;
        while (i < j)
        {
          localObject = RecyclerView.d(localRecyclerView.f.c(i));
          if ((localObject != null) && (!((RecyclerView.ViewHolder)localObject).b())) {
            ((RecyclerView.ViewHolder)localObject).b(512);
          }
          i += 1;
        }
        Object localObject = localRecyclerView.d;
        j = ((RecyclerView.Recycler)localObject).c.size();
        i = 0;
        while (i < j)
        {
          RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)((RecyclerView.Recycler)localObject).c.get(i);
          if (localViewHolder != null) {
            localViewHolder.b(512);
          }
          i += 1;
        }
        localRecyclerView.l();
      }
      if (!RecyclerView.this.e.d()) {
        RecyclerView.this.requestLayout();
      }
    }
    
    public final void a(int paramInt)
    {
      RecyclerView.this.a(null);
      if (RecyclerView.this.e.c(paramInt)) {
        b();
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      RecyclerView.this.a(null);
      if (RecyclerView.this.e.b(paramInt1, paramInt2)) {
        b();
      }
    }
  }
  
  final class h
    implements Runnable
  {
    Interpolator a = RecyclerView.H;
    private int c;
    private int d;
    private OverScroller e = new OverScroller(RecyclerView.this.getContext(), RecyclerView.H);
    private boolean f = false;
    private boolean g = false;
    
    h() {}
    
    private int d(int paramInt1, int paramInt2)
    {
      int j = Math.abs(paramInt1);
      int k = Math.abs(paramInt2);
      int i;
      int m;
      if (j > k)
      {
        i = 1;
        m = (int)Math.sqrt(0.0D);
        paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
        if (i == 0) {
          break label142;
        }
      }
      label142:
      for (paramInt1 = RecyclerView.this.getWidth();; paramInt1 = RecyclerView.this.getHeight())
      {
        int n = paramInt1 / 2;
        float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
        float f1 = n;
        float f2 = n;
        f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
        if (m <= 0) {
          break label153;
        }
        paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / m)) * 4;
        return Math.min(paramInt1, 2000);
        i = 0;
        break;
      }
      label153:
      if (i != 0) {}
      for (paramInt2 = j;; paramInt2 = k)
      {
        paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
        break;
      }
    }
    
    final void a()
    {
      if (this.f)
      {
        this.g = true;
        return;
      }
      RecyclerView.this.removeCallbacks(this);
      ViewCompat.postOnAnimation(RecyclerView.this, this);
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      RecyclerView.this.a(2);
      this.d = 0;
      this.c = 0;
      this.e.fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
      a();
    }
    
    public final void a(int paramInt1, int paramInt2, int paramInt3)
    {
      a(paramInt1, paramInt2, paramInt3, RecyclerView.H);
    }
    
    public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (this.a != paramInterpolator)
      {
        this.a = paramInterpolator;
        this.e = new OverScroller(RecyclerView.this.getContext(), paramInterpolator);
      }
      RecyclerView.this.a(2);
      this.d = 0;
      this.c = 0;
      this.e.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
      a();
    }
    
    public final void b()
    {
      RecyclerView.this.removeCallbacks(this);
      this.e.abortAnimation();
    }
    
    public final void b(int paramInt1, int paramInt2)
    {
      a(paramInt1, paramInt2, d(paramInt1, paramInt2));
    }
    
    public final void c(int paramInt1, int paramInt2)
    {
      a(paramInt1, paramInt2, d(paramInt1, paramInt2), RecyclerView.H);
    }
    
    public final void run()
    {
      if (RecyclerView.this.m == null)
      {
        b();
        return;
      }
      this.g = false;
      this.f = true;
      RecyclerView.this.d();
      OverScroller localOverScroller = this.e;
      RecyclerView.SmoothScroller localSmoothScroller = RecyclerView.this.m.t;
      int i6;
      int i7;
      int i4;
      int i5;
      int i1;
      int j;
      int i2;
      int m;
      int i3;
      int i;
      int n;
      if (localOverScroller.computeScrollOffset())
      {
        i6 = localOverScroller.getCurrX();
        i7 = localOverScroller.getCurrY();
        i4 = i6 - this.c;
        i5 = i7 - this.d;
        i1 = 0;
        j = 0;
        i2 = 0;
        m = 0;
        this.c = i6;
        this.d = i7;
        i3 = 0;
        i = 0;
        n = 0;
        k = 0;
        if (RecyclerView.this.l != null)
        {
          RecyclerView.this.e();
          RecyclerView.this.f();
          TraceCompat.beginSection("RV Scroll");
          if (i4 != 0)
          {
            j = RecyclerView.this.m.a(i4, RecyclerView.this.d, RecyclerView.this.B);
            i = i4 - j;
          }
          if (i5 != 0)
          {
            m = RecyclerView.this.m.b(i5, RecyclerView.this.d, RecyclerView.this.B);
            k = i5 - m;
          }
          TraceCompat.endSection();
          RecyclerView.this.o();
          RecyclerView.this.g();
          RecyclerView.this.a(false);
          n = k;
          i2 = m;
          i3 = i;
          i1 = j;
          if (localSmoothScroller != null)
          {
            n = k;
            i2 = m;
            i3 = i;
            i1 = j;
            if (!localSmoothScroller.d())
            {
              n = k;
              i2 = m;
              i3 = i;
              i1 = j;
              if (localSmoothScroller.e())
              {
                n = RecyclerView.this.B.b();
                if (n != 0) {
                  break label695;
                }
                localSmoothScroller.c();
                i1 = j;
                i3 = i;
                i2 = m;
                n = k;
              }
            }
          }
        }
        label348:
        if (!RecyclerView.this.o.isEmpty()) {
          RecyclerView.this.invalidate();
        }
        if (RecyclerView.this.getOverScrollMode() != 2) {
          RecyclerView.this.a(i4, i5);
        }
        if ((i3 != 0) || (n != 0))
        {
          j = (int)localOverScroller.getCurrVelocity();
          if (i3 == i6) {
            break label825;
          }
          if (i3 >= 0) {
            break label743;
          }
          i = -j;
        }
      }
      label422:
      label439:
      label563:
      label590:
      label610:
      label695:
      label743:
      label775:
      label780:
      label785:
      label825:
      for (int k = i;; k = 0)
      {
        if (n != i7) {
          if (n < 0) {
            i = -j;
          }
        }
        for (;;)
        {
          if (RecyclerView.this.getOverScrollMode() != 2) {
            RecyclerView.this.b(k, i);
          }
          if (((k != 0) || (i3 == i6) || (localOverScroller.getFinalX() == 0)) && ((i != 0) || (n == i7) || (localOverScroller.getFinalY() == 0))) {
            localOverScroller.abortAnimation();
          }
          if ((i1 != 0) || (i2 != 0)) {
            RecyclerView.this.m();
          }
          if (!RecyclerView.a(RecyclerView.this)) {
            RecyclerView.this.invalidate();
          }
          if ((i5 != 0) && (RecyclerView.this.m.j()) && (i2 == i5))
          {
            i = 1;
            if ((i4 == 0) || (!RecyclerView.this.m.i()) || (i1 != i4)) {
              break label775;
            }
            j = 1;
            if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
              break label780;
            }
            i = 1;
            if ((!localOverScroller.isFinished()) && (i != 0)) {
              break label785;
            }
            RecyclerView.this.a(0);
            if (RecyclerView.q()) {
              RecyclerView.this.A.a();
            }
          }
          for (;;)
          {
            if (localSmoothScroller != null)
            {
              if (localSmoothScroller.d()) {
                RecyclerView.SmoothScroller.a(localSmoothScroller, 0, 0);
              }
              if (!this.g) {
                localSmoothScroller.c();
              }
            }
            this.f = false;
            if (!this.g) {
              break;
            }
            a();
            return;
            if (localSmoothScroller.f() >= n) {
              localSmoothScroller.a(n - 1);
            }
            RecyclerView.SmoothScroller.a(localSmoothScroller, i4 - i, i5 - k);
            n = k;
            i2 = m;
            i3 = i;
            i1 = j;
            break label348;
            if (i3 > 0)
            {
              i = j;
              break label422;
            }
            i = 0;
            break label422;
            i = j;
            if (n > 0) {
              break label439;
            }
            i = 0;
            break label439;
            i = 0;
            break label563;
            j = 0;
            break label590;
            i = 0;
            break label610;
            a();
            if (RecyclerView.this.z != null) {
              RecyclerView.this.z.a(RecyclerView.this, i4, i5);
            }
          }
          i = 0;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\RecyclerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */