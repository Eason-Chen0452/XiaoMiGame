package com.mi.milink.sdk.session.common;

public abstract class ServerData
{
  private long mTimeStamp = 0L;
  
  public long getTimeStamp()
  {
    return this.mTimeStamp;
  }
  
  public void setTimeStamp(long paramLong)
  {
    this.mTimeStamp = paramLong;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\ServerData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */