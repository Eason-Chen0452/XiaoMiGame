package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class ArrayAdapter<T>
  extends BaseAdapter
{
  protected Context a;
  protected List<T> b;
  protected boolean c;
  
  public ArrayAdapter(Context paramContext)
  {
    this.a = paramContext;
    this.c = false;
  }
  
  public abstract View a(Context paramContext);
  
  public abstract void a(View paramView, T paramT);
  
  public void a(Object[] paramArrayOfObject)
  {
    int i = 0;
    if (paramArrayOfObject != null)
    {
      this.c = true;
      if (this.b == null) {
        this.b = new ArrayList(20);
      }
      int j = paramArrayOfObject.length;
      while (i < j)
      {
        Object localObject = paramArrayOfObject[i];
        this.b.add(localObject);
        i += 1;
      }
      notifyDataSetChanged();
      return;
    }
    this.c = false;
    notifyDataSetInvalidated();
  }
  
  public int getCount()
  {
    if ((this.c) && (this.b != null)) {
      return this.b.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.c) && (this.b != null)) {
      return this.b.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    if ((this.c) && (this.b != null)) {
      return paramInt;
    }
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.c) {
      throw new IllegalStateException("this should only be called when the data is valid");
    }
    if ((paramInt < 0) || (paramInt >= this.b.size())) {
      throw new IllegalStateException("couldn't get view at this position " + paramInt);
    }
    Object localObject = this.b.get(paramInt);
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = a(this.a);
    }
    a(paramViewGroup, localObject);
    return paramViewGroup;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ArrayAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */