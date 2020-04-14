package com.xiaomi.gamecenter.sdk.ui.notice.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils.a;
import com.xiaomi.gamecenter.sdk.ui.notice.widget.NoticeDialog;

public abstract class BaseDialog
  extends RelativeLayout
{
  protected AlertDialog a;
  protected NoticeDialog b;
  protected bf c;
  protected bg d;
  protected UrlUtils.a e;
  
  public BaseDialog(Context paramContext)
  {
    super(paramContext);
  }
  
  public BaseDialog(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected abstract NoticeConfig a();
  
  public final void a(AlertDialog paramAlertDialog)
  {
    this.a = paramAlertDialog;
    if (this.a != null) {
      this.a.setOnKeyListener(new a(this));
    }
  }
  
  public final void a(bf parambf)
  {
    this.c = parambf;
  }
  
  public final void a(bg parambg)
  {
    this.d = parambg;
  }
  
  public final void a(UrlUtils.a parama)
  {
    this.e = parama;
  }
  
  public final void a(NoticeDialog paramNoticeDialog)
  {
    this.b = paramNoticeDialog;
    if (this.b != null) {
      this.b.setOnKeyListener(new b(this));
    }
  }
  
  protected abstract boolean b();
  
  protected void c() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\dialog\BaseDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */