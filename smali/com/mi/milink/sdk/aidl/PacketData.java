package com.mi.milink.sdk.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.mi.milink.sdk.util.DataUtils;

public class PacketData
  implements Parcelable
{
  public static final Parcelable.Creator<PacketData> CREATOR = new PacketData.1();
  protected int mBusiCode;
  protected String mCommand;
  protected byte[] mData;
  protected boolean mHasClientInfo = false;
  protected boolean mIsPushPacket = false;
  protected int mMnsCode;
  protected String mMnsErrorMsg;
  protected boolean mNeedCached = true;
  protected boolean mNeedClientInfo = true;
  protected boolean mNeedResponse = true;
  protected boolean mNeedRetry = true;
  private int mResponseSize;
  private int mSeqNo;
  protected int mValidTime = 60000;
  
  public PacketData() {}
  
  private PacketData(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getBusiCode()
  {
    return this.mBusiCode;
  }
  
  public String getCommand()
  {
    return this.mCommand;
  }
  
  public byte[] getData()
  {
    return this.mData;
  }
  
  public int getMnsCode()
  {
    return this.mMnsCode;
  }
  
  public String getMnsErrorMsg()
  {
    return this.mMnsErrorMsg;
  }
  
  public int getResponseSize()
  {
    return this.mResponseSize;
  }
  
  public int getSeqNo()
  {
    return this.mSeqNo;
  }
  
  public int getValidTime()
  {
    return this.mValidTime;
  }
  
  public boolean hasClientInfo()
  {
    return this.mHasClientInfo;
  }
  
  public boolean isPingPacket()
  {
    return "milink.ping".equals(this.mCommand);
  }
  
  public boolean isPushPacket()
  {
    return this.mIsPushPacket;
  }
  
  public boolean needCached()
  {
    return this.mNeedCached;
  }
  
  public boolean needClientInfo()
  {
    return this.mNeedClientInfo;
  }
  
  public boolean needResponse()
  {
    return this.mNeedResponse;
  }
  
  public boolean needRetry()
  {
    return this.mNeedRetry;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    boolean bool2 = true;
    this.mData = DataUtils.readParcelBytes(paramParcel);
    this.mSeqNo = paramParcel.readInt();
    this.mCommand = paramParcel.readString();
    this.mMnsCode = paramParcel.readInt();
    this.mBusiCode = paramParcel.readInt();
    this.mMnsErrorMsg = paramParcel.readString();
    if (paramParcel.readByte() == 1)
    {
      bool1 = true;
      this.mIsPushPacket = bool1;
      if (paramParcel.readByte() != 1) {
        break label109;
      }
      bool1 = true;
      label75:
      this.mNeedResponse = bool1;
      if (paramParcel.readByte() != 1) {
        break label114;
      }
    }
    label109:
    label114:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.mNeedCached = bool1;
      this.mValidTime = paramParcel.readInt();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label75;
    }
  }
  
  public void setBusiCode(int paramInt)
  {
    this.mBusiCode = paramInt;
  }
  
  public void setCommand(String paramString)
  {
    this.mCommand = paramString;
  }
  
  public void setData(byte[] paramArrayOfByte)
  {
    this.mData = paramArrayOfByte;
  }
  
  public void setHasClientInfo(boolean paramBoolean)
  {
    this.mHasClientInfo = paramBoolean;
  }
  
  public void setIsPushPacket(boolean paramBoolean)
  {
    this.mIsPushPacket = paramBoolean;
  }
  
  public void setMnsCode(int paramInt)
  {
    this.mMnsCode = paramInt;
  }
  
  public void setMnsErrorMsg(String paramString)
  {
    this.mMnsErrorMsg = paramString;
  }
  
  public void setNeedCached(boolean paramBoolean)
  {
    this.mNeedCached = paramBoolean;
  }
  
  public void setNeedClientInfo(boolean paramBoolean)
  {
    this.mNeedClientInfo = paramBoolean;
  }
  
  public void setNeedNeedRetry(boolean paramBoolean)
  {
    this.mNeedRetry = paramBoolean;
  }
  
  public void setNeedResponse(boolean paramBoolean)
  {
    this.mNeedResponse = paramBoolean;
  }
  
  public void setResponseSize(int paramInt)
  {
    this.mResponseSize = paramInt;
  }
  
  public void setSeqNo(int paramInt)
  {
    this.mSeqNo = paramInt;
  }
  
  public void setValidTime(int paramInt)
  {
    this.mValidTime = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    DataUtils.writeParcelBytes(paramParcel, this.mData);
    paramParcel.writeInt(this.mSeqNo);
    paramParcel.writeString(this.mCommand);
    paramParcel.writeInt(this.mMnsCode);
    paramParcel.writeInt(this.mBusiCode);
    paramParcel.writeString(this.mMnsErrorMsg);
    if (this.mIsPushPacket)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      if (!this.mNeedResponse) {
        break label109;
      }
      paramInt = 1;
      label74:
      paramParcel.writeByte((byte)paramInt);
      if (!this.mNeedCached) {
        break label114;
      }
    }
    label109:
    label114:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeInt(this.mValidTime);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label74;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\PacketData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */