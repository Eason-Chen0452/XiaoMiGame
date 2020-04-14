package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;

class u
  implements Runnable
{
  u(HyWxWapFragment.a parama, String paramString) {}
  
  public void run()
  {
    try
    {
      ??? = new Intent("android.intent.action.VIEW", Uri.parse(this.a));
      this.b.a.startActivity((Intent)???);
    }
    catch (Exception localException)
    {
      synchronized (HyWxWapFragment.a(this.b.a))
      {
        try
        {
          HyWxWapFragment.a(this.b.a).wait();
          this.b.a.getActivity().runOnUiThread(new x(this));
          return;
          localException = localException;
          localException.printStackTrace();
          this.b.a.getActivity().runOnUiThread(new v(this));
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
            this.b.a.getActivity().runOnUiThread(new w(this));
          }
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */