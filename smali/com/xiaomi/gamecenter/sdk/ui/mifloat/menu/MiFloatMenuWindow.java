package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Space;
import android.widget.TextView;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.android.support.v7.widget.RecyclerView;
import com.xiaomi.gamecenter.sdk.SDKAccountUtil;
import com.xiaomi.gamecenter.sdk.a;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.RefreshVipEvent;
import com.xiaomi.gamecenter.sdk.entry.UserLevelAndVipInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkAccount;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoadCallback;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoader;
import com.xiaomi.gamecenter.sdk.ui.widget.recyclerview.BaseRecyclerAdapter;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoRsp;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserRsp;

public class MiFloatMenuWindow
  extends RelativeLayout
  implements View.OnClickListener
{
  private ImageView a;
  private TextView b;
  private ImageView c;
  private TextView d;
  private View e;
  private RecyclerView f;
  private MiFloatMenuAdapter g;
  private MiFloatMenuGridLayoutManager h;
  private MiFloatMenuItemDecoration i;
  private ImageLoadCallback j;
  private MiAppEntry k;
  private a l;
  private ImageView m;
  private ImageView n;
  private Space o;
  
  public MiFloatMenuWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g();
  }
  
  public MiFloatMenuWindow(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    super(paramContext);
    this.k = paramMiAppEntry;
    g();
  }
  
  private void a(boolean paramBoolean)
  {
    if (this.g == null) {}
    for (;;)
    {
      return;
      List localList = this.g.d();
      if ((localList != null) && (localList.size() != 0))
      {
        int i1 = 0;
        while (i1 < localList.size())
        {
          MiFloatMenuItemInfo localMiFloatMenuItemInfo = (MiFloatMenuItemInfo)localList.get(i1);
          if ((localMiFloatMenuItemInfo != null) && (localMiFloatMenuItemInfo.d() == 3))
          {
            localMiFloatMenuItemInfo.a(paramBoolean);
            this.g.b(i1);
            return;
          }
          i1 += 1;
        }
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (this.g == null) {}
    for (;;)
    {
      return;
      List localList = this.g.d();
      if ((localList != null) && (localList.size() != 0))
      {
        int i1 = 0;
        while (i1 < localList.size())
        {
          MiFloatMenuItemInfo localMiFloatMenuItemInfo = (MiFloatMenuItemInfo)localList.get(i1);
          if ((localMiFloatMenuItemInfo != null) && (localMiFloatMenuItemInfo.d() == 2))
          {
            localMiFloatMenuItemInfo.a(paramBoolean);
            this.g.b(i1);
            return;
          }
          i1 += 1;
        }
      }
    }
  }
  
  private void g()
  {
    this.l = a.a();
    int i1 = ResourceUtils.f(getContext(), "mifloat_menu_layout");
    LayoutInflater.from(getContext()).inflate(i1, this);
    this.a = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_userav")));
    this.b = ((TextView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_username")));
    this.o = ((Space)findViewById(ResourceUtils.d(getContext(), "mifloat_name_top_margin")));
    this.c = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_redpoint")));
    this.m = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_member")));
    this.n = ((ImageView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_vip")));
    this.d = ((TextView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_vip_tips")));
    this.e = findViewById(ResourceUtils.d(getContext(), "mifloat_menu_title_parent"));
    this.f = ((RecyclerView)findViewById(ResourceUtils.d(getContext(), "mifloat_menu_recyclerview")));
    this.h = new MiFloatMenuGridLayoutManager(getContext(), 4);
    this.h.A();
    this.g = new MiFloatMenuAdapter(getContext(), this.k);
    this.f.a(this.g);
    this.f.a(this.h);
    this.i = new MiFloatMenuItemDecoration(getContext());
    this.f.a(this.i);
    this.e.setOnClickListener(this);
    this.g.a(new b(this));
    Object localObject4 = k.b().e();
    Object localObject1 = k.b().f();
    Object localObject2;
    label524:
    int i2;
    if (this.k != null)
    {
      if (this.j == null) {
        this.j = new ImageLoadCallback(this.a);
      }
      localObject3 = localObject1;
      localObject2 = localObject4;
      if (k.b().d() == null)
      {
        MilinkAccount localMilinkAccount = MilinkAccount.a(this.k.getAppId());
        localObject3 = localObject1;
        localObject2 = localObject4;
        if (localMilinkAccount != null)
        {
          if (!TextUtils.isEmpty(localMilinkAccount.c())) {
            localObject1 = localMilinkAccount.c();
          }
          localObject3 = localObject1;
          localObject2 = localObject4;
          if (!TextUtils.isEmpty(localMilinkAccount.d()))
          {
            localObject2 = localMilinkAccount.d();
            localObject3 = localObject1;
          }
        }
      }
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject1 = k.b().j();
        if (localObject1 != null)
        {
          localObject1 = ((MilinkAccountProps)localObject1).d();
          if (!TextUtils.isEmpty((CharSequence)localObject2)) {
            break label802;
          }
          localObject3 = k.b().j();
          if (localObject3 == null) {
            break label802;
          }
          localObject2 = ((MilinkAccountProps)localObject3).c();
          if (!TextUtils.isEmpty((CharSequence)localObject1)) {
            this.b.setText((CharSequence)localObject1);
          }
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            i1 = ResourceUtils.g(getContext(), "view_dimen_96");
            i2 = ResourceUtils.c(getContext(), "game_icon");
            this.a.setImageResource(i2);
            PackgeInfoHelper.a();
            localObject3 = PackgeInfoHelper.a(this.k.getAppId());
            if (AccountType.AccountType_QQ != localObject3) {
              break label756;
            }
            ImageLoader.b(getContext(), this.a, Image.get((String)localObject2), i2, this.j, getResources().getDimensionPixelOffset(i1), getResources().getDimensionPixelOffset(i1));
          }
          label640:
          localObject3 = localObject1;
          localObject4 = localObject2;
          if (this.l != null)
          {
            boolean bool = this.l.b("pref_key_vip_tips_show");
            localObject3 = this.d;
            if (!bool) {
              break label796;
            }
            i1 = 0;
            label678:
            ((TextView)localObject3).setVisibility(i1);
            localObject4 = localObject2;
          }
        }
      }
    }
    for (Object localObject3 = localObject1;; localObject3 = localObject1)
    {
      Logger.c("MiGameSDK.MiFloatMenuWindow", "headImgUrl " + (String)localObject4);
      Logger.c("MiGameSDK.MiFloatMenuWindow", "nickName " + (String)localObject3);
      return;
      localObject1 = ResourceUtils.a(getContext(), "mifloat_default_nick_name");
      break;
      label756:
      ImageLoader.a(getContext(), this.a, Image.get((String)localObject2), i2, this.j, getResources().getDimensionPixelOffset(i1), getResources().getDimensionPixelOffset(i1));
      break label640;
      label796:
      i1 = 8;
      break label678;
      label802:
      break label524;
      localObject1 = localObject3;
      break;
    }
  }
  
  private void h()
  {
    Logger.d("showVipAndMemberIcon");
    Object localObject1 = k.b().k();
    if ((this.n == null) || (this.m == null))
    {
      Logger.d("view is null , return");
      return;
    }
    if ((localObject1 == null) || (((UserLevelAndVipInfo)localObject1).getId() != SDKAccountUtil.a()))
    {
      Logger.d("no vip info cached or user changed");
      this.n.setVisibility(8);
      this.m.setVisibility(8);
      this.o.setVisibility(8);
      return;
    }
    Object localObject2 = ((UserLevelAndVipInfo)localObject1).getVipLevelInfo();
    if ((localObject2 != null) && (((VipProtos.GetUserLevelInfoRsp)localObject2).getLevel() > 0))
    {
      localObject2 = ((VipProtos.GetUserLevelInfoRsp)localObject2).getLevelNickIcon();
      i1 = ResourceUtils.g(getContext(), "view_dimen_118");
      int i2 = ResourceUtils.g(getContext(), "view_dimen_38");
      int i3 = ResourceUtils.c(getContext(), "vip_default_icon");
      ImageLoader.a(getContext(), this.n, Image.get((String)localObject2), i3, null, getResources().getDimensionPixelOffset(i1), getResources().getDimensionPixelOffset(i2));
      this.n.setVisibility(0);
    }
    for (;;)
    {
      localObject1 = ((UserLevelAndVipInfo)localObject1).getMemInfo();
      if (localObject1 == null) {
        break;
      }
      i1 = ResourceUtils.c(getContext(), "mio_game_member");
      switch (((VipProtos.QueryVipUserRsp)localObject1).getValidateStatus())
      {
      default: 
        this.m.setVisibility(8);
        i();
        return;
        this.n.setVisibility(8);
      }
    }
    int i1 = ResourceUtils.c(getContext(), "mio_game_vip_lost_icon");
    this.m.setImageResource(i1);
    this.m.setVisibility(0);
    for (;;)
    {
      i();
      return;
      this.m.setVisibility(8);
    }
  }
  
  private void i()
  {
    if ((this.n.getVisibility() != 8) && (this.m.getVisibility() != 8))
    {
      this.o.setVisibility(8);
      return;
    }
    this.o.setVisibility(0);
  }
  
  public final void a()
  {
    this.c.setVisibility(0);
  }
  
  public final void a(MiFloatMenuInfo paramMiFloatMenuInfo)
  {
    if (paramMiFloatMenuInfo == null) {}
    do
    {
      return;
      paramMiFloatMenuInfo = paramMiFloatMenuInfo.a();
    } while ((paramMiFloatMenuInfo == null) || (paramMiFloatMenuInfo.size() == 0));
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.f.getLayoutParams();
    int i1;
    if (paramMiFloatMenuInfo.size() == 4)
    {
      i1 = ResourceUtils.g(getContext(), "view_dimen_10");
      localLayoutParams.leftMargin = getResources().getDimensionPixelOffset(i1);
      i1 = ResourceUtils.g(getContext(), "view_dimen_10");
      localLayoutParams.rightMargin = getResources().getDimensionPixelOffset(i1);
      this.h.a(4);
      this.i.a(true);
    }
    for (;;)
    {
      this.i.a(paramMiFloatMenuInfo.size());
      this.g.e();
      this.g.a(paramMiFloatMenuInfo.toArray());
      h();
      return;
      i1 = ResourceUtils.g(getContext(), "view_dimen_40");
      localLayoutParams.leftMargin = getResources().getDimensionPixelOffset(i1);
      i1 = ResourceUtils.g(getContext(), "view_dimen_40");
      localLayoutParams.rightMargin = getResources().getDimensionPixelOffset(i1);
      this.h.a(3);
      this.i.a(false);
    }
  }
  
  public final void b()
  {
    this.c.setVisibility(8);
  }
  
  public final void c()
  {
    a(true);
  }
  
  public final void d()
  {
    a(false);
  }
  
  public final void e()
  {
    b(true);
  }
  
  public final void f()
  {
    b(false);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    EventBus.getDefault().register(this);
  }
  
  public void onClick(View paramView)
  {
    int i1 = ResourceUtils.d(getContext(), "mifloat_menu_title_parent");
    if ((paramView.getId() != i1) || (this.k == null)) {
      return;
    }
    if (com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(getContext(), "miservicesdk://mifloat_userinfo", "更多"))
    {
      if (this.l != null)
      {
        this.l.c("pref_key_vip_tips_show");
        this.l.b();
      }
      this.d.setVisibility(8);
    }
    MiFloatDataReport.c();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    EventBus.getDefault().unregister(this);
  }
  
  @Subscribe(threadMode=ThreadMode.MAIN)
  public void onRefreshVipEvent(RefreshVipEvent paramRefreshVipEvent)
  {
    h();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuWindow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */