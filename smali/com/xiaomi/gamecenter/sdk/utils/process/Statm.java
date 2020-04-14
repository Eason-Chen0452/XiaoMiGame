package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Statm
  extends ProcFile
{
  public static final Parcelable.Creator<Statm> CREATOR = new g();
  public final String[] a;
  
  private Statm(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.createStringArray();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeStringArray(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\Statm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */