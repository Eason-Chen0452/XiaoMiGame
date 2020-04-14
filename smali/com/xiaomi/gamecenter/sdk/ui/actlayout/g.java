package com.xiaomi.gamecenter.sdk.ui.actlayout;

import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.DataAction;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.a;

final class g
  implements ActionTransfor.a
{
  g(ViewLoginLayout paramViewLoginLayout, ActionTransfor.DataAction paramDataAction, byte[] paramArrayOfByte) {}
  
  public final void a(ActionTransfor.DataAction arg1)
  {
    this.a.a(???);
    synchronized (this.b)
    {
      this.b.notifyAll();
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */