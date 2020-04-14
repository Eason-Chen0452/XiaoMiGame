package com.xiaomi.gamecenter.sdk;

import android.os.Process;
import android.view.View;
import android.view.View.OnClickListener;

final class x
  implements View.OnClickListener
{
  x(v paramv) {}
  
  public final void onClick(View paramView)
  {
    Process.killProcess(Process.myPid());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */