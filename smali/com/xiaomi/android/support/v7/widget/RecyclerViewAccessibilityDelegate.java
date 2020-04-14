package com.xiaomi.android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class RecyclerViewAccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  final RecyclerView a;
  final AccessibilityDelegateCompat b;
  
  public RecyclerViewAccessibilityDelegate(RecyclerView paramRecyclerView)
  {
    this.a = paramRecyclerView;
    this.b = new ItemDelegate(this);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!this.a.n()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.m != null) {
        paramView.m.a(paramAccessibilityEvent);
      }
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
    if ((!this.a.n()) && (this.a.m != null))
    {
      paramView = this.a.m;
      RecyclerView.Recycler localRecycler = paramView.q.d;
      RecyclerView.State localState = paramView.q.B;
      if ((paramView.q.canScrollVertically(-1)) || (paramView.q.canScrollHorizontally(-1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(8192);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      if ((paramView.q.canScrollVertically(1)) || (paramView.q.canScrollHorizontally(1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(4096);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      paramAccessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(paramView.a(localRecycler, localState), paramView.b(localRecycler, localState), false, 0));
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!this.a.n()) && (this.a.m != null)) {
      return this.a.m.g(paramInt);
    }
    return false;
  }
  
  public static class ItemDelegate
    extends AccessibilityDelegateCompat
  {
    final RecyclerViewAccessibilityDelegate a;
    
    public ItemDelegate(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
    {
      this.a = paramRecyclerViewAccessibilityDelegate;
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      if ((!this.a.a.n()) && (this.a.a.m != null)) {
        this.a.a.m.a(paramView, paramAccessibilityNodeInfoCompat);
      }
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      boolean bool2 = false;
      boolean bool1;
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        bool1 = true;
      }
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (this.a.a.n());
        bool1 = bool2;
      } while (this.a.a.m == null);
      paramView = this.a.a.m;
      paramBundle = paramView.q.d;
      paramView = paramView.q.B;
      return false;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\RecyclerViewAccessibilityDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */