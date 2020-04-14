package com.mi.milink.sdk.base.os;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Messenger;

public class HandlerThreadEx
  implements Handler.Callback
{
  private Handler.Callback callback;
  private Handler handler;
  private boolean ipcable;
  private Messenger messenger;
  private String name;
  private int priority = 0;
  private HandlerThread thread;
  
  public HandlerThreadEx(String paramString, Handler.Callback paramCallback)
  {
    this(paramString, true, paramCallback);
  }
  
  public HandlerThreadEx(String paramString, boolean paramBoolean, int paramInt, Handler.Callback paramCallback)
  {
    setName(paramString);
    setIpcable(paramBoolean);
    setPriority(paramInt);
    setCallback(paramCallback);
    start();
  }
  
  public HandlerThreadEx(String paramString, boolean paramBoolean, Handler.Callback paramCallback)
  {
    this(paramString, paramBoolean, 0, paramCallback);
  }
  
  public Handler getHandler()
  {
    start();
    return this.handler;
  }
  
  public Messenger getMessenger()
  {
    start();
    return this.messenger;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getPriority()
  {
    return this.priority;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    if (this.callback != null) {
      return this.callback.handleMessage(paramMessage);
    }
    return false;
  }
  
  public boolean isIpcable()
  {
    return this.ipcable;
  }
  
  public void setCallback(Handler.Callback paramCallback)
  {
    this.callback = paramCallback;
  }
  
  protected void setIpcable(boolean paramBoolean)
  {
    this.ipcable = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
    if ((this.thread != null) && (this.thread.isAlive())) {
      this.thread.setName(paramString);
    }
  }
  
  public void setPriority(int paramInt)
  {
    this.priority = paramInt;
  }
  
  /* Error */
  protected void start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   6: ifnull +39 -> 45
    //   9: aload_0
    //   10: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   13: invokevirtual 84	android/os/HandlerThread:isAlive	()Z
    //   16: ifeq +29 -> 45
    //   19: aload_0
    //   20: getfield 57	com/mi/milink/sdk/base/os/HandlerThreadEx:handler	Landroid/os/Handler;
    //   23: ifnull +22 -> 45
    //   26: aload_0
    //   27: getfield 77	com/mi/milink/sdk/base/os/HandlerThreadEx:ipcable	Z
    //   30: ifeq +12 -> 42
    //   33: aload_0
    //   34: getfield 61	com/mi/milink/sdk/base/os/HandlerThreadEx:messenger	Landroid/os/Messenger;
    //   37: astore_1
    //   38: aload_1
    //   39: ifnull +6 -> 45
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   49: ifnonnull +22 -> 71
    //   52: aload_0
    //   53: new 81	android/os/HandlerThread
    //   56: dup
    //   57: aload_0
    //   58: invokevirtual 87	com/mi/milink/sdk/base/os/HandlerThreadEx:getName	()Ljava/lang/String;
    //   61: aload_0
    //   62: invokevirtual 89	com/mi/milink/sdk/base/os/HandlerThreadEx:getPriority	()I
    //   65: invokespecial 92	android/os/HandlerThread:<init>	(Ljava/lang/String;I)V
    //   68: putfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   71: aload_0
    //   72: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   75: invokevirtual 84	android/os/HandlerThread:isAlive	()Z
    //   78: ifne +10 -> 88
    //   81: aload_0
    //   82: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   85: invokevirtual 93	android/os/HandlerThread:start	()V
    //   88: aload_0
    //   89: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   92: invokevirtual 84	android/os/HandlerThread:isAlive	()Z
    //   95: ifeq +22 -> 117
    //   98: aload_0
    //   99: new 95	android/os/Handler
    //   102: dup
    //   103: aload_0
    //   104: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   107: invokevirtual 99	android/os/HandlerThread:getLooper	()Landroid/os/Looper;
    //   110: aload_0
    //   111: invokespecial 102	android/os/Handler:<init>	(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    //   114: putfield 57	com/mi/milink/sdk/base/os/HandlerThreadEx:handler	Landroid/os/Handler;
    //   117: aload_0
    //   118: getfield 77	com/mi/milink/sdk/base/os/HandlerThreadEx:ipcable	Z
    //   121: ifeq -79 -> 42
    //   124: aload_0
    //   125: getfield 57	com/mi/milink/sdk/base/os/HandlerThreadEx:handler	Landroid/os/Handler;
    //   128: ifnull -86 -> 42
    //   131: aload_0
    //   132: new 104	android/os/Messenger
    //   135: dup
    //   136: aload_0
    //   137: getfield 57	com/mi/milink/sdk/base/os/HandlerThreadEx:handler	Landroid/os/Handler;
    //   140: invokespecial 107	android/os/Messenger:<init>	(Landroid/os/Handler;)V
    //   143: putfield 61	com/mi/milink/sdk/base/os/HandlerThreadEx:messenger	Landroid/os/Messenger;
    //   146: goto -104 -> 42
    //   149: astore_1
    //   150: aload_0
    //   151: monitorexit
    //   152: aload_1
    //   153: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	this	HandlerThreadEx
    //   37	2	1	localMessenger	Messenger
    //   149	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	38	149	finally
    //   45	71	149	finally
    //   71	88	149	finally
    //   88	117	149	finally
    //   117	146	149	finally
  }
  
  /* Error */
  public void stop()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   6: ifnull +15 -> 21
    //   9: aload_0
    //   10: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   13: invokevirtual 84	android/os/HandlerThread:isAlive	()Z
    //   16: istore_1
    //   17: iload_1
    //   18: ifne +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   28: invokevirtual 111	android/os/HandlerThread:quit	()Z
    //   31: pop
    //   32: aload_0
    //   33: aconst_null
    //   34: putfield 79	com/mi/milink/sdk/base/os/HandlerThreadEx:thread	Landroid/os/HandlerThread;
    //   37: goto -16 -> 21
    //   40: astore_2
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_2
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	HandlerThreadEx
    //   16	2	1	bool	boolean
    //   40	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	40	finally
    //   24	37	40	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\HandlerThreadEx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */