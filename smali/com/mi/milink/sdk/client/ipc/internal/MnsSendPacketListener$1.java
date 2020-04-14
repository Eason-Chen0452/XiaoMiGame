package com.mi.milink.sdk.client.ipc.internal;

import com.mi.milink.sdk.client.ipc.ClientLog;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

final class MnsSendPacketListener$1
  implements RejectedExecutionHandler
{
  public final void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    ClientLog.v("MnsSendPacketListener", "Thread pool executor: reject work, put into backup pool");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MnsSendPacketListener$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */