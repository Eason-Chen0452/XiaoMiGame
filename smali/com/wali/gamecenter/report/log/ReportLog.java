package com.wali.gamecenter.report.log;

import android.content.Context;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.Date;
import java.util.Locale;

public class ReportLog
  implements ILogAppender
{
  public static final int MAX_FILE_SIZE = 52428800;
  private FileWriter logfile;
  private File mFile = null;
  private BufferedWriter writer;
  
  public ReportLog(Context paramContext, String paramString)
  {
    try
    {
      this.mFile = new File(paramContext.getFilesDir(), paramString);
      this.logfile = new FileWriter(this.mFile.getAbsolutePath(), true);
      this.writer = new BufferedWriter(this.logfile, 1024);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void appendLog(ReportLog.LOG_LEVEL paramLOG_LEVEL, String paramString1, String paramString2, Throwable paramThrowable)
  {
    try
    {
      Object localObject = this.logfile;
      if (localObject == null) {
        return;
      }
      if (paramString2 == null) {
        paramString2 = "";
      }
      for (;;)
      {
        localObject = paramString2;
        if (paramThrowable != null) {}
        try
        {
          localObject = paramString2 + "\n" + Log.getStackTraceString(paramThrowable);
          paramString2 = new Date();
          paramString1 = String.format(Locale.US, "%1$tY/%1$tm/%1$td %1$tH:%1$tM [%2$-5s]-[%3$s] %4$s\r\n", new Object[] { paramString2, paramLOG_LEVEL.toString(), paramString1, localObject });
          this.writer.append(paramString1);
          if ((paramLOG_LEVEL != ReportLog.LOG_LEVEL.ERROR) && (paramLOG_LEVEL != ReportLog.LOG_LEVEL.DEBUG)) {
            break;
          }
          this.writer.flush();
        }
        catch (Throwable paramLOG_LEVEL)
        {
          paramLOG_LEVEL.printStackTrace();
        }
        break;
      }
    }
    finally {}
  }
  
  public void close()
  {
    this.mFile = null;
    if (this.logfile != null) {}
    try
    {
      this.writer.close();
      try
      {
        this.logfile.close();
        this.logfile = null;
        this.writer = null;
        return;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          localException1.printStackTrace();
        }
      }
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
  
  public void debug(String paramString1, String paramString2)
  {
    appendLog(ReportLog.LOG_LEVEL.DEBUG, paramString1, paramString2, null);
  }
  
  public void error(String paramString1, String paramString2, Throwable paramThrowable)
  {
    appendLog(ReportLog.LOG_LEVEL.ERROR, paramString1, paramString2, paramThrowable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\log\ReportLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */