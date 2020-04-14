package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.util.Log;
import com.xiaomi.hy.dj.model.PayResult;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

class c
  implements Runnable
{
  c(HyAlipayFragment paramHyAlipayFragment, String paramString1, String paramString2) {}
  
  public void run()
  {
    try
    {
      Object localObject1 = Class.forName("com.alipay.sdk.app.PayTask");
      Object localObject2 = ((Class)localObject1).getConstructor(new Class[] { Activity.class }).newInstance(new Object[] { this.c.getActivity() });
      localObject1 = new PayResult((String)((Class)localObject1).getMethod("pay", new Class[] { String.class, Boolean.TYPE }).invoke(localObject2, new Object[] { this.a, Boolean.valueOf(true) })).getResultStatus();
      if (((String)localObject1).equals("9000"))
      {
        this.c.getActivity().runOnUiThread(new d(this));
        return;
      }
      if (((String)localObject1).equals("6001"))
      {
        this.c.getActivity().runOnUiThread(new e(this));
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.e("Exception", "请添加支付宝官方SDK相关的jar包");
      return;
    }
    this.c.getActivity().runOnUiThread(new f(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */