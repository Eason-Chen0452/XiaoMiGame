package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;

final class h
  implements View.OnClickListener
{
  h(NoticeTextDialogView paramNoticeTextDialogView) {}
  
  public final void onClick(View paramView)
  {
    if (NoticeTextDialogView.b(this.a) == null) {
      return;
    }
    if (NoticeTextDialogView.i(this.a) != null) {
      NoticeTextDialogView.j(this.a).b(NoticeTextDialogView.b(this.a));
    }
    paramView = this.a.getContext();
    String str = NoticeTextDialogView.b(this.a).p();
    NoticeTextDialogView.b(this.a).q();
    UrlUtils.a(paramView, str, NoticeTextDialogView.k(this.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */