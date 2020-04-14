package com.xiaomi.gamecenter.sdk.ui.widget.recyclerview;

import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.utils.BtnClickUtil;

final class a
  implements View.OnClickListener
{
  a(BaseRecyclerAdapter.ItemViewHolder paramItemViewHolder) {}
  
  public final void onClick(View paramView)
  {
    if ((BaseRecyclerAdapter.ItemViewHolder.a(this.a) != null) && (!BtnClickUtil.a()))
    {
      int i = this.a.c();
      BaseRecyclerAdapter.ItemViewHolder.a(this.a).a(paramView, i);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\widget\recyclerview\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */