package com.mi.milink.sdk.base.os.info;

import android.os.Environment;
import com.mi.milink.sdk.base.Global;

public class StorageDash
{
  public static StorageInfo getExternalInfo()
  {
    if (!hasExternalReadable()) {
      return null;
    }
    return StorageInfo.fromFile(Environment.getExternalStorageDirectory());
  }
  
  public static StorageInfo getInnerInfo()
  {
    return StorageInfo.fromFile(Global.getFilesDir());
  }
  
  public static boolean hasExternal()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }
  
  public static boolean hasExternalReadable()
  {
    String str = Environment.getExternalStorageState();
    return ("mounted".equals(str)) || ("mounted_ro".equals(str));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\StorageDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */