package com.mi.milink.sdk.aidl;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PacketData$1
  implements Parcelable.Creator<PacketData>
{
  public final PacketData createFromParcel(Parcel paramParcel)
  {
    return new PacketData(paramParcel, null);
  }
  
  public final PacketData[] newArray(int paramInt)
  {
    return new PacketData[paramInt];
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\aidl\PacketData$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */