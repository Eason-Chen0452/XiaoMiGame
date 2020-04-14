package com.xiaomi.gamecenter.sdk;

import android.app.Activity;

final class aa
  implements Runnable
{
  aa(MiCommplatform paramMiCommplatform, Activity paramActivity, OnExitListner paramOnExitListner) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   4: aload_0
    //   5: getfield 18	com/xiaomi/gamecenter/sdk/aa:a	Landroid/app/Activity;
    //   8: iconst_0
    //   9: invokevirtual 33	com/xiaomi/gamecenter/sdk/MiCommplatform:checkAndConnect	(Landroid/content/Context;Z)I
    //   12: ifeq +32 -> 44
    //   15: aload_0
    //   16: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   19: iconst_0
    //   20: invokestatic 37	com/xiaomi/gamecenter/sdk/MiCommplatform:access$1802	(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    //   23: pop
    //   24: aload_0
    //   25: getfield 20	com/xiaomi/gamecenter/sdk/aa:b	Lcom/xiaomi/gamecenter/sdk/OnExitListner;
    //   28: sipush 10001
    //   31: invokeinterface 43 2 0
    //   36: invokestatic 48	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
    //   39: pop
    //   40: invokestatic 51	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:j	()V
    //   43: return
    //   44: invokestatic 55	com/xiaomi/gamecenter/sdk/MiCommplatform:access$400	()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    //   47: ifnull +55 -> 102
    //   50: invokestatic 55	com/xiaomi/gamecenter/sdk/MiCommplatform:access$400	()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    //   53: invokeinterface 61 1 0
    //   58: istore_1
    //   59: aload_0
    //   60: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   63: invokevirtual 64	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   66: invokestatic 68	com/xiaomi/gamecenter/sdk/MiCommplatform:access$200	()Landroid/os/Handler;
    //   69: new 70	com/xiaomi/gamecenter/sdk/ab
    //   72: dup
    //   73: aload_0
    //   74: iload_1
    //   75: invokespecial 73	com/xiaomi/gamecenter/sdk/ab:<init>	(Lcom/xiaomi/gamecenter/sdk/aa;I)V
    //   78: ldc2_w 74
    //   81: invokevirtual 81	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   84: pop
    //   85: aload_0
    //   86: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   89: iconst_0
    //   90: invokestatic 37	com/xiaomi/gamecenter/sdk/MiCommplatform:access$1802	(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    //   93: pop
    //   94: aload_0
    //   95: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   98: invokevirtual 64	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   101: return
    //   102: aload_0
    //   103: getfield 20	com/xiaomi/gamecenter/sdk/aa:b	Lcom/xiaomi/gamecenter/sdk/OnExitListner;
    //   106: sipush 10001
    //   109: invokeinterface 43 2 0
    //   114: invokestatic 48	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
    //   117: pop
    //   118: invokestatic 51	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:j	()V
    //   121: goto -36 -> 85
    //   124: astore_2
    //   125: aload_2
    //   126: invokevirtual 84	android/os/RemoteException:printStackTrace	()V
    //   129: aload_0
    //   130: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   133: iconst_0
    //   134: invokestatic 37	com/xiaomi/gamecenter/sdk/MiCommplatform:access$1802	(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    //   137: pop
    //   138: aload_0
    //   139: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   142: invokevirtual 64	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   145: return
    //   146: astore_2
    //   147: aload_0
    //   148: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   151: iconst_0
    //   152: invokestatic 37	com/xiaomi/gamecenter/sdk/MiCommplatform:access$1802	(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    //   155: pop
    //   156: aload_0
    //   157: getfield 16	com/xiaomi/gamecenter/sdk/aa:c	Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   160: invokevirtual 64	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   163: aload_2
    //   164: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	aa
    //   58	17	1	i	int
    //   124	2	2	localRemoteException	android.os.RemoteException
    //   146	18	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   44	85	124	android/os/RemoteException
    //   102	121	124	android/os/RemoteException
    //   44	85	146	finally
    //   102	121	146	finally
    //   125	129	146	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */