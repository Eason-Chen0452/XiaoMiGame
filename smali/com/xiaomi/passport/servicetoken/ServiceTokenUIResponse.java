package com.xiaomi.passport.servicetoken;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ServiceTokenUIResponse
  implements Parcelable
{
  public static final Parcelable.Creator<ServiceTokenUIResponse> CREATOR = new c();
  private IServiceTokenUIResponse a;
  
  public ServiceTokenUIResponse(Parcel paramParcel)
  {
    this.a = IServiceTokenUIResponse.Stub.asInterface(paramParcel.readStrongBinder());
  }
  
  public ServiceTokenUIResponse(IServiceTokenUIResponse paramIServiceTokenUIResponse)
  {
    this.a = paramIServiceTokenUIResponse;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(this.a.asBinder());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\ServiceTokenUIResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */