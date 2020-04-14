package com.xiaomi.gamecenter.sdk.entry;

public class RefreshVipEvent
{
  private long id;
  private boolean isService;
  
  public RefreshVipEvent(long paramLong, boolean paramBoolean)
  {
    this.id = paramLong;
    this.isService = paramBoolean;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public boolean isService()
  {
    return this.isService;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\RefreshVipEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */