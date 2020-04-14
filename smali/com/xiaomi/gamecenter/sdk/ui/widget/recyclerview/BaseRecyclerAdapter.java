package com.xiaomi.gamecenter.sdk.ui.widget.recyclerview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.xiaomi.android.support.v7.widget.RecyclerView.Adapter;
import com.xiaomi.android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseRecyclerAdapter<T>
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  protected Context a;
  protected List<T> b;
  protected boolean c;
  protected boolean d;
  protected Object e = new Object();
  protected a f;
  
  public BaseRecyclerAdapter(Context paramContext)
  {
    this.a = paramContext;
    this.c = false;
  }
  
  private static boolean a(List<?> paramList)
  {
    return (paramList == null) || (paramList.size() <= 0);
  }
  
  public final int a()
  {
    if (a(this.b)) {
      return 0;
    }
    return this.b.size();
  }
  
  public final long a(int paramInt)
  {
    if ((this.c) && (this.b != null)) {
      return paramInt;
    }
    return 0L;
  }
  
  public final RecyclerView.ViewHolder a(ViewGroup paramViewGroup)
  {
    return new ItemViewHolder(b(paramViewGroup), this.f);
  }
  
  public abstract void a(View paramView, T paramT);
  
  public final void a(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    View localView = paramViewHolder.a;
    if ((paramInt >= 0) && (this.c) && (this.b != null) && (paramInt < this.b.size())) {}
    for (paramViewHolder = this.b.get(paramInt);; paramViewHolder = null)
    {
      a(localView, paramViewHolder);
      return;
    }
  }
  
  public final void a(a parama)
  {
    this.f = parama;
  }
  
  public final Object[] a(Object[] paramArrayOfObject)
  {
    int j = 0;
    if (paramArrayOfObject != null) {
      synchronized (this.e)
      {
        this.c = true;
        int i;
        if (this.b == null)
        {
          this.d = true;
          this.b = new ArrayList(40);
          i = 0;
        }
        ArrayList localArrayList;
        for (;;)
        {
          localArrayList = new ArrayList(40);
          int k = paramArrayOfObject.length;
          while (j < k)
          {
            Object localObject2 = paramArrayOfObject[j];
            this.b.add(localObject2);
            j += 1;
          }
          if (this.b.size() == 0)
          {
            this.d = true;
            i = 0;
          }
          else
          {
            this.d = false;
            i = this.b.size();
          }
        }
        if (this.d) {
          c();
        }
        do
        {
          paramArrayOfObject = localArrayList.toArray();
          return paramArrayOfObject;
          a(i, this.b.size() - i);
        } while (i <= 0);
        b(i - 1);
      }
    }
    this.c = false;
    return null;
  }
  
  public abstract View b(ViewGroup paramViewGroup);
  
  public final List<T> d()
  {
    return this.b;
  }
  
  public final void e()
  {
    if (a(this.b)) {
      return;
    }
    this.b.clear();
  }
  
  public static class ItemViewHolder
    extends RecyclerView.ViewHolder
  {
    private BaseRecyclerAdapter.a n;
    
    public ItemViewHolder(View paramView, BaseRecyclerAdapter.a parama)
    {
      super();
      this.n = parama;
      this.a.setOnClickListener(new a(this));
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView, int paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\widget\recyclerview\BaseRecyclerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */