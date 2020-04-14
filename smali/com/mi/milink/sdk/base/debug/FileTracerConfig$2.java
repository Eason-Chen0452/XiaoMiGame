package com.mi.milink.sdk.base.debug;

import java.io.File;
import java.io.FileFilter;

class FileTracerConfig$2
  implements FileFilter
{
  FileTracerConfig$2(FileTracerConfig paramFileTracerConfig) {}
  
  public boolean accept(File paramFile)
  {
    if (!paramFile.getName().endsWith(this.this$0.getFileExt())) {}
    while (FileTracerConfig.access$000(paramFile) == -1) {
      return false;
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracerConfig$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */