package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.bd;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.dialog.BaseDialog;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoadCallback;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoader;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;
import com.xiaomi.gamecenter.sdk.utils.DisplayUtils;

public class NoticeImageDialogView
  extends BaseDialog
{
  private ImageView f;
  private TextView g;
  private CheckBox h;
  private TextView i;
  private LinearLayout j;
  private RelativeLayout k;
  private NoticeConfig l;
  private ImageLoadCallback m;
  private boolean n = false;
  private int o;
  private int p;
  private int q;
  private int r;
  
  public NoticeImageDialogView(Context paramContext)
  {
    super(paramContext);
    paramContext = LayoutInflater.from(getContext()).inflate(ResourceUtil.a(getContext(), "mio_notice_image_dialog"), this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13, -1);
    paramContext.setLayoutParams(localLayoutParams);
    this.f = ((ImageView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_image")));
    this.g = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_close")));
    this.h = ((CheckBox)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_checkbox")));
    this.h.setChecked(false);
    this.h.setOnCheckedChangeListener(new a(this));
    this.g.setOnClickListener(new b(this));
    this.i = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_checkbox_tip")));
    this.i.setOnClickListener(new c(this));
    this.k = ((RelativeLayout)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_img_parent")));
    this.k.setOnClickListener(new d(this));
    this.j = ((LinearLayout)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_checkbox_parent")));
    this.o = getResources().getDimensionPixelOffset(ResourceUtil.g(getContext(), "view_dimen_1800"));
    this.p = getResources().getDimensionPixelOffset(ResourceUtil.g(getContext(), "view_dimen_880"));
    this.q = getResources().getDimensionPixelOffset(ResourceUtil.g(getContext(), "view_dimen_960"));
    this.r = getResources().getDimensionPixelOffset(ResourceUtil.g(getContext(), "view_dimen_1732"));
  }
  
  private void d()
  {
    if (this.b != null)
    {
      this.c = null;
      this.b.dismiss();
      this.b = null;
    }
  }
  
  protected final NoticeConfig a()
  {
    return this.l;
  }
  
  public final void a(NoticeConfig paramNoticeConfig)
  {
    if (paramNoticeConfig == null) {}
    do
    {
      return;
      this.l = paramNoticeConfig;
    } while (paramNoticeConfig.b() != 1);
    if (this.d != null) {
      this.d.a(paramNoticeConfig);
    }
    int i1 = getResources().getConfiguration().orientation;
    Object localObject;
    LinearLayout.LayoutParams localLayoutParams;
    int i2;
    if (i1 == 2)
    {
      localObject = paramNoticeConfig.f();
      localLayoutParams = (LinearLayout.LayoutParams)this.k.getLayoutParams();
      i1 = (int)(paramNoticeConfig.k() / 3 * DisplayUtils.a(getContext()));
      i2 = (int)(paramNoticeConfig.l() / 3 * DisplayUtils.a(getContext()));
      localLayoutParams.width = i1;
      localLayoutParams.height = i2;
      paramNoticeConfig = (NoticeConfig)localObject;
    }
    for (;;)
    {
      localObject = bd.a().b();
      if (TextUtils.isEmpty(paramNoticeConfig))
      {
        ImageLoader.a(this.f, ResourceUtil.b(getContext(), "mio_empty_dark"));
        return;
        if (i1 == 1)
        {
          localObject = paramNoticeConfig.e();
          localLayoutParams = (LinearLayout.LayoutParams)this.k.getLayoutParams();
          i1 = (int)(paramNoticeConfig.i() / 3 * DisplayUtils.a(getContext()));
          i2 = (int)(paramNoticeConfig.j() / 3 * DisplayUtils.a(getContext()));
          localLayoutParams.width = i1;
          localLayoutParams.height = i2;
          paramNoticeConfig = (NoticeConfig)localObject;
        }
      }
      else
      {
        if (this.m == null) {
          this.m = new ImageLoadCallback(this.f);
        }
        ImageLoader.a((Context)localObject, this.f, Image.get(paramNoticeConfig), ResourceUtil.b(getContext(), "mio_empty_dark"), this.m, i1, i2);
        return;
      }
      i2 = 0;
      i1 = 0;
      paramNoticeConfig = "";
    }
  }
  
  protected final boolean b()
  {
    return this.n;
  }
  
  protected final void c()
  {
    super.c();
    d();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.l != null) {
      a(this.l);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\NoticeImageDialogView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */