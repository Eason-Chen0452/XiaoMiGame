package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.xiaomi.hy.dj.e.b;

class k
  implements Runnable
{
  k(HyQQWapFragment paramHyQQWapFragment, String paramString1, String paramString2) {}
  
  public void run()
  {
    try
    {
      ??? = new Intent("android.intent.action.VIEW", Uri.parse(this.a));
      this.c.startActivity((Intent)???);
    }
    catch (Exception localException)
    {
      synchronized (HyQQWapFragment.a(this.c))
      {
        try
        {
          HyQQWapFragment.a(this.c).wait();
          this.c.getActivity().runOnUiThread(new n(this));
          return;
          localException = localException;
          localException.printStackTrace();
          this.c.getActivity().runOnUiThread(new l(this));
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
            b.a().a(183);
            this.c.getActivity().runOnUiThread(new m(this));
          }
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */