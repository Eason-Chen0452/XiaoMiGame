package com.xiaomi.gamecenter.sdk.ui.mifloat.message;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ViewSwitcher.ViewFactory;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoader;
import com.xiaomi.gamecenter.sdk.utils.MarqueeTextView;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiMsgView
  extends FrameLayout
  implements View.OnClickListener, ViewSwitcher.ViewFactory
{
  private Context a;
  private MarqueeTextView b;
  private Button c;
  private RelativeLayout d;
  private ImageView e;
  private MiMsgEntity.MarqueeMsg f;
  private a g;
  
  public MiMsgView(@NonNull Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    int i = ResourceUtils.f(paramContext, "float_new_msg_layout");
    LayoutInflater.from(paramContext).inflate(i, this);
    a();
  }
  
  public MiMsgView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    int i = ResourceUtils.f(paramContext, "float_new_msg_layout");
    LayoutInflater.from(paramContext).inflate(i, this);
    a();
  }
  
  private void a()
  {
    this.b = ((MarqueeTextView)findViewById(ResourceUtils.d(this.a, "float_new_msg_win_message")));
    this.c = ((Button)findViewById(ResourceUtils.d(this.a, "float_new_msg_win_close_btn")));
    this.d = ((RelativeLayout)findViewById(ResourceUtils.d(this.a, "float_newmsg_win_btnroot")));
    this.e = ((ImageView)findViewById(ResourceUtils.d(this.a, "float_new_msg_win_icon")));
    this.d.setOnClickListener(this);
    this.b.setOnClickListener(this);
  }
  
  public final void a(MiMsgEntity.MarqueeMsg paramMarqueeMsg)
  {
    this.f = paramMarqueeMsg;
    if (this.f == null) {
      return;
    }
    for (;;)
    {
      String str;
      int i;
      try
      {
        paramMarqueeMsg = this.f.getNotice();
        str = this.f.getIcon();
        boolean bool = this.f.isHideIcon();
        i = ResourceUtils.c(this.a, "float_new_msg_win_horn");
        if (bool)
        {
          this.e.setVisibility(8);
          if (TextUtils.isEmpty(paramMarqueeMsg)) {
            break label171;
          }
          paramMarqueeMsg = new String(cn.com.wali.basetool.utils.a.a(paramMarqueeMsg), "utf-8");
          if (TextUtils.isEmpty(paramMarqueeMsg)) {
            break;
          }
          this.b.setText(Html.fromHtml(paramMarqueeMsg));
          this.b.startScroll();
          return;
        }
      }
      catch (Exception paramMarqueeMsg)
      {
        paramMarqueeMsg.printStackTrace();
        return;
      }
      this.e.setVisibility(0);
      if (TextUtils.isEmpty(str))
      {
        this.e.setImageResource(i);
      }
      else if (!TextUtils.isEmpty(str))
      {
        ImageLoader.a(getContext(), this.e, Image.get(str), i, null, null);
        continue;
        label171:
        paramMarqueeMsg = null;
      }
    }
  }
  
  public final void a(a parama)
  {
    this.g = parama;
  }
  
  public View makeView()
  {
    ImageView localImageView = new ImageView(this.a);
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return localImageView;
  }
  
  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if (i == ResourceUtils.d(this.a, "float_newmsg_win_btnroot")) {
      if (this.g != null) {
        this.g.a(this.f);
      }
    }
    while ((i != ResourceUtils.d(this.a, "float_new_msg_win_message")) || (this.g == null)) {
      return;
    }
    this.g.b(this.f);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\message\MiMsgView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */