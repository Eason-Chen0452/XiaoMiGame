package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.text.Layout;
import com.xiaomi.gamecenter.sdk.utils.MarqueeTextView;

final class i
  implements Runnable
{
  i(NoticeTextDialogView paramNoticeTextDialogView) {}
  
  public final void run()
  {
    try
    {
      NoticeTextDialogView.l(this.a).onPreDraw();
      if ((int)NoticeTextDialogView.l(this.a).getLayout().getLineWidth(0) > NoticeTextDialogView.l(this.a).getWidth()) {
        NoticeTextDialogView.l(this.a).startScroll();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */