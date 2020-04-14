package com.xiaomi.gamecenter.sdk.ui.mifloat.message;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;

public class MiMsgManager
{
  private static MiMsgManager f;
  private Activity a;
  private View b;
  private FrameLayout c;
  private MiMsgView d;
  private MiMsgHandler e = new MiMsgHandler(Looper.getMainLooper());
  private a g = new b(this);
  
  public static MiMsgManager a()
  {
    if (f == null) {}
    try
    {
      if (f == null) {
        f = new MiMsgManager();
      }
      return f;
    }
    finally {}
  }
  
  public final void a(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = paramActivity.getWindow().getDecorView();
    this.c = ((FrameLayout)this.b.findViewById(16908290));
  }
  
  public final void a(MiMsgEntity.MarqueeMsg paramMarqueeMsg)
  {
    if (paramMarqueeMsg == null) {
      return;
    }
    this.e.removeMessages(1000);
    this.e.obtainMessage(1000, paramMarqueeMsg).sendToTarget();
  }
  
  public final void b()
  {
    this.e.sendEmptyMessage(1001);
  }
  
  private class MiMsgHandler
    extends Handler
  {
    public MiMsgHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      default: 
      case 1000: 
        int i;
        do
        {
          do
          {
            return;
          } while ((paramMessage.obj == null) || (!(paramMessage.obj instanceof MiMsgEntity.MarqueeMsg)));
          MiMsgEntity.MarqueeMsg localMarqueeMsg = (MiMsgEntity.MarqueeMsg)paramMessage.obj;
          MiMsgManager.a(MiMsgManager.this, (MiMsgEntity.MarqueeMsg)paramMessage.obj);
          i = localMarqueeMsg.getTime();
        } while (i <= 0);
        removeMessages(1001);
        sendEmptyMessageDelayed(1001, i * 1000);
        return;
      }
      MiMsgManager.a(MiMsgManager.this);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\message\MiMsgManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */