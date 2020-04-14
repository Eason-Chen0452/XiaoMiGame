package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class g
  implements View.OnClickListener
{
  g(NoticeTextDialogView paramNoticeTextDialogView) {}
  
  public final void onClick(View paramView)
  {
    paramView = NoticeTextDialogView.h(this.a);
    if (!NoticeTextDialogView.c(this.a)) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setChecked(bool);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */