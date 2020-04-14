package com.xiaomi.gamecenter.sdk.ui.notice.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.dialog.BaseDialog;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;
import com.xiaomi.gamecenter.sdk.utils.MarqueeTextView;

public class NoticeTextDialogView
  extends BaseDialog
{
  private Context f;
  private MarqueeTextView g;
  private TextView h;
  private TextView i;
  private CheckBox j;
  private TextView k;
  private LinearLayout l;
  private TextView m;
  private NoticeConfig n;
  private boolean o = false;
  private int p;
  
  public NoticeTextDialogView(Context paramContext)
  {
    super(paramContext);
    this.f = paramContext;
    paramContext = LayoutInflater.from(getContext()).inflate(ResourceUtil.a(getContext(), "mio_notice_text_dialog"), this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13, -1);
    paramContext.setLayoutParams(localLayoutParams);
    this.g = ((MarqueeTextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_title")));
    this.h = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_content")));
    this.i = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_close")));
    this.j = ((CheckBox)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_checkbox")));
    this.j.setChecked(false);
    this.j.setOnCheckedChangeListener(new e(this));
    this.i.setOnClickListener(new f(this));
    this.k = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_checkbox_tip")));
    this.k.setOnClickListener(new g(this));
    this.l = ((LinearLayout)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_btn_parent")));
    this.m = ((TextView)paramContext.findViewById(ResourceUtil.f(getContext(), "mio_notice_btn")));
    this.m.setOnClickListener(new h(this));
  }
  
  private void d()
  {
    if (this.a != null)
    {
      this.c = null;
      this.a.dismiss();
      this.a = null;
    }
  }
  
  protected final NoticeConfig a()
  {
    return this.n;
  }
  
  public final void a(NoticeConfig paramNoticeConfig)
  {
    int i1 = 0;
    if (paramNoticeConfig == null) {}
    do
    {
      return;
      this.n = paramNoticeConfig;
    } while ((paramNoticeConfig.b() != 0) && (paramNoticeConfig.b() != 2));
    this.p = paramNoticeConfig.b();
    Object localObject2;
    if (this.p == 0)
    {
      this.l.setVisibility(8);
      localObject2 = paramNoticeConfig.c();
    }
    for (Object localObject1 = paramNoticeConfig.d();; localObject1 = paramNoticeConfig.n())
    {
      if (this.d != null) {
        this.d.a(paramNoticeConfig);
      }
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        this.g.setText((CharSequence)localObject2);
        post(new i(this));
      }
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break;
      }
      this.h.setMovementMethod(LinkMovementMethod.getInstance());
      this.h.setTextColor(-1291845632);
      this.h.setLineSpacing(1.0F, 1.55F);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break;
      }
      this.h.setText(Html.fromHtml((String)localObject1));
      paramNoticeConfig = this.h.getText();
      if (!(paramNoticeConfig instanceof Spannable)) {
        break;
      }
      paramNoticeConfig = new SpannableStringBuilder(paramNoticeConfig);
      int i2 = ((String)localObject1).length();
      localObject1 = (Spannable)this.h.getText();
      localObject2 = (URLSpan[])((Spannable)localObject1).getSpans(0, i2, URLSpan.class);
      if ((localObject2 == null) || (localObject2.length <= 0)) {
        break label337;
      }
      i2 = localObject2.length;
      while (i1 < i2)
      {
        Object localObject3 = localObject2[i1];
        paramNoticeConfig.removeSpan(localObject3);
        paramNoticeConfig.setSpan(new a(((URLSpan)localObject3).getURL()), ((Spannable)localObject1).getSpanStart(localObject3), ((Spannable)localObject1).getSpanEnd(localObject3), 34);
        i1 += 1;
      }
      this.l.setVisibility(0);
      this.m.setText(this.n.o());
      localObject2 = paramNoticeConfig.m();
    }
    label337:
    this.h.setText(paramNoticeConfig);
  }
  
  protected final boolean b()
  {
    return this.o;
  }
  
  protected final void c()
  {
    super.c();
    d();
  }
  
  private static final class a
    extends ClickableSpan
  {
    private String a;
    
    a(String paramString)
    {
      this.a = paramString;
    }
    
    public final void onClick(View paramView)
    {
      UrlUtils.a(paramView.getContext(), this.a);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\widget\NoticeTextDialogView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */