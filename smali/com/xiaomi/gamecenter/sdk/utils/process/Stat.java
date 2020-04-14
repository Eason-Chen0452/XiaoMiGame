package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.IOException;

final class Stat
  extends ProcFile
{
  public static final Parcelable.Creator<Stat> CREATOR = new f();
  private final String[] a;
  
  private Stat(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.createStringArray();
  }
  
  private Stat(String paramString)
    throws IOException
  {
    super(paramString);
    this.a = this.b.split("\\s+");
  }
  
  public static Stat a(int paramInt)
    throws IOException
  {
    return new Stat(String.format("/proc/%d/stat", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public final String a()
  {
    return this.a[1].replace("(", "").replace(")", "");
  }
  
  public final int b()
  {
    return Integer.parseInt(this.a[40]);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeStringArray(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\Stat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */