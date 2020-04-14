package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;

public class NoticeDialog
  extends AlertDialog
{
  Context a;
  
  public NoticeDialog(Context paramContext)
  {
    super(paramContext, ResourceUtil.c(paramContext, "MioNoticeDialog"));
    this.a = paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public void show()
  {
    super.show();
    Window localWindow = getWindow();
    localWindow.setDimAmount(0.8F);
    localWindow.getDecorView().setPadding(0, 0, 0, 0);
    localWindow.getDecorView().setBackgroundColor(0);
    localWindow.setGravity(17);
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    localLayoutParams.width = -1;
    localLayoutParams.height = -1;
    localWindow.setAttributes(localLayoutParams);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\NoticeDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */