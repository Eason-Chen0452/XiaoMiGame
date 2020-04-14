package com.xiaomi.hy.dj.fragment;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;

class s
  implements View.OnKeyListener
{
  s(HyWebFragment.a parama) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      HyWebFragment.c(this.a.a).goBack();
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */