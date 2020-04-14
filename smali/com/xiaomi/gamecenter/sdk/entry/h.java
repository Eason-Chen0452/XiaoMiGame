package com.xiaomi.gamecenter.sdk.entry;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.sdk.IServiceCallback;

final class h
  implements Parcelable.Creator<MiAppEntry>
{
  private static MiAppEntry a(Parcel paramParcel)
  {
    MiAppEntry localMiAppEntry = new MiAppEntry(null);
    MiAppEntry.access$102(localMiAppEntry, paramParcel.readInt());
    MiAppEntry.access$202(localMiAppEntry, paramParcel.readString());
    MiAppEntry.access$302(localMiAppEntry, MiAppType.valueOf(paramParcel.readString()));
    MiAppEntry.access$402(localMiAppEntry, paramParcel.readString());
    MiAppEntry.access$502(localMiAppEntry, ScreenOrientation.valueOf(paramParcel.readString()));
    MiAppEntry.access$602(localMiAppEntry, Boolean.getBoolean(paramParcel.readString()));
    MiAppEntry.access$702(localMiAppEntry, PayMode.valueOf(paramParcel.readString()));
    MiAppEntry.access$802(localMiAppEntry, (MiAccountInfo)paramParcel.readParcelable(MiAppEntry.class.getClassLoader()));
    MiAppEntry.access$902(localMiAppEntry, paramParcel.readString());
    MiAppEntry.access$1002(localMiAppEntry, paramParcel.readString());
    MiAppEntry.access$1102(localMiAppEntry, paramParcel.readInt());
    MiAppEntry.access$1202(localMiAppEntry, paramParcel.readInt());
    try
    {
      IBinder localIBinder = paramParcel.readStrongBinder();
      if (localIBinder != null) {
        MiAppEntry.access$1302(localMiAppEntry, (IServiceCallback)localIBinder.queryLocalInterface("com.xiaomi.gamecenter.sdk.IServiceCallback"));
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    MiAppEntry.access$1402(localMiAppEntry, paramParcel.readInt());
    MiAppEntry.access$1502(localMiAppEntry, paramParcel.readString());
    MiAppEntry.access$1602(localMiAppEntry, DebugMode.valueOf(paramParcel.readString()));
    MiAppEntry.access$1702(localMiAppEntry, Boolean.valueOf(paramParcel.readString()).booleanValue());
    MiAppEntry.access$1802(localMiAppEntry, MiGravity.valueOf(paramParcel.readString()));
    return localMiAppEntry;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */