package com.xiaomi.gamecenter.sdk.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class ArrayListAdapter<T>
  extends BaseAdapter
{
  protected List<T> a = new ArrayList();
  protected Context b;
  protected LayoutInflater c;
  
  public ArrayListAdapter(Context paramContext)
  {
    this.b = paramContext;
  }
  
  public ArrayListAdapter(Context paramContext, List<T> paramList)
  {
    this.b = paramContext;
    this.a = paramList;
    this.c = LayoutInflater.from(this.b);
  }
  
  public ArrayListAdapter(List<T> paramList)
  {
    this.a = paramList;
  }
  
  public final void a(List<T> paramList)
  {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public T getItem(int paramInt)
  {
    if (this.a == null) {
      return null;
    }
    return (T)this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\adapter\ArrayListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */