package com.xiaomi.hy.dj.fragment;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class t
  implements View.OnKeyListener
{
  t(HyWxScanFragment paramHyWxScanFragment) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      this.a.a.d();
      com.xiaomi.hy.dj.e.b.a().a(178);
      this.a.b(185);
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */