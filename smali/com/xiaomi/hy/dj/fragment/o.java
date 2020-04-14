package com.xiaomi.hy.dj.fragment;

import android.app.Activity;

class o
  implements Runnable
{
  o(HySzfPayFragment paramHySzfPayFragment, String paramString) {}
  
  public void run()
  {
    try
    {
      this.b.getActivity().runOnUiThread(new p(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */