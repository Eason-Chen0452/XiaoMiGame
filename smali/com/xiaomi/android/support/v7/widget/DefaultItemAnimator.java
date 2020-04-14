package com.xiaomi.android.support.v7.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator
  extends SimpleItemAnimator
{
  private static TimeInterpolator i;
  ArrayList<ArrayList<RecyclerView.ViewHolder>> a = new ArrayList();
  ArrayList<ArrayList<b>> b = new ArrayList();
  ArrayList<ArrayList<a>> c = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> d = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> e = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> f = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> g = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> j = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> k = new ArrayList();
  private ArrayList<b> l = new ArrayList();
  private ArrayList<a> m = new ArrayList();
  
  private void a(a parama)
  {
    if (parama.a != null) {
      a(parama, parama.a);
    }
    if (parama.b != null) {
      a(parama, parama.b);
    }
  }
  
  private static void a(List<RecyclerView.ViewHolder> paramList)
  {
    int n = paramList.size() - 1;
    while (n >= 0)
    {
      ((RecyclerView.ViewHolder)paramList.get(n)).a.animate().cancel();
      n -= 1;
    }
  }
  
  private void a(List<a> paramList, RecyclerView.ViewHolder paramViewHolder)
  {
    int n = paramList.size() - 1;
    while (n >= 0)
    {
      a locala = (a)paramList.get(n);
      if ((a(locala, paramViewHolder)) && (locala.a == null) && (locala.b == null)) {
        paramList.remove(locala);
      }
      n -= 1;
    }
  }
  
  private boolean a(a parama, RecyclerView.ViewHolder paramViewHolder)
  {
    if (parama.b == paramViewHolder) {
      parama.b = null;
    }
    for (;;)
    {
      paramViewHolder.a.setAlpha(1.0F);
      paramViewHolder.a.setTranslationX(0.0F);
      paramViewHolder.a.setTranslationY(0.0F);
      f(paramViewHolder);
      return true;
      if (parama.a != paramViewHolder) {
        break;
      }
      parama.a = null;
    }
    return false;
  }
  
  private void h(RecyclerView.ViewHolder paramViewHolder)
  {
    if (i == null) {
      i = new ValueAnimator().getInterpolator();
    }
    paramViewHolder.a.animate().setInterpolator(i);
    c(paramViewHolder);
  }
  
  public final void a()
  {
    int n;
    int i1;
    label24:
    int i2;
    if (!this.j.isEmpty())
    {
      n = 1;
      if (this.l.isEmpty()) {
        break label72;
      }
      i1 = 1;
      if (this.m.isEmpty()) {
        break label77;
      }
      i2 = 1;
      label36:
      if (this.k.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int i3 = 1;; i3 = 0)
    {
      if ((n != 0) || (i1 != 0) || (i3 != 0) || (i2 != 0)) {
        break label88;
      }
      return;
      n = 0;
      break;
      i1 = 0;
      break label24;
      i2 = 0;
      break label36;
    }
    label88:
    Object localObject1 = this.j.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (RecyclerView.ViewHolder)((Iterator)localObject1).next();
      View localView = ((RecyclerView.ViewHolder)localObject2).a;
      ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
      this.f.add(localObject2);
      localViewPropertyAnimator.setDuration(g()).alpha(0.0F).setListener(new f(this, (RecyclerView.ViewHolder)localObject2, localViewPropertyAnimator, localView)).start();
    }
    this.j.clear();
    label266:
    label346:
    long l1;
    label421:
    long l2;
    if (i1 != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.l);
      this.b.add(localObject1);
      this.l.clear();
      localObject2 = new c(this, (ArrayList)localObject1);
      if (n != 0) {
        ViewCompat.postOnAnimationDelayed(((b)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, g());
      }
    }
    else
    {
      if (i2 != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(this.m);
        this.c.add(localObject1);
        this.m.clear();
        localObject2 = new d(this, (ArrayList)localObject1);
        if (n == 0) {
          break label483;
        }
        ViewCompat.postOnAnimationDelayed(((a)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, g());
      }
      if (i3 == 0) {
        break label491;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.k);
      this.a.add(localObject1);
      this.k.clear();
      localObject2 = new e(this, (ArrayList)localObject1);
      if ((n == 0) && (i1 == 0) && (i2 == 0)) {
        break label511;
      }
      if (n == 0) {
        break label493;
      }
      l1 = g();
      if (i1 == 0) {
        break label499;
      }
      l2 = e();
      label431:
      if (i2 == 0) {
        break label505;
      }
    }
    label483:
    label491:
    label493:
    label499:
    label505:
    for (long l3 = h();; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      ViewCompat.postOnAnimationDelayed(((RecyclerView.ViewHolder)((ArrayList)localObject1).get(0)).a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label266;
      ((Runnable)localObject2).run();
      break label346;
      break;
      l1 = 0L;
      break label421;
      l2 = 0L;
      break label431;
    }
    label511:
    ((Runnable)localObject2).run();
  }
  
  public final boolean a(RecyclerView.ViewHolder paramViewHolder)
  {
    h(paramViewHolder);
    this.j.add(paramViewHolder);
    return true;
  }
  
  public final boolean a(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramViewHolder.a;
    paramInt1 = (int)(paramInt1 + paramViewHolder.a.getTranslationX());
    paramInt2 = (int)(paramInt2 + paramViewHolder.a.getTranslationY());
    h(paramViewHolder);
    int n = paramInt3 - paramInt1;
    int i1 = paramInt4 - paramInt2;
    if ((n == 0) && (i1 == 0))
    {
      f(paramViewHolder);
      return false;
    }
    if (n != 0) {
      localView.setTranslationX(-n);
    }
    if (i1 != 0) {
      localView.setTranslationY(-i1);
    }
    this.l.add(new b(paramViewHolder, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public final boolean a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramViewHolder1 == paramViewHolder2) {
      return a(paramViewHolder1, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = paramViewHolder1.a.getTranslationX();
    float f2 = paramViewHolder1.a.getTranslationY();
    float f3 = paramViewHolder1.a.getAlpha();
    h(paramViewHolder1);
    int n = (int)(paramInt3 - paramInt1 - f1);
    int i1 = (int)(paramInt4 - paramInt2 - f2);
    paramViewHolder1.a.setTranslationX(f1);
    paramViewHolder1.a.setTranslationY(f2);
    paramViewHolder1.a.setAlpha(f3);
    if (paramViewHolder2 != null)
    {
      h(paramViewHolder2);
      paramViewHolder2.a.setTranslationX(-n);
      paramViewHolder2.a.setTranslationY(-i1);
      paramViewHolder2.a.setAlpha(0.0F);
    }
    this.m.add(new a(paramViewHolder1, paramViewHolder2, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public final boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull List<Object> paramList)
  {
    return (!paramList.isEmpty()) || (super.a(paramViewHolder, paramList));
  }
  
  public final boolean b()
  {
    return (!this.k.isEmpty()) || (!this.m.isEmpty()) || (!this.l.isEmpty()) || (!this.j.isEmpty()) || (!this.e.isEmpty()) || (!this.f.isEmpty()) || (!this.d.isEmpty()) || (!this.g.isEmpty()) || (!this.b.isEmpty()) || (!this.a.isEmpty()) || (!this.c.isEmpty());
  }
  
  public final boolean b(RecyclerView.ViewHolder paramViewHolder)
  {
    h(paramViewHolder);
    paramViewHolder.a.setAlpha(0.0F);
    this.k.add(paramViewHolder);
    return true;
  }
  
  final void c()
  {
    if (!b()) {
      i();
    }
  }
  
  public final void c(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = paramViewHolder.a;
    localView.animate().cancel();
    int n = this.l.size() - 1;
    while (n >= 0)
    {
      if (((b)this.l.get(n)).a == paramViewHolder)
      {
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        f(paramViewHolder);
        this.l.remove(n);
      }
      n -= 1;
    }
    a(this.m, paramViewHolder);
    if (this.j.remove(paramViewHolder))
    {
      localView.setAlpha(1.0F);
      f(paramViewHolder);
    }
    if (this.k.remove(paramViewHolder))
    {
      localView.setAlpha(1.0F);
      f(paramViewHolder);
    }
    n = this.c.size() - 1;
    ArrayList localArrayList;
    while (n >= 0)
    {
      localArrayList = (ArrayList)this.c.get(n);
      a(localArrayList, paramViewHolder);
      if (localArrayList.isEmpty()) {
        this.c.remove(n);
      }
      n -= 1;
    }
    n = this.b.size() - 1;
    if (n >= 0)
    {
      localArrayList = (ArrayList)this.b.get(n);
      int i1 = localArrayList.size() - 1;
      for (;;)
      {
        if (i1 >= 0)
        {
          if (((b)localArrayList.get(i1)).a != paramViewHolder) {
            break label293;
          }
          localView.setTranslationY(0.0F);
          localView.setTranslationX(0.0F);
          f(paramViewHolder);
          localArrayList.remove(i1);
          if (localArrayList.isEmpty()) {
            this.b.remove(n);
          }
        }
        n -= 1;
        break;
        label293:
        i1 -= 1;
      }
    }
    n = this.a.size() - 1;
    while (n >= 0)
    {
      localArrayList = (ArrayList)this.a.get(n);
      if (localArrayList.remove(paramViewHolder))
      {
        localView.setAlpha(1.0F);
        f(paramViewHolder);
        if (localArrayList.isEmpty()) {
          this.a.remove(n);
        }
      }
      n -= 1;
    }
    this.f.remove(paramViewHolder);
    this.d.remove(paramViewHolder);
    this.g.remove(paramViewHolder);
    this.e.remove(paramViewHolder);
    c();
  }
  
  public final void d()
  {
    int n = this.l.size() - 1;
    Object localObject1;
    Object localObject2;
    while (n >= 0)
    {
      localObject1 = (b)this.l.get(n);
      localObject2 = ((b)localObject1).a.a;
      ((View)localObject2).setTranslationY(0.0F);
      ((View)localObject2).setTranslationX(0.0F);
      f(((b)localObject1).a);
      this.l.remove(n);
      n -= 1;
    }
    n = this.j.size() - 1;
    while (n >= 0)
    {
      f((RecyclerView.ViewHolder)this.j.get(n));
      this.j.remove(n);
      n -= 1;
    }
    n = this.k.size() - 1;
    while (n >= 0)
    {
      localObject1 = (RecyclerView.ViewHolder)this.k.get(n);
      ((RecyclerView.ViewHolder)localObject1).a.setAlpha(1.0F);
      f((RecyclerView.ViewHolder)localObject1);
      this.k.remove(n);
      n -= 1;
    }
    n = this.m.size() - 1;
    while (n >= 0)
    {
      a((a)this.m.get(n));
      n -= 1;
    }
    this.m.clear();
    if (!b()) {
      return;
    }
    n = this.b.size() - 1;
    int i1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)this.b.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        localObject2 = (b)((ArrayList)localObject1).get(i1);
        View localView = ((b)localObject2).a.a;
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        f(((b)localObject2).a);
        ((ArrayList)localObject1).remove(i1);
        if (((ArrayList)localObject1).isEmpty()) {
          this.b.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    n = this.a.size() - 1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)this.a.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        localObject2 = (RecyclerView.ViewHolder)((ArrayList)localObject1).get(i1);
        ((RecyclerView.ViewHolder)localObject2).a.setAlpha(1.0F);
        f((RecyclerView.ViewHolder)localObject2);
        ((ArrayList)localObject1).remove(i1);
        if (((ArrayList)localObject1).isEmpty()) {
          this.a.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    n = this.c.size() - 1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)this.c.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        a((a)((ArrayList)localObject1).get(i1));
        if (((ArrayList)localObject1).isEmpty()) {
          this.c.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    a(this.f);
    a(this.e);
    a(this.d);
    a(this.g);
    i();
  }
  
  private static final class a
  {
    public RecyclerView.ViewHolder a;
    public RecyclerView.ViewHolder b;
    public int c;
    public int d;
    public int e;
    public int f;
    
    private a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
    {
      this.a = paramViewHolder1;
      this.b = paramViewHolder2;
    }
    
    a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramViewHolder1, paramViewHolder2);
      this.c = paramInt1;
      this.d = paramInt2;
      this.e = paramInt3;
      this.f = paramInt4;
    }
    
    public final String toString()
    {
      return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
    }
  }
  
  private static final class b
  {
    public RecyclerView.ViewHolder a;
    public int b;
    public int c;
    public int d;
    public int e;
    
    b(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.a = paramViewHolder;
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
      this.e = paramInt4;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\DefaultItemAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */