package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.IOException;

final class Status
  extends ProcFile
{
  public static final Parcelable.Creator<Status> CREATOR = new h();
  
  private Status(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  private Status(String paramString)
    throws IOException
  {
    super(paramString);
  }
  
  public static Status a(int paramInt)
    throws IOException
  {
    return new Status(String.format("/proc/%d/status", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public final int a()
  {
    int i = 0;
    try
    {
      Object localObject1 = this.b.split("\n");
      int j = localObject1.length;
      Object localObject2;
      if (i < j)
      {
        localObject2 = localObject1[i];
        if (!((String)localObject2).startsWith("Uid" + ":")) {}
      }
      for (localObject1 = localObject2.split("Uid" + ":")[1].trim();; localObject1 = null)
      {
        i = Integer.parseInt(localObject1.split("\\s+")[0]);
        return i;
        i += 1;
        break;
      }
      return -1;
    }
    catch (Exception localException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\Status.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */