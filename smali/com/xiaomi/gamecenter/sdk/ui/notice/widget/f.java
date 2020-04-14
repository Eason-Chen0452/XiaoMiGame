package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.bg;

final class f
  implements View.OnClickListener
{
  f(NoticeTextDialogView paramNoticeTextDialogView) {}
  
  public final void onClick(View paramView)
  {
    if (NoticeTextDialogView.a(this.a) != null) {
      NoticeTextDialogView.d(this.a).a(NoticeTextDialogView.b(this.a), NoticeTextDialogView.c(this.a));
    }
    if (NoticeTextDialogView.e(this.a) != null) {
      NoticeTextDialogView.f(this.a).a(NoticeTextDialogView.b(this.a), NoticeTextDialogView.c(this.a));
    }
    NoticeTextDialogView.g(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */