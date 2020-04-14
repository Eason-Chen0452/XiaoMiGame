package com.xiaomi.gamecenter.sdk.component;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.RelativeLayout.LayoutParams;
import com.xiaomi.gamecenter.sdk.component.item.MiLoginMethodSquareAdapter;
import com.xiaomi.gamecenter.sdk.component.item.MiLoginMethodSquareInfo;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.ui.MiSelector;
import com.xiaomi.gamecenter.sdk.ui.MiTextView;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.Iterator;
import java.util.List;

public class LoginSelectLoginAccount
  extends LinearLayout
{
  private AdapterView.OnItemClickListener a;
  private View.OnClickListener b;
  private GridView c;
  private MiTextView d;
  private MiTextView e;
  private MiTextView f;
  private MiTextView g;
  
  public LoginSelectLoginAccount(Context paramContext, AdapterView.OnItemClickListener paramOnItemClickListener, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    setGravity(1);
    setOrientation(1);
    this.a = paramOnItemClickListener;
    this.b = paramOnClickListener;
    a();
  }
  
  private void a()
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setGravity(1);
    localLinearLayout.setOrientation(1);
    int i = MiLayout.b(4);
    int j = Color.parseColor("#FFFFFF");
    Object localObject1 = new GradientDrawable();
    ((GradientDrawable)localObject1).setColor(j);
    ((GradientDrawable)localObject1).setCornerRadius(i);
    localLinearLayout.setBackgroundDrawable((Drawable)localObject1);
    this.d = new MiTextView(getContext());
    Object localObject2;
    Object localObject3;
    Object localObject4;
    if ("common".equals("base"))
    {
      this.d.setTextSize(13.0F);
      this.d.setTextColor(-16777216);
      this.d.setText("请选择登录方式");
      localObject1 = new LinearLayout.LayoutParams(-2, -2);
      ((LinearLayout.LayoutParams)localObject1).topMargin = MiLayout.b(30);
      ((LinearLayout.LayoutParams)localObject1).bottomMargin = MiLayout.b(20);
      localLinearLayout.addView(this.d, (ViewGroup.LayoutParams)localObject1);
      if ("common".equals("base"))
      {
        this.c = new GridView(getContext());
        this.c.setId(this.c.hashCode());
        this.c.setChoiceMode(1);
        this.c.setStretchMode(2);
        this.c.setOnItemClickListener(this.a);
        HyUtils.s.remove("WEIBO");
        this.c.setNumColumns(HyUtils.s.size());
        this.c.setSelector(ResourceUtils.c(getContext(), "mio_selector_login_item"));
        localObject1 = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject1).topMargin = MiLayout.b(17);
        ((LinearLayout.LayoutParams)localObject1).leftMargin = MiLayout.b(30);
        ((LinearLayout.LayoutParams)localObject1).rightMargin = MiLayout.b(30);
        ((LinearLayout.LayoutParams)localObject1).bottomMargin = MiLayout.b(50);
        localLinearLayout.addView(this.c, (ViewGroup.LayoutParams)localObject1);
        localObject1 = new MiLoginMethodSquareAdapter(getContext());
        this.c.setAdapter((ListAdapter)localObject1);
        localObject2 = new MiLoginMethodSquareInfo[HyUtils.s.size()];
        localObject3 = HyUtils.s.iterator();
        i = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (((Iterator)localObject3).hasNext())
        {
          localObject4 = (String)((Iterator)localObject3).next();
          if ("MI".equals(localObject4))
          {
            localObject2[i] = new MiLoginMethodSquareInfo();
            localObject2[i].a("小米");
            localObject2[i].a(ResourceUtils.c(getContext(), "mio_login_third_account_mi"));
            localObject2[i].a(AccountType.AccountType_MI);
            i += 1;
            continue;
            this.d.setTextSize(17.0F);
            break;
          }
          if ("QQ".equals(localObject4))
          {
            localObject2[i] = new MiLoginMethodSquareInfo();
            localObject2[i].a("QQ");
            localObject2[i].a(ResourceUtils.c(getContext(), "mio_login_third_account_qq"));
            localObject2[i].a(AccountType.AccountType_QQ);
            i += 1;
          }
          else
          {
            if (!"WX".equals(localObject4)) {
              break label1284;
            }
            localObject2[i] = new MiLoginMethodSquareInfo();
            localObject2[i].a("微信");
            localObject2[i].a(ResourceUtils.c(getContext(), "mio_login_third_account_wx"));
            localObject2[i].a(AccountType.AccountType_WX);
            i += 1;
          }
        }
      }
    }
    label1284:
    for (;;)
    {
      break;
      ((MiLoginMethodSquareAdapter)localObject1).a((Object[])localObject2);
      this.g = new MiTextView(getContext(), this.b);
      this.g.setId(this.g.hashCode());
      this.g.setGravity(1);
      if ("common".equals("base"))
      {
        this.g.setText(HyUtils.j);
        this.g.setTextSize(HyUtils.l);
        this.g.setTextColor(Color.parseColor(HyUtils.k));
      }
      for (;;)
      {
        localObject1 = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject1).topMargin = MiLayout.b(7);
        ((LinearLayout.LayoutParams)localObject1).bottomMargin = MiLayout.b(7);
        localLinearLayout.addView(this.g, (ViewGroup.LayoutParams)localObject1);
        addView(localLinearLayout, new LinearLayout.LayoutParams(-1, -2));
        return;
        i = MiLayout.b(15);
        localObject4 = new GradientDrawable();
        ((GradientDrawable)localObject4).setColor(42790);
        ((GradientDrawable)localObject4).setCornerRadius(i);
        GradientDrawable localGradientDrawable = new GradientDrawable();
        localGradientDrawable.setColor(-689152);
        localGradientDrawable.setCornerRadius(i);
        localObject1 = new GradientDrawable();
        ((GradientDrawable)localObject1).setColor(-9203714);
        ((GradientDrawable)localObject1).setCornerRadius(i);
        localObject2 = new GradientDrawable();
        ((GradientDrawable)localObject2).setColor(-12230946);
        ((GradientDrawable)localObject2).setCornerRadius(i);
        localObject3 = new LinearLayout.LayoutParams(MiLayout.b(480), MiLayout.b(85));
        ((LinearLayout.LayoutParams)localObject3).topMargin = MiLayout.b(20);
        ((LinearLayout.LayoutParams)localObject3).bottomMargin = MiLayout.b(0);
        this.e = new MiTextView(getContext(), this.b);
        this.e.setId(this.e.hashCode());
        this.e.setText("使用小米帐号登录");
        this.e.setTextColor(-1);
        this.e.setTextSize(14.0F);
        this.e.setBackgroundDrawable(MiSelector.b((Drawable)localObject4, localGradientDrawable));
        this.e.setGravity(17);
        localObject4 = getResources().getDrawable(ResourceUtils.c(getContext(), "mio_login_third_account_mi_pure"));
        ((Drawable)localObject4).setBounds(MiLayout.b(65), 0, ((Drawable)localObject4).getMinimumWidth() + MiLayout.b(65), ((Drawable)localObject4).getMinimumHeight());
        this.e.setCompoundDrawables((Drawable)localObject4, null, null, null);
        localLinearLayout.addView(this.e, (ViewGroup.LayoutParams)localObject3);
        localObject3 = new LinearLayout.LayoutParams(MiLayout.b(480), MiLayout.b(85));
        ((LinearLayout.LayoutParams)localObject3).topMargin = MiLayout.b(45);
        ((LinearLayout.LayoutParams)localObject3).bottomMargin = MiLayout.b(55);
        this.f = new MiTextView(getContext(), this.b);
        this.f.setId(this.f.hashCode());
        this.f.setText(" 使用QQ帐号登录");
        this.f.setTextColor(-1);
        this.f.setTextSize(14.0F);
        this.f.setBackgroundDrawable(MiSelector.b((Drawable)localObject1, (Drawable)localObject2));
        this.f.setGravity(17);
        localObject1 = getResources().getDrawable(ResourceUtils.c(getContext(), "mio_login_third_account_qq_pure"));
        ((Drawable)localObject1).setBounds(MiLayout.b(65), 0, ((Drawable)localObject1).getMinimumWidth() + MiLayout.b(65), ((Drawable)localObject1).getMinimumHeight());
        this.f.setCompoundDrawables((Drawable)localObject1, null, null, null);
        this.f.setCompoundDrawablePadding(-MiLayout.b(20));
        localLinearLayout.addView(this.f, (ViewGroup.LayoutParams)localObject3);
        break;
        this.g.setText(HyUtils.g);
        this.g.setTextSize(HyUtils.i);
        this.g.setTextColor(Color.parseColor(HyUtils.h));
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\component\LoginSelectLoginAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */