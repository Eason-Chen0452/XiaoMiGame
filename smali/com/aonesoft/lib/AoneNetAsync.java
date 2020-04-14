package com.aonesoft.lib;

import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.util.Log;

public class AoneNetAsync
{
  private static String LOG_TAG = "aonesdk info AoneNetAsync";
  protected static GLSurfaceView sGLSurfaceView;
  private static Handler sHandler = null;
  public static byte[] sRequest;
  public static byte[] sResponse;
  public static int sResponseLen;
  public static int sResult;
  public static String sTest;
  
  static
  {
    sGLSurfaceView = null;
    sRequest = null;
    sResponse = null;
    sResult = 0;
    sResponseLen = 0;
    sTest = null;
  }
  
  public static byte[] getResponse()
  {
    return sResponse;
  }
  
  public static int getResponseLen()
  {
    return sResponseLen;
  }
  
  public static int getResult()
  {
    return sResult;
  }
  
  public static void httpSendRecv(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    Log.d(LOG_TAG, "http request begin," + paramString1 + "," + paramInt1 + "," + paramString2 + "," + paramInt2);
    new Thread(new AoneHttpThread(paramString1, paramInt1, paramString2, paramArrayOfByte, paramInt2, paramInt3)).start();
  }
  
  public static void init(GLSurfaceView paramGLSurfaceView)
  {
    sGLSurfaceView = paramGLSurfaceView;
    if ((sGLSurfaceView == null) && (sHandler == null)) {
      sHandler = new Handler();
    }
  }
  
  public static void reInitHandler()
  {
    if (sGLSurfaceView == null) {
      sHandler = new Handler();
    }
  }
  
  public static void runOnGameThread(Runnable paramRunnable)
  {
    if (sGLSurfaceView != null)
    {
      sGLSurfaceView.queueEvent(paramRunnable);
      return;
    }
    if (sHandler != null)
    {
      sHandler.post(paramRunnable);
      return;
    }
    Log.e(LOG_TAG, "runOnGameThread failed, the sHandler is null");
  }
  
  public static void sendRecvAsync(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    Log.d(LOG_TAG, "request begin," + paramString1 + ":" + paramInt1 + "," + paramString2 + "," + paramInt2);
    new Thread(new AoneNetThread(paramString1, paramInt1, paramString2, paramArrayOfByte, paramInt2, paramInt3)).start();
  }
  
  public static void setResponse(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    sResult = paramInt1;
    if (paramArrayOfByte == null) {}
    for (sResponse = null;; sResponse = (byte[])paramArrayOfByte.clone())
    {
      sResponseLen = paramInt2;
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneNetAsync.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */