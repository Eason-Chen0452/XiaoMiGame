package cn.com.wali.basetool.utils;

import java.io.File;

public final class FileUtils
{
  public static void a(String paramString)
  {
    String[] arrayOfString = new File(paramString, "").list();
    if (arrayOfString != null)
    {
      int i = 0;
      while (i < arrayOfString.length)
      {
        new File(paramString, arrayOfString[i]).delete();
        i += 1;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\utils\FileUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */