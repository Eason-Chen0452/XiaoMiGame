package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.io.IOException;

class AndroidProcess
  implements Parcelable
{
  public static final Parcelable.Creator<AndroidProcess> CREATOR = new b();
  public final String c;
  public final int d;
  
  public AndroidProcess(int paramInt)
    throws IOException
  {
    this.d = paramInt;
    this.c = a(paramInt);
  }
  
  protected AndroidProcess(Parcel paramParcel)
  {
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
  }
  
  private static String a(int paramInt)
    throws IOException
  {
    Object localObject1 = null;
    try
    {
      localObject2 = ProcFile.b(String.format("/proc/%d/cmdline", new Object[] { Integer.valueOf(paramInt) })).trim();
      localObject1 = localObject2;
    }
    catch (IOException localIOException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject2 = Stat.a(paramInt).a();
    }
    return (String)localObject2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\AndroidProcess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */