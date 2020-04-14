package com.mi.milink.sdk.connection;

import android.util.Log;
import android.util.SparseArray;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.Native;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.MsgProcessor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ConnectionImpl
  implements IConnection
{
  private static final String CLASSTAG = "ConnectionImpl";
  private static final int MSG_ID_ON_CONNECT = 1;
  private static final int MSG_ID_ON_DISCONNECT = 2;
  private static final int MSG_ID_ON_ERROR = 3;
  private static final int MSG_ID_ON_MSGPROC = 8;
  private static final int MSG_ID_ON_RECV = 5;
  private static final int MSG_ID_ON_SENDBEGIN = 6;
  private static final int MSG_ID_ON_SENDEND = 7;
  private static final int MSG_ID_ON_START = 0;
  private static final int MSG_ID_ON_TIMEOUT = 4;
  private static volatile boolean sIsLoaded = false;
  private static List<ConnectPrintLogCallback> sLogCallbackList;
  private static SparseArray<String> sMsgMap;
  private String TAG;
  private IConnectionCallback mCallback = null;
  private int mCreatorSessionNO;
  private ConcurrentHashMap<Integer, Object> mMsgObjectMap = new ConcurrentHashMap();
  private MsgProcessor mMsgProc = null;
  private long mNativeContext;
  private AtomicInteger mReferenceNo = new AtomicInteger(1);
  private int mType = 0;
  
  static
  {
    for (;;)
    {
      try
      {
        boolean bool2 = Native.loadLibrary("connectionbase");
        bool3 = Native.loadLibrary("milinkconnection");
        bool1 = bool2;
        if (bool2) {
          continue;
        }
        bool1 = bool2;
        if (bool3 != true) {
          continue;
        }
        bool1 = Native.loadLibrary("connectionbase");
      }
      catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
      {
        SparseArray localSparseArray;
        MiLinkLog.e("ConnectionImpl", "System.loadLibrary failed", localUnsatisfiedLinkError);
        sIsLoaded = false;
        continue;
      }
      catch (Exception localException)
      {
        boolean bool3;
        MiLinkLog.e("ConnectionImpl", "System.loadLibrary failed", localException);
        sIsLoaded = false;
        continue;
        if ((!bool1) || (!bool3)) {
          continue;
        }
        boolean bool1 = true;
        continue;
      }
      sIsLoaded = bool1;
      native_init();
      if (Global.getClientAppInfo().getAppId() == 20003) {
        sIsLoaded = true;
      }
      MiLinkLog.i("ConnectionImpl", "loadLibrary return " + sIsLoaded);
      localSparseArray = new SparseArray();
      sMsgMap = localSparseArray;
      localSparseArray.put(0, "onStart");
      sMsgMap.put(1, "onConnect");
      sMsgMap.put(2, "onDisconnect");
      sMsgMap.put(3, "onError");
      sMsgMap.put(4, "onTimeout");
      sMsgMap.put(5, "onRecv");
      sMsgMap.put(6, "onSendBegin");
      sMsgMap.put(7, "onSendEnd");
      sMsgMap.put(8, "onMsgProc");
      sLogCallbackList = new ArrayList();
      return;
      bool1 = false;
    }
  }
  
  public ConnectionImpl(int paramInt1, int paramInt2)
  {
    if (!sIsLoaded) {
      return;
    }
    this.mCreatorSessionNO = paramInt1;
    this.TAG = String.format("[No:%d]%s", new Object[] { Integer.valueOf(paramInt1), "ConnectionImpl" });
    this.mType = paramInt2;
    try
    {
      native_setup(new WeakReference(this), this.mType, 1);
      return;
    }
    catch (Throwable localThrowable)
    {
      MiLinkLog.e(this.TAG, "native_setup failed", localThrowable);
    }
  }
  
  public static void addConnectPrintLogCallback(ConnectPrintLogCallback paramConnectPrintLogCallback)
  {
    if (paramConnectPrintLogCallback != null) {}
    try
    {
      sLogCallbackList.add(paramConnectPrintLogCallback);
      return;
    }
    finally
    {
      paramConnectPrintLogCallback = finally;
      throw paramConnectPrintLogCallback;
    }
  }
  
  public static boolean isLibLoaded()
  {
    return sIsLoaded;
  }
  
  private final native void native_finalize();
  
  private static final native void native_init();
  
  private final native void native_setup(Object paramObject, int paramInt1, int paramInt2);
  
  private static void notifyConnectPrintLogCallback(int paramInt, String paramString)
  {
    int i = 0;
    try
    {
      while (i < sLogCallbackList.size())
      {
        ((ConnectPrintLogCallback)sLogCallbackList.get(i)).printLogCallback(paramInt, paramString);
        i += 1;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private static void postEventFromNative(Object paramObject1, int paramInt1, int paramInt2, int paramInt3, Object paramObject2)
  {
    try
    {
      paramObject1 = (ConnectionImpl)((WeakReference)paramObject1).get();
      if (paramObject1 == null) {
        return;
      }
      MiLinkLog.v("ConnectionImpl", "postEventFromNative msg:" + (String)sMsgMap.get(paramInt1) + ", arg1=" + paramInt2 + ", arg2=" + paramInt3 + " to SessionNo:" + ((ConnectionImpl)paramObject1).mCreatorSessionNO);
      switch (paramInt1)
      {
      case 0: 
        Log.e("ConnectionImpl", "Unknown message type " + paramInt1);
        return;
      }
    }
    catch (Exception paramObject1)
    {
      MiLinkLog.e("ConnectionImpl", "postEventFromNative Exception", (Throwable)paramObject1);
      return;
    }
    ((ConnectionImpl)paramObject1).onStart();
    return;
    for (;;)
    {
      boolean bool;
      ((ConnectionImpl)paramObject1).onConnect(bool, paramInt3);
      return;
      ((ConnectionImpl)paramObject1).onDisconnect();
      return;
      ((ConnectionImpl)paramObject1).onError(paramInt2);
      return;
      ((ConnectionImpl)paramObject1).onTimeOut(paramInt2, paramInt3);
      return;
      ((ConnectionImpl)paramObject1).onRecv((byte[])paramObject2);
      return;
      ((ConnectionImpl)paramObject1).onSendBegin(paramInt2);
      return;
      ((ConnectionImpl)paramObject1).onSendEnd(paramInt2);
      return;
      ((ConnectionImpl)paramObject1).onMsgProc(paramInt2, paramObject2, paramInt3);
      return;
      break;
      if (paramInt2 != 0) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public static final void printLog(int paramInt, String paramString)
  {
    MiLinkLog.d("native", paramString);
    notifyConnectPrintLogCallback(paramInt, paramString);
  }
  
  public static void removeConnectPrintLogCallback(ConnectPrintLogCallback paramConnectPrintLogCallback)
  {
    if (paramConnectPrintLogCallback != null) {}
    try
    {
      sLogCallbackList.remove(paramConnectPrintLogCallback);
      return;
    }
    finally
    {
      paramConnectPrintLogCallback = finally;
      throw paramConnectPrintLogCallback;
    }
  }
  
  public native boolean connect(String paramString1, int paramInt1, String paramString2, int paramInt2, int paramInt3, int paramInt4);
  
  public native boolean disconnect();
  
  protected void finalize()
  {
    MiLinkLog.w(this.TAG, "finalize connection");
    try
    {
      native_finalize();
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          if (this.mMsgProc != null) {
            this.mMsgProc.onMsgProc(4, null, 0);
          }
          return;
        }
        catch (Exception localException2)
        {
          MiLinkLog.e(this.TAG, "finalize failed", localException2);
        }
        localException1 = localException1;
        MiLinkLog.e(this.TAG, "finalize failed", localException1);
      }
    }
  }
  
  public int getConnectionType()
  {
    return this.mType;
  }
  
  public String getServerIP()
  {
    return null;
  }
  
  public int getServerPort()
  {
    return 0;
  }
  
  public native boolean isRunning();
  
  public native boolean isSendDone(int paramInt);
  
  public boolean onConnect(boolean paramBoolean, int paramInt)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onConnect(paramBoolean, paramInt);
  }
  
  public boolean onDisconnect()
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onDisconnect();
  }
  
  public boolean onError(int paramInt)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onError(paramInt);
  }
  
  public boolean onMsgProc(int paramInt1, Object paramObject, int paramInt2)
  {
    if (this.mMsgProc == null) {
      return false;
    }
    paramObject = this.mMsgObjectMap.remove(paramObject);
    this.mMsgProc.onMsgProc(paramInt1, paramObject, paramInt2);
    return true;
  }
  
  public boolean onRecv(byte[] paramArrayOfByte)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onRecv(paramArrayOfByte);
  }
  
  public boolean onSendBegin(int paramInt)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onSendBegin(paramInt);
  }
  
  public boolean onSendEnd(int paramInt)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onSendEnd(paramInt);
  }
  
  public boolean onStart()
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onStart();
  }
  
  public boolean onTimeOut(int paramInt1, int paramInt2)
  {
    if (this.mCallback == null) {
      return false;
    }
    return this.mCallback.onTimeOut(paramInt1, paramInt2);
  }
  
  public native boolean postMessage(int paramInt1, int paramInt2, int paramInt3);
  
  public boolean postMessage(int paramInt1, Object paramObject, int paramInt2, MsgProcessor paramMsgProcessor)
  {
    if (!sIsLoaded)
    {
      MiLinkLog.e(this.TAG, "postMessage failed:lib is unloaded");
      return false;
    }
    this.mMsgProc = paramMsgProcessor;
    paramMsgProcessor = Integer.valueOf(0);
    if (paramObject != null)
    {
      paramMsgProcessor = Integer.valueOf(this.mReferenceNo.getAndIncrement());
      this.mMsgObjectMap.put(paramMsgProcessor, paramObject);
    }
    try
    {
      boolean bool = postMessage(paramInt1, paramMsgProcessor.intValue(), paramInt2);
      return bool;
    }
    catch (Exception paramObject)
    {
      MiLinkLog.e(this.TAG, "postMessage failed", (Throwable)paramObject);
    }
    return false;
  }
  
  public native void removeAllSendData();
  
  public native void removeSendData(int paramInt);
  
  public native boolean sendData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public void setCallback(IConnectionCallback paramIConnectionCallback)
  {
    this.mCallback = paramIConnectionCallback;
  }
  
  public native boolean start();
  
  public native boolean stop();
  
  public native void wakeUp();
  
  public static abstract interface ConnectPrintLogCallback
  {
    public abstract void printLogCallback(int paramInt, String paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\connection\ConnectionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */