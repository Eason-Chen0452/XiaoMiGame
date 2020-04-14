package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.bg;

final class b
  implements View.OnClickListener
{
  b(NoticeImageDialogView paramNoticeImageDialogView) {}
  
  public final void onClick(View paramView)
  {
    if (NoticeImageDialogView.a(this.a) != null) {
      NoticeImageDialogView.d(this.a).a(NoticeImageDialogView.b(this.a), NoticeImageDialogView.c(this.a));
    }
    if (NoticeImageDialogView.e(this.a) != null) {
      NoticeImageDialogView.f(this.a).a(NoticeImageDialogView.b(this.a), NoticeImageDialogView.c(this.a));
    }
    NoticeImageDialogView.g(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */