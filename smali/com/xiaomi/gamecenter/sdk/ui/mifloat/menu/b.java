package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.view.View;
import com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.BaseRecyclerAdapter.a;
import java.util.List;

final class b
  implements BaseRecyclerAdapter.a
{
  b(MiFloatMenuWindow paramMiFloatMenuWindow) {}
  
  public final void a(View paramView, int paramInt)
  {
    if ((paramView instanceof com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.b))
    {
      ((com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.b)paramView).a();
      if (MiFloatMenuWindow.a(this.a) != null)
      {
        ((MiFloatMenuItemInfo)MiFloatMenuWindow.a(this.a).d().get(paramInt)).a(false);
        MiFloatMenuWindow.a(this.a).b(paramInt);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */