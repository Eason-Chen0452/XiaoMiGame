package com.mi.milink.sdk.base.debug;

import java.io.File;
import java.io.FileFilter;

final class FileTracerConfig$1
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    if (!paramFile.isDirectory()) {}
    while (FileTracerConfig.getTimeFromFolder(paramFile) <= 0L) {
      return false;
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracerConfig$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */