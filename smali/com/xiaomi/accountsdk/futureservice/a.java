package com.xiaomi.accountsdk.futureservice;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class a<ServerDataType, ClientDataType>
  extends FutureTask<ClientDataType>
{
  private final a<ClientDataType> a;
  
  protected a(a<ClientDataType> parama)
  {
    super(new b());
    this.a = parama;
  }
  
  private static void a()
  {
    Looper localLooper = Looper.myLooper();
    if ((localLooper != null) && (localLooper == Looper.getMainLooper())) {
      Log.e("ClientFuture", "calling this from your main thread can lead to deadlock and/or ANRs", new IllegalStateException("ClientFuture#calling this from your main thread can lead to deadlock"));
    }
  }
  
  public final void a(ServerDataType paramServerDataType)
  {
    try
    {
      set(b(paramServerDataType));
      return;
    }
    catch (Throwable paramServerDataType)
    {
      setException(paramServerDataType);
    }
  }
  
  protected abstract ClientDataType b(ServerDataType paramServerDataType)
    throws Throwable;
  
  protected void done()
  {
    super.done();
    if ((isCancelled()) || (this.a == null)) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new c(this));
  }
  
  public ClientDataType get()
    throws InterruptedException, ExecutionException
  {
    if (!isDone()) {
      a();
    }
    return (ClientDataType)super.get();
  }
  
  public ClientDataType get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    if (!isDone()) {
      a();
    }
    return (ClientDataType)super.get(paramLong, paramTimeUnit);
  }
  
  public static abstract interface a<ClientSideDataType> {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\futureservice\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */