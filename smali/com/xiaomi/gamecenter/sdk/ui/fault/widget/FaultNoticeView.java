package com.xiaomi.gamecenter.sdk.ui.fault.widget;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.login.FaultInfo;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class FaultNoticeView
  extends RelativeLayout
  implements View.OnClickListener
{
  private TextView a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private String f;
  private MiAppEntry g;
  
  public FaultNoticeView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public FaultNoticeView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    View localView = LayoutInflater.from(getContext()).inflate(ResourceUtils.f(getContext(), "mio_fault_notice_view"), this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13, -1);
    localView.setLayoutParams(localLayoutParams);
    this.a = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "fault_notice_title")));
    this.e = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "fault_notice_close")));
    this.c = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "fault_notice_okbtn")));
    this.d = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "fault_notice_actionbtn")));
    this.b = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "fault_notice_content")));
    this.e.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
  }
  
  public final void a(MiAppEntry paramMiAppEntry)
  {
    this.g = paramMiAppEntry;
  }
  
  public final void a(FaultInfo paramFaultInfo)
  {
    if (paramFaultInfo == null) {
      return;
    }
    Object localObject1 = paramFaultInfo.b();
    this.a.setText((CharSequence)localObject1);
    Object localObject2 = paramFaultInfo.c();
    this.b.setMovementMethod(LinkMovementMethod.getInstance());
    this.b.setTextColor(-1291845632);
    this.b.setLineSpacing(1.0F, 1.55F);
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      this.b.setText(Html.fromHtml((String)localObject2));
      localObject1 = this.b.getText();
      if ((localObject1 instanceof Spannable))
      {
        localObject1 = new SpannableStringBuilder((CharSequence)localObject1);
        int i = ((String)localObject2).length();
        localObject2 = (Spannable)this.b.getText();
        URLSpan[] arrayOfURLSpan = (URLSpan[])((Spannable)localObject2).getSpans(0, i, URLSpan.class);
        if ((arrayOfURLSpan != null) && (arrayOfURLSpan.length > 0))
        {
          int j = arrayOfURLSpan.length;
          i = 0;
          while (i < j)
          {
            URLSpan localURLSpan = arrayOfURLSpan[i];
            ((SpannableStringBuilder)localObject1).removeSpan(localURLSpan);
            ((SpannableStringBuilder)localObject1).setSpan(new a(localURLSpan.getURL(), this.g), ((Spannable)localObject2).getSpanStart(localURLSpan), ((Spannable)localObject2).getSpanEnd(localURLSpan), 34);
            i += 1;
          }
        }
        this.b.setText((CharSequence)localObject1);
      }
    }
    this.f = paramFaultInfo.d();
    if (TextUtils.isEmpty(this.f))
    {
      this.d.setVisibility(8);
      return;
    }
    this.d.setVisibility(0);
  }
  
  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if ((i == ResourceUtils.d(getContext(), "fault_notice_close")) || (i == ResourceUtils.d(getContext(), "fault_notice_okbtn"))) {
      if ((getContext() instanceof Activity))
      {
        ReportData.a("fault_notice", "fault_close", this.g);
        ReporterUtils.getInstance().report(401);
        ((Activity)getContext()).finish();
        ((Activity)getContext()).overridePendingTransition(0, 0);
      }
    }
    while ((i != ResourceUtils.d(getContext(), "fault_notice_actionbtn")) || (TextUtils.isEmpty(this.f))) {
      return;
    }
    UrlUtils.a(getContext(), this.f);
    ReportData.a("fault_notice", "fault_goto", this.g);
    ReporterUtils.getInstance().report(403);
  }
  
  public static final class a
    extends ClickableSpan
  {
    private String a;
    private MiAppEntry b;
    
    a(String paramString, MiAppEntry paramMiAppEntry)
    {
      this.a = paramString;
      this.b = paramMiAppEntry;
    }
    
    public final void onClick(View paramView)
    {
      UrlUtils.a(paramView.getContext(), this.a);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\fault\widget\FaultNoticeView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */