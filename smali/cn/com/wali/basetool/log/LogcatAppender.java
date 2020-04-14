package cn.com.wali.basetool.log;

import android.util.Log;

public class LogcatAppender
  implements a
{
  public final void a(String paramString1, String paramString2)
  {
    Log.i(paramString1, paramString2);
  }
  
  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramThrowable != null)
    {
      Log.e(paramString1, paramString2, paramThrowable);
      return;
    }
    Log.e(paramString1, paramString2);
  }
  
  public final void b(String paramString1, String paramString2)
  {
    Log.d(paramString1, paramString2);
  }
  
  public final void c(String paramString1, String paramString2)
  {
    Log.w(paramString1, paramString2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\log\LogcatAppender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */