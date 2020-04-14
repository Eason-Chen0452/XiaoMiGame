package com.mi.milink.sdk.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ClientAppInfo$1
  implements Parcelable.Creator<ClientAppInfo>
{
  public final ClientAppInfo createFromParcel(Parcel paramParcel)
  {
    ClientAppInfo localClientAppInfo = new ClientAppInfo("");
    localClientAppInfo.readFromParcel(paramParcel);
    return localClientAppInfo;
  }
  
  public final ClientAppInfo[] newArray(int paramInt)
  {
    return new ClientAppInfo[paramInt];
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\data\ClientAppInfo$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */