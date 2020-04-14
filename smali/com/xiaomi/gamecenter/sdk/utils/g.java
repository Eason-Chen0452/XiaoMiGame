package com.xiaomi.gamecenter.sdk.utils;

import android.widget.Scroller;

final class g
  implements Runnable
{
  g(MarqueeTextView paramMarqueeTextView, int paramInt1, int paramInt2) {}
  
  public final void run()
  {
    MarqueeTextView.access$100(this.c).startScroll(MarqueeTextView.access$000(this.c), 0, this.a, 0, this.b);
    this.c.invalidate();
    MarqueeTextView.access$202(this.c, false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */