package com.xiaomi.gamecenter.sdk.utils.process;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

class ProcFile
  extends File
  implements Parcelable
{
  public static final Parcelable.Creator<ProcFile> CREATOR = new e();
  public final String b;
  
  protected ProcFile(Parcel paramParcel)
  {
    super(paramParcel.readString());
    this.b = paramParcel.readString();
  }
  
  protected ProcFile(String paramString)
    throws IOException
  {
    super(paramString);
    this.b = b(paramString);
  }
  
  protected static String b(String paramString)
    throws IOException
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localBufferedReader = new BufferedReader(new FileReader(paramString));
      if (localObject == null) {
        break label79;
      }
    }
    finally
    {
      try
      {
        localObject = localBufferedReader.readLine();
        paramString = "";
        while (localObject != null)
        {
          localStringBuilder.append(paramString).append((String)localObject);
          paramString = "\n";
          localObject = localBufferedReader.readLine();
        }
        paramString = localStringBuilder.toString();
        localBufferedReader.close();
        return paramString;
      }
      finally
      {
        for (;;)
        {
          BufferedReader localBufferedReader;
          Object localObject = localBufferedReader;
        }
      }
      paramString = finally;
      localObject = null;
    }
    ((BufferedReader)localObject).close();
    label79:
    throw paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long length()
  {
    return this.b.length();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getAbsolutePath());
    paramParcel.writeString(this.b);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\ProcFile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */