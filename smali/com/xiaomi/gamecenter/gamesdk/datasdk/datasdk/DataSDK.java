package com.xiaomi.gamecenter.gamesdk.datasdk.datasdk;

import android.app.Application;
import android.content.Context;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.b;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.i;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.EventBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.HBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.ItemBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.PageBean;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

public class DataSDK
{
  private static HBean hBean = new HBean();
  
  public static void eventBack(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_BACK", c.b(), null);
  }
  
  public static void eventBack(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean, List<ItemBean> paramList)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_BACK", c.b(), paramList);
  }
  
  public static void eventClick(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_CLICK", c.b(), null);
  }
  
  public static void eventClick(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean, List<ItemBean> paramList)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_CLICK", c.b(), paramList);
  }
  
  public static void eventTrigger(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean, String paramString1, String paramString2, List<ItemBean> paramList)
  {
    c.a(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, paramString1, paramString2, paramList);
  }
  
  public static void eventView(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_VIEW", c.b(), null);
  }
  
  public static void eventView(PageBean paramPageBean, ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue, EventBean paramEventBean, List<ItemBean> paramList)
  {
    eventTrigger(paramPageBean, paramConcurrentLinkedQueue, paramEventBean, "EVENT_VIEW", c.b(), paramList);
  }
  
  public static HBean getHeader()
  {
    return hBean;
  }
  
  public static void initDataSDK(Application paramApplication, HBean paramHBean)
  {
    b.a(paramApplication);
    if (paramHBean != null) {
      hBean = paramHBean;
    }
    if (hBean != null)
    {
      hBean.setOaid(b.r);
      hBean.setUdid(b.q);
    }
    c.a(paramApplication);
  }
  
  public static void initHeader(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (hBean == null) {
      hBean = new HBean();
    }
    hBean.init(paramContext, paramString1, paramString2, paramString3);
  }
  
  public static void setLogEnabled(boolean paramBoolean)
  {
    i.a(paramBoolean);
  }
  
  public static void setSandboxEnabled(boolean paramBoolean)
  {
    c.a(paramBoolean);
  }
  
  public static void updataTraceId() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\datasdk\DataSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */