package com.alipay.b.a.a.b;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

final class c
  implements FileFilter
{
  c(b paramb) {}
  
  public final boolean accept(File paramFile)
  {
    return Pattern.matches("cpu[0-9]+", paramFile.getName());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */