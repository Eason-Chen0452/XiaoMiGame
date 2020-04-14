package com.xiaomi.android.support.v7.widget;

final class u
  implements Runnable
{
  u(RecyclerView paramRecyclerView) {}
  
  public final void run()
  {
    if ((!this.a.s) || (this.a.isLayoutRequested())) {
      return;
    }
    if (!this.a.p)
    {
      this.a.requestLayout();
      return;
    }
    if (this.a.u)
    {
      this.a.t = true;
      return;
    }
    this.a.d();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */