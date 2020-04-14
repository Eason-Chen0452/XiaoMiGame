package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;
import com.xiaomi.gamecenter.sdk.utils.BtnClickUtil;

final class d
  implements View.OnClickListener
{
  d(NoticeImageDialogView paramNoticeImageDialogView) {}
  
  public final void onClick(View paramView)
  {
    if ((BtnClickUtil.a()) || (NoticeImageDialogView.b(this.a) == null)) {
      return;
    }
    if (NoticeImageDialogView.i(this.a) != null) {
      NoticeImageDialogView.j(this.a).b(NoticeImageDialogView.b(this.a));
    }
    paramView = this.a.getContext();
    String str = NoticeImageDialogView.b(this.a).g();
    NoticeImageDialogView.b(this.a).h();
    UrlUtils.a(paramView, str, NoticeImageDialogView.k(this.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */