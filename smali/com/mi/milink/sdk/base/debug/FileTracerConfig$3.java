package com.mi.milink.sdk.base.debug;

import java.io.File;
import java.util.Comparator;

class FileTracerConfig$3
  implements Comparator<File>
{
  FileTracerConfig$3(FileTracerConfig paramFileTracerConfig) {}
  
  public int compare(File paramFile1, File paramFile2)
  {
    return FileTracerConfig.access$000(paramFile1) - FileTracerConfig.access$000(paramFile2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracerConfig$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */