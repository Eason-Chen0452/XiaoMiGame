package com.xiaomi.accountsdk.utils;

import java.io.IOException;
import java.io.Reader;

public final class IOUtils
{
  public static void a(Reader paramReader)
  {
    try
    {
      paramReader.close();
      return;
    }
    catch (IOException paramReader) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\IOUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */