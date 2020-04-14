package com.mi.milink.sdk.base;

import android.content.pm.ApplicationInfo;
import android.os.Looper;
import com.mi.milink.sdk.aidl.PacketData;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class MessageTask
  extends FutureTask<PacketData>
{
  public MessageTask()
  {
    super(new MessageTask.1());
  }
  
  private void ensureNotOnMainThread()
  {
    Object localObject = Looper.myLooper();
    if ((localObject != null) && (localObject == Global.getMainLooper()))
    {
      localObject = new IllegalStateException("calling this from your main thread can lead to deadlock");
      if (Global.getApplicationInfo().targetSdkVersion >= 8) {
        throw ((Throwable)localObject);
      }
    }
  }
  
  /* Error */
  private PacketData getTaskResult(Long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, CancellationException, TimeoutException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +19 -> 20
    //   4: aload_0
    //   5: invokevirtual 58	com/mi/milink/sdk/base/MessageTask:get	()Ljava/lang/Object;
    //   8: checkcast 60	com/mi/milink/sdk/aidl/PacketData
    //   11: astore_1
    //   12: aload_0
    //   13: iconst_1
    //   14: invokevirtual 64	com/mi/milink/sdk/base/MessageTask:cancel	(Z)Z
    //   17: pop
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: aload_1
    //   22: invokevirtual 70	java/lang/Long:longValue	()J
    //   25: aload_2
    //   26: invokevirtual 73	com/mi/milink/sdk/base/MessageTask:get	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   29: checkcast 60	com/mi/milink/sdk/aidl/PacketData
    //   32: astore_1
    //   33: aload_0
    //   34: iconst_1
    //   35: invokevirtual 64	com/mi/milink/sdk/base/MessageTask:cancel	(Z)Z
    //   38: pop
    //   39: aload_1
    //   40: areturn
    //   41: astore_1
    //   42: aload_1
    //   43: athrow
    //   44: astore_1
    //   45: aload_0
    //   46: iconst_1
    //   47: invokevirtual 64	com/mi/milink/sdk/base/MessageTask:cancel	(Z)Z
    //   50: pop
    //   51: aload_1
    //   52: athrow
    //   53: astore_1
    //   54: aload_1
    //   55: athrow
    //   56: astore_1
    //   57: aload_1
    //   58: athrow
    //   59: astore_1
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	MessageTask
    //   0	62	1	paramLong	Long
    //   0	62	2	paramTimeUnit	TimeUnit
    // Exception table:
    //   from	to	target	type
    //   4	12	41	java/util/concurrent/CancellationException
    //   20	33	41	java/util/concurrent/CancellationException
    //   4	12	44	finally
    //   20	33	44	finally
    //   42	44	44	finally
    //   54	56	44	finally
    //   57	59	44	finally
    //   60	62	44	finally
    //   4	12	53	java/util/concurrent/TimeoutException
    //   20	33	53	java/util/concurrent/TimeoutException
    //   4	12	56	java/lang/InterruptedException
    //   20	33	56	java/lang/InterruptedException
    //   4	12	59	java/util/concurrent/ExecutionException
    //   20	33	59	java/util/concurrent/ExecutionException
  }
  
  private PacketData internalGetResult(Long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, CancellationException, TimeoutException
  {
    if (!isDone()) {
      ensureNotOnMainThread();
    }
    return getTaskResult(paramLong, paramTimeUnit);
  }
  
  public abstract void doSendWork();
  
  public PacketData getChannelResult(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, CancellationException, TimeoutException
  {
    return getTaskResult(Long.valueOf(paramLong), paramTimeUnit);
  }
  
  public PacketData getResult(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, CancellationException, TimeoutException
  {
    return internalGetResult(Long.valueOf(paramLong), paramTimeUnit);
  }
  
  public final MessageTask start()
  {
    doSendWork();
    return this;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\MessageTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */