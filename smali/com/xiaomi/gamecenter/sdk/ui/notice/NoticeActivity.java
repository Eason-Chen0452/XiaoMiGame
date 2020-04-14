package com.xiaomi.gamecenter.sdk.ui.notice;

import android.app.Activity;
import android.os.Bundle;
import android.view.MotionEvent;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.notice.NoticeManager;
import com.xiaomi.gamecenter.sdk.notice.a;
import com.xiaomi.gamecenter.sdk.ui.UiUtils;

public class NoticeActivity
  extends Activity
  implements a
{
  public final void a()
  {
    finish();
    overridePendingTransition(0, 0);
  }
  
  public final void b()
  {
    finish();
    overridePendingTransition(0, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      NoticeManager.a().a(this, this);
      if (Logger.a) {
        UiUtils.a(this, "show notice from jar", 0);
      }
      return;
    }
    catch (Throwable paramBundle)
    {
      paramBundle.printStackTrace();
      finish();
      overridePendingTransition(0, 0);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    finish();
    overridePendingTransition(0, 0);
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\NoticeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */