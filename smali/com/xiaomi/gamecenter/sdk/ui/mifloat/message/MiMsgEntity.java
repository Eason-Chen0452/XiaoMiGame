package com.xiaomi.gamecenter.sdk.ui.mifloat.message;

public class MiMsgEntity
{
  private boolean giftPackPoint;
  private boolean giftPoint;
  private MarqueeMsg marqueeMsg;
  private boolean messagePoint;
  private boolean mifloatPoint;
  
  public MarqueeMsg getMarqueeMsg()
  {
    return this.marqueeMsg;
  }
  
  public boolean isGiftPackPoint()
  {
    return this.giftPackPoint;
  }
  
  public boolean isGiftPoint()
  {
    return this.giftPoint;
  }
  
  public boolean isMessagePoint()
  {
    return this.messagePoint;
  }
  
  public boolean isMifloatPoint()
  {
    return this.mifloatPoint;
  }
  
  public void setGiftPackPoint(boolean paramBoolean)
  {
    this.giftPackPoint = paramBoolean;
  }
  
  public void setGiftPoint(boolean paramBoolean)
  {
    this.giftPoint = paramBoolean;
  }
  
  public void setMarqueeMsg(MarqueeMsg paramMarqueeMsg)
  {
    this.marqueeMsg = paramMarqueeMsg;
  }
  
  public void setMessagePoint(boolean paramBoolean)
  {
    this.messagePoint = paramBoolean;
  }
  
  public void setMifloatPoint(boolean paramBoolean)
  {
    this.mifloatPoint = paramBoolean;
  }
  
  public String toString()
  {
    return "MiMsgEntity{mifloatPoint=" + this.mifloatPoint + ", giftPoint=" + this.giftPoint + ", giftPackPoint=" + this.giftPackPoint + ", messagePoint=" + this.messagePoint + ", marqueeMsg=" + this.marqueeMsg + '}';
  }
  
  public static class MarqueeMsg
  {
    private String color;
    private boolean hideIcon;
    private String icon;
    private String id;
    private String notice;
    private int time;
    private String url;
    
    public String getColor()
    {
      return this.color;
    }
    
    public String getIcon()
    {
      return this.icon;
    }
    
    public String getId()
    {
      return this.id;
    }
    
    public String getNotice()
    {
      return this.notice;
    }
    
    public int getTime()
    {
      return this.time;
    }
    
    public String getUrl()
    {
      return this.url;
    }
    
    public boolean isHideIcon()
    {
      return this.hideIcon;
    }
    
    public void setColor(String paramString)
    {
      this.color = paramString;
    }
    
    public void setHideIcon(boolean paramBoolean)
    {
      this.hideIcon = paramBoolean;
    }
    
    public void setIcon(String paramString)
    {
      this.icon = paramString;
    }
    
    public void setId(String paramString)
    {
      this.id = paramString;
    }
    
    public void setNotice(String paramString)
    {
      this.notice = paramString;
    }
    
    public void setTime(int paramInt)
    {
      this.time = paramInt;
    }
    
    public void setUrl(String paramString)
    {
      this.url = paramString;
    }
    
    public String toString()
    {
      return "MarqueeMsg{color='" + this.color + '\'' + ", icon='" + this.icon + '\'' + ", id='" + this.id + '\'' + ", notice='" + this.notice + '\'' + ", time=" + this.time + ", url='" + this.url + '\'' + ", hideIcon=" + this.hideIcon + '}';
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\message\MiMsgEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */