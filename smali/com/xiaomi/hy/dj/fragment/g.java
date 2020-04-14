package com.xiaomi.hy.dj.fragment;

import android.content.Intent;
import android.util.Log;
import com.payeco.android.plugin.loading.PayecoPluginLoadingActivity;

class g
  implements Runnable
{
  g(HyPayEcoFragment paramHyPayEcoFragment, String paramString) {}
  
  public void run()
  {
    try
    {
      Intent localIntent = new Intent(this.b.getActivity(), PayecoPluginLoadingActivity.class);
      localIntent.putExtra("upPay.Req", this.a);
      localIntent.putExtra("Broadcast", "BROADCAST_PAY_END");
      localIntent.putExtra("Environment", "01");
      this.b.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.e("Exception", "请添加银行卡支付官方SDK相关的jar包");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */