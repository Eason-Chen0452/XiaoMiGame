package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.File;
import java.io.IOException;

class AndroidAppProcess
  extends AndroidProcess
{
  public static final Parcelable.Creator<AndroidAppProcess> CREATOR = new a();
  private static final boolean e = new File("/dev/cpuctl/tasks").exists();
  public final boolean a;
  public final int b;
  
  public AndroidAppProcess(int paramInt)
    throws IOException, AndroidAppProcess.NotAndroidAppProcessException
  {
    super(paramInt);
    int i;
    if (e)
    {
      localObject2 = Cgroup.a(this.d);
      localObject1 = ((Cgroup)localObject2).a("cpuacct");
      localObject2 = ((Cgroup)localObject2).a("cpu");
      if (Build.VERSION.SDK_INT >= 21)
      {
        if ((localObject2 == null) || (localObject1 == null) || (!((ControlGroup)localObject1).c.contains("pid_"))) {
          throw new NotAndroidAppProcessException(paramInt);
        }
        if (!((ControlGroup)localObject2).c.contains("bg_non_interactive")) {
          bool = true;
        }
      }
      for (;;)
      {
        try
        {
          i = Integer.parseInt(localObject1.c.split("/")[1].replace("uid_", ""));
          ProcessManager.a("name=%s, pid=%d, uid=%d, foreground=%b, cpuacct=%s, cpu=%s", new Object[] { this.c, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool), ((ControlGroup)localObject1).toString(), ((ControlGroup)localObject2).toString() });
          this.a = bool;
          this.b = i;
          return;
          bool = false;
          continue;
        }
        catch (Exception localException1)
        {
          i = Status.a(this.d).a();
          continue;
        }
        if ((localObject2 == null) || (localObject1 == null) || (!((ControlGroup)localObject2).c.contains("apps"))) {
          throw new NotAndroidAppProcessException(paramInt);
        }
        if (!((ControlGroup)localObject2).c.contains("bg_non_interactive")) {
          bool = true;
        }
        try
        {
          for (;;)
          {
            i = Integer.parseInt(((ControlGroup)localObject1).c.substring(((ControlGroup)localObject1).c.lastIndexOf("/") + 1));
            ProcessManager.a("name=%s, pid=%d, uid=%d foreground=%b, cpuacct=%s, cpu=%s", new Object[] { this.c, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool), ((ControlGroup)localObject1).toString(), ((ControlGroup)localObject2).toString() });
            break;
            bool = false;
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            i = Status.a(this.d).a();
          }
        }
      }
    }
    if ((this.c.startsWith("/")) || (!new File("/data/data", this.c.split(":")[0]).exists())) {
      throw new NotAndroidAppProcessException(paramInt);
    }
    Object localObject1 = Stat.a(this.d);
    Object localObject2 = Status.a(this.d);
    if (((Stat)localObject1).b() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      i = ((Status)localObject2).a();
      ProcessManager.a("name=%s, pid=%d, uid=%d foreground=%b", new Object[] { this.c, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool) });
      break;
    }
  }
  
  protected AndroidAppProcess(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      this.b = paramParcel.readInt();
      return;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (this.a) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeInt(this.b);
      return;
    }
  }
  
  public static final class NotAndroidAppProcessException
    extends Exception
  {
    public NotAndroidAppProcessException(int paramInt)
    {
      super();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\AndroidAppProcess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */