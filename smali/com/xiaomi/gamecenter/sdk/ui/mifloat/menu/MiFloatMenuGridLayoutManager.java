package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import com.xiaomi.android.support.v7.widget.GridLayoutManager;

public class MiFloatMenuGridLayoutManager
  extends GridLayoutManager
{
  private boolean z = true;
  
  public MiFloatMenuGridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public final void A()
  {
    this.z = false;
  }
  
  public final boolean j()
  {
    return (this.z) && (super.j());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuGridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */