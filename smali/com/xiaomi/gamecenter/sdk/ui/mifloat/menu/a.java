package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import android.content.Context;
import android.content.res.Resources;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.MiMsgEntity;
import com.xiaomi.gamecenter.sdk.utils.Downloader;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.List;

public class a
{
  private static a a;
  private Context b;
  private Downloader c;
  private int d;
  private int e;
  private MiFloatMenuInfo f;
  private MiAppEntry g;
  private MiFloatMenuWindow h;
  private MiMsgEntity i;
  
  public static a a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new a();
      }
      return a;
    }
    finally {}
  }
  
  public final void a(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    this.b = paramContext;
    this.c = new Downloader(paramContext);
    this.g = paramMiAppEntry;
    this.c.a();
  }
  
  public final void a(MiFloatMenuInfo paramMiFloatMenuInfo)
  {
    this.f = paramMiFloatMenuInfo;
  }
  
  public final void a(MiMsgEntity paramMiMsgEntity)
  {
    this.i = paramMiMsgEntity;
    for (;;)
    {
      try
      {
        if ((this.h == null) || (paramMiMsgEntity == null)) {
          return;
        }
        if (paramMiMsgEntity.isMessagePoint())
        {
          this.h.a();
          if (paramMiMsgEntity.isGiftPackPoint())
          {
            this.h.e();
            if (!paramMiMsgEntity.isGiftPoint()) {
              break;
            }
            this.h.c();
          }
        }
        else
        {
          this.h.b();
          continue;
        }
        this.h.f();
      }
      catch (Exception paramMiMsgEntity)
      {
        Logger.a("MiGameSDK.MiFloatMenuManager", "refreshRedPoint error", paramMiMsgEntity);
        return;
      }
    }
    this.h.d();
  }
  
  public final void b()
  {
    if (this.c != null) {
      this.c.b();
    }
  }
  
  public final Downloader c()
  {
    return this.c;
  }
  
  public final MiFloatMenuWindow d()
  {
    if ((this.f == null) || (this.f.a().size() == 0)) {
      return null;
    }
    this.h = new MiFloatMenuWindow(this.b, this.g);
    this.h.a(this.f);
    int j = ResourceUtils.g(this.b, "view_dimen_740");
    int m = this.b.getResources().getDimensionPixelSize(j);
    j = ResourceUtils.g(this.b, "view_dimen_454");
    int k = this.b.getResources().getDimensionPixelSize(j);
    if (this.f.a().size() > 6)
    {
      j = ResourceUtils.g(this.b, "view_dimen_954");
      j = this.b.getResources().getDimensionPixelSize(j);
    }
    for (;;)
    {
      this.d = m;
      this.e = j;
      a(this.i);
      return this.h;
      j = k;
      if (this.f.a().size() > 4)
      {
        j = k;
        if (this.f.a().size() <= 6)
        {
          j = ResourceUtils.g(this.b, "view_dimen_704");
          j = this.b.getResources().getDimensionPixelSize(j);
        }
      }
    }
  }
  
  public final int e()
  {
    return this.e;
  }
  
  public final int f()
  {
    return this.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */