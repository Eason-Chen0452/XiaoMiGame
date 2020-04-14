package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;

final class o
  implements View.OnClickListener
{
  o(ViewSelectLoginMethod paramViewSelectLoginMethod) {}
  
  public final void onClick(View paramView)
  {
    ViewSelectLoginMethod.b(this.a).sendMessage(ViewSelectLoginMethod.b(this.a).obtainMessage(10000, Integer.valueOf(11)));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */