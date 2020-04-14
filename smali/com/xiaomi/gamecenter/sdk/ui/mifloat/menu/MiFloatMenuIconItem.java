package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoadCallback;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoader;
import com.xiaomi.gamecenter.sdk.ui.notice.transform.CircleTransform;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiFloatMenuIconItem
  extends LinearLayout
  implements com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.b
{
  private ImageView a;
  private ImageView b;
  private TextView c;
  private ImageLoadCallback d;
  private CircleTransform e;
  private int f;
  private String g;
  private String h;
  private MiAppEntry i;
  
  public MiFloatMenuIconItem(Context paramContext)
  {
    super(paramContext);
  }
  
  public MiFloatMenuIconItem(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void a()
  {
    if (TextUtils.isEmpty(this.g)) {
      return;
    }
    com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(getContext(), this.g, this.h);
    MiFloatDataReport.a((MiFloatMenuItemInfo)getTag());
  }
  
  public final void a(MiAppEntry paramMiAppEntry)
  {
    this.i = paramMiAppEntry;
  }
  
  public final void a(MiFloatMenuItemInfo paramMiFloatMenuItemInfo)
  {
    if (paramMiFloatMenuItemInfo == null) {
      return;
    }
    setTag(paramMiFloatMenuItemInfo);
    this.c.setText(paramMiFloatMenuItemInfo.b());
    this.g = paramMiFloatMenuItemInfo.e();
    this.h = paramMiFloatMenuItemInfo.b();
    int j = paramMiFloatMenuItemInfo.d();
    Glide.with(getContext()).clear(this.a);
    if (j == 1)
    {
      this.a.setBackgroundResource(ResourceUtils.c(getContext(), "mifloat_menu_welfare"));
      boolean bool = paramMiFloatMenuItemInfo.c();
      paramMiFloatMenuItemInfo = this.b;
      if (!bool) {
        break label265;
      }
    }
    label265:
    for (j = 0;; j = 8)
    {
      paramMiFloatMenuItemInfo.setVisibility(j);
      return;
      if (j == 2)
      {
        this.a.setBackgroundResource(ResourceUtils.c(getContext(), "mifloat_menu_gift"));
        break;
      }
      if (j == 3)
      {
        this.a.setBackgroundResource(ResourceUtils.c(getContext(), "mifloat_menu_coup"));
        break;
      }
      String str = paramMiFloatMenuItemInfo.a();
      if (TextUtils.isEmpty(str))
      {
        getContext();
        ImageLoader.a(this.a, ResourceUtils.c(getContext(), "mio_empty_dark"));
        break;
      }
      if (this.d == null) {
        this.d = new ImageLoadCallback(this.a);
      }
      if (this.e == null) {
        this.e = new CircleTransform();
      }
      ImageLoader.a(getContext(), this.a, Image.get(str), ResourceUtils.c(getContext(), "mio_empty_dark"), this.d, this.f, this.f);
      break;
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_icon")));
    this.b = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_icon_redpoint")));
    this.c = ((TextView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_name")));
    int j = ResourceUtils.g(getContext(), "view_dimen_134");
    this.f = getResources().getDimensionPixelOffset(j);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuIconItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */