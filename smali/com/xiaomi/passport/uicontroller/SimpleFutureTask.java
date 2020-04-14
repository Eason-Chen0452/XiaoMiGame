package com.xiaomi.passport.uicontroller;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class SimpleFutureTask<T>
  extends FutureTask<T>
{
  private Callback<T> a;
  
  public SimpleFutureTask(Callable<T> paramCallable, Callback<T> paramCallback)
  {
    super(paramCallable);
    this.a = paramCallback;
  }
  
  protected void done()
  {
    if ((!isCancelled()) && (this.a != null)) {
      new Handler(Looper.getMainLooper()).post(new c(this));
    }
    super.done();
  }
  
  public static abstract class Callback<T> {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\SimpleFutureTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */