package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

public class ItemBean
  extends BaseEntity
{
  private String cid;
  private String gameId;
  private String isAd = "0";
  private String pos;
  private String rid;
  private String traceId;
  
  public String getCid()
  {
    return this.cid;
  }
  
  public String getGameId()
  {
    return this.gameId;
  }
  
  public String getIsAd()
  {
    return this.isAd;
  }
  
  public String getPos()
  {
    return this.pos;
  }
  
  public String getRid()
  {
    return this.rid;
  }
  
  public String getTraceId()
  {
    return this.traceId;
  }
  
  public void setCid(String paramString)
  {
    this.cid = paramString;
  }
  
  public void setGameId(String paramString)
  {
    this.gameId = paramString;
  }
  
  public void setIsAd(String paramString)
  {
    this.isAd = paramString;
  }
  
  public void setPos(String paramString)
  {
    this.pos = paramString;
  }
  
  public void setRid(String paramString)
  {
    this.rid = paramString;
  }
  
  public void setTraceId(String paramString)
  {
    this.traceId = paramString;
  }
  
  public String toString()
  {
    return "ItemBean{gameId='" + this.gameId + '\'' + ", isAd='" + this.isAd + '\'' + ", pos='" + this.pos + '\'' + ", rid='" + this.rid + '\'' + ", traceId='" + this.traceId + '\'' + ", cid='" + this.cid + '\'' + '}';
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\ItemBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */