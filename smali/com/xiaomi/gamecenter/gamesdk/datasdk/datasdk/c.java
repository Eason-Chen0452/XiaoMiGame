package com.xiaomi.gamecenter.gamesdk.datasdk.datasdk;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.i;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.j;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.BBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.EventBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.ItemBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.PageBean;
import java.io.File;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class c
{
  private static String a;
  private static boolean b;
  private static b c;
  private static String d;
  
  public static void a()
  {
    d = UUID.randomUUID().toString();
  }
  
  static void a(Application paramApplication)
  {
    if (!TextUtils.isEmpty(a))
    {
      i.d("DataSDK", "Don't init DataSDK again!");
      return;
    }
    for (;;)
    {
      try
      {
        com.xiaomi.gamecenter.gamesdk.datasdk.b.c.a(paramApplication);
        paramApplication = new File(paramApplication.getFilesDir(), "data_statistic");
        if (!paramApplication.exists()) {
          paramApplication.mkdirs();
        }
        String str = a;
        if (b)
        {
          paramApplication = "develop";
          i.b("DataSDK", String.format("Init SDK with fromApp : %s, environment : %s", new Object[] { str, paramApplication }));
          j.a(UUID.randomUUID().toString());
          c = new b();
          DataSender.getInstance().setSandbox(b);
          com.xiaomi.gamecenter.gamesdk.datasdk.b.c.a(new a((byte)0));
          return;
        }
      }
      catch (Exception paramApplication)
      {
        paramApplication.printStackTrace();
        return;
      }
      paramApplication = "product";
    }
  }
  
  static void a(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean, String paramString1, String paramString2, List<ItemBean> paramList)
  {
    BBean localBBean = new BBean();
    localBBean.setSessionId(j.a());
    localBBean.setTrackId(paramString2);
    localBBean.setEvent(paramString1);
    localBBean.setPage(paramPageBean);
    localBBean.setFromPage(paramConcurrentLinkedQueue);
    localBBean.setEventParam(paramEventBean);
    localBBean.setItems(paramList);
    i.b("DataSDK", String.format("DataSDK::%s Message :\n %s", new Object[] { paramString1, localBBean }));
    c.a(localBBean);
  }
  
  static void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public static String b()
  {
    return d;
  }
  
  private static final class a
    implements com.xiaomi.gamecenter.gamesdk.datasdk.b.c.a
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\datasdk\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */