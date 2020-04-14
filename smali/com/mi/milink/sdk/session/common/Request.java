package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.config.ConfigManager;

public class Request
{
  private AfterHandleCallBack afterHandleCallBack = null;
  private long createdTime;
  private PacketData data;
  private byte encodeType = 0;
  private boolean hasCallback = false;
  private boolean hasRetry = false;
  private boolean isInternal = false;
  private boolean isPing = false;
  private ResponseListener listener;
  private int mHandleSessionNO = 0;
  private IAccount ownerAccount;
  private int retryCount = 0;
  private long sentTime = 0L;
  private int size = 0;
  private int timeOut = ConfigManager.getInstance().getRequestTimeout();
  
  public Request(PacketData paramPacketData, ResponseListener paramResponseListener, byte paramByte, IAccount paramIAccount)
  {
    this.data = paramPacketData;
    this.listener = paramResponseListener;
    this.createdTime = System.currentTimeMillis();
    this.encodeType = paramByte;
    this.ownerAccount = paramIAccount;
  }
  
  public void addRetryCount()
  {
    this.retryCount += 1;
  }
  
  public boolean canRetry()
  {
    return (!this.isInternal) && (this.data.needRetry()) && (!this.hasRetry) && (!this.hasCallback);
  }
  
  public AfterHandleCallBack getAfterHandleCallBack()
  {
    return this.afterHandleCallBack;
  }
  
  public long getCreatedTime()
  {
    return this.createdTime;
  }
  
  public PacketData getData()
  {
    return this.data;
  }
  
  public IAccount getOwnerAccount()
  {
    return this.ownerAccount;
  }
  
  public int getRetryCount()
  {
    return this.retryCount;
  }
  
  public long getSentTime()
  {
    return this.sentTime;
  }
  
  public int getSeqNo()
  {
    return this.data.getSeqNo();
  }
  
  public int getSize()
  {
    return this.size;
  }
  
  public int getTimeOut()
  {
    return this.timeOut;
  }
  
  public int getValidTime()
  {
    return this.data.getValidTime();
  }
  
  public boolean hasListenter()
  {
    return this.listener != null;
  }
  
  public boolean isInternalRequest()
  {
    return this.isInternal;
  }
  
  public boolean isPingRequest()
  {
    return this.isPing;
  }
  
  public boolean isTimeout()
  {
    return (float)(System.currentTimeMillis() - this.sentTime) > this.timeOut * ConfigManager.getInstance().getTimeoutMultiply();
  }
  
  public boolean isValidNow()
  {
    return System.currentTimeMillis() - this.createdTime < getValidTime();
  }
  
  public boolean onDataSendFailed(int paramInt, String paramString)
  {
    boolean bool = true;
    if (this.listener == null) {
      bool = false;
    }
    while (this.hasCallback) {
      return bool;
    }
    this.listener.onDataSendFailed(paramInt, paramString);
    this.hasCallback = true;
    return true;
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (this.listener == null) {}
    while (this.hasCallback) {
      return;
    }
    this.listener.onDataSendSuccess(paramInt, paramPacketData);
    this.hasCallback = true;
  }
  
  public boolean requestShouldCached()
  {
    return this.data.needCached();
  }
  
  public void setAfterHandleCallBack(AfterHandleCallBack paramAfterHandleCallBack)
  {
    this.afterHandleCallBack = paramAfterHandleCallBack;
  }
  
  public void setHandleSessionNO(int paramInt)
  {
    this.mHandleSessionNO = paramInt;
  }
  
  public void setHasRetry()
  {
    this.hasRetry = true;
  }
  
  public void setInternal(boolean paramBoolean)
  {
    this.isInternal = paramBoolean;
  }
  
  public void setPing(boolean paramBoolean)
  {
    this.isPing = paramBoolean;
  }
  
  public void setSentTime(long paramLong)
  {
    this.sentTime = paramLong;
  }
  
  public void setTimeOut(int paramInt)
  {
    if ((paramInt > 0) && (this.data.needRetry())) {
      this.timeOut = (paramInt / 2);
    }
  }
  
  public byte[] toBytes()
  {
    byte[] arrayOfByte = StreamUtil.toUpBytes(String.format("[No:%d]", new Object[] { Integer.valueOf(this.mHandleSessionNO) }), this.data, this.isPing, this.encodeType, this.ownerAccount);
    if (arrayOfByte != null) {
      this.size = arrayOfByte.length;
    }
    return arrayOfByte;
  }
  
  public static abstract interface AfterHandleCallBack
  {
    public abstract void onCallBack(String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString3, String paramString4);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\Request.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */