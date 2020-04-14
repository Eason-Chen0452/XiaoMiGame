package com.mi.milink.sdk.session.persistent;

import java.io.File;
import java.io.FilenameFilter;

final class SessionForUploadLog$UploadLogUtils$1
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".log");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionForUploadLog$UploadLogUtils$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */