package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.BaseRecyclerAdapter;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiFloatMenuAdapter
  extends BaseRecyclerAdapter<MiFloatMenuItemInfo>
{
  private LayoutInflater g;
  private MiAppEntry h;
  
  public MiFloatMenuAdapter(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
    this.h = paramMiAppEntry;
  }
  
  public final View b(ViewGroup paramViewGroup)
  {
    paramViewGroup = (MiFloatMenuIconItem)this.g.inflate(ResourceUtils.f(this.a, "mifloat_meun_icon_item"), paramViewGroup, false);
    paramViewGroup.a(this.h);
    return paramViewGroup;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */