package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

public class BBean
  extends BaseEntity
{
  private String event;
  private EventBean eventParam;
  private ConcurrentLinkedQueue<PageBean> fromPage;
  private List<ItemBean> items;
  private PageBean page;
  private String sessionId;
  private String trackId;
  
  public String getEvent()
  {
    return this.event;
  }
  
  public EventBean getEventParam()
  {
    return this.eventParam;
  }
  
  public ConcurrentLinkedQueue<PageBean> getFromPage()
  {
    return this.fromPage;
  }
  
  public List<ItemBean> getItems()
  {
    return this.items;
  }
  
  public PageBean getPage()
  {
    return this.page;
  }
  
  public String getSessionId()
  {
    return this.sessionId;
  }
  
  public String getTrackId()
  {
    return this.trackId;
  }
  
  public void setEvent(String paramString)
  {
    this.event = paramString;
  }
  
  public void setEventParam(EventBean paramEventBean)
  {
    this.eventParam = paramEventBean;
  }
  
  public void setFromPage(ConcurrentLinkedQueue<PageBean> paramConcurrentLinkedQueue)
  {
    this.fromPage = paramConcurrentLinkedQueue;
  }
  
  public void setItems(List<ItemBean> paramList)
  {
    this.items = paramList;
  }
  
  public void setPage(PageBean paramPageBean)
  {
    this.page = paramPageBean;
  }
  
  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }
  
  public void setTrackId(String paramString)
  {
    this.trackId = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\BBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */