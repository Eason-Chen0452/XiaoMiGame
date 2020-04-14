package org.cocos2dx.plugin;

import android.view.ViewGroup;

public class StreamWrapper
{
  public static final int SEC_FAILED = 1;
  public static final int SEC_SUCCESS = 0;
  private static ViewGroup mStreamView = null;
  private static ViewGroup mTopStreamView = null;
  
  public static ViewGroup getStreamView()
  {
    return mStreamView;
  }
  
  public static ViewGroup getTopStreamView()
  {
    return mTopStreamView;
  }
  
  private static native void nativeOnCaptureStart(String paramString);
  
  private static native void nativeOnCaptureStop(String paramString);
  
  private static native void nativeOnInitCameraFail(String paramString);
  
  private static native void nativeOnInitMicrophoneFail(String paramString);
  
  private static native void nativeOnPublishDidLine(String paramString1, int paramInt, String paramString2);
  
  private static native void nativeOnPublishDidOffLine(String paramString1, int paramInt, String paramString2);
  
  private static native void nativeOnPublishStart(String paramString1, String paramString2);
  
  private static native void nativeOnPublishStop(String paramString, int paramInt);
  
  private static native void nativeOnVideoStreamStatus(String paramString1, int paramInt, String paramString2);
  
  private static native void nativeOnVolumeIndication(String paramString1, String paramString2);
  
  public static void onCaptureStart(InterfaceStream paramInterfaceStream)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnCaptureStart(StreamWrapper.this.getClass().getName().replace('.', '/'));
      }
    });
  }
  
  public static void onCaptureStop(InterfaceStream paramInterfaceStream)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnCaptureStop(StreamWrapper.this.getClass().getName().replace('.', '/'));
      }
    });
  }
  
  public static void onInitCameraFail(InterfaceStream paramInterfaceStream)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnInitCameraFail(StreamWrapper.this.getClass().getName().replace('.', '/'));
      }
    });
  }
  
  public static void onInitMicrophoneFail(InterfaceStream paramInterfaceStream)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnInitMicrophoneFail(StreamWrapper.this.getClass().getName().replace('.', '/'));
      }
    });
  }
  
  public static void onPublishDidLine(InterfaceStream paramInterfaceStream, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnPublishDidLine(StreamWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
  
  public static void onPublishDidOffLine(InterfaceStream paramInterfaceStream, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnPublishDidOffLine(StreamWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
  
  public static void onPublishStart(InterfaceStream paramInterfaceStream, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnPublishStart(StreamWrapper.this.getClass().getName().replace('.', '/'), paramString);
      }
    });
  }
  
  public static void onPublishStop(InterfaceStream paramInterfaceStream, final int paramInt)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnPublishStop(StreamWrapper.this.getClass().getName().replace('.', '/'), paramInt);
      }
    });
  }
  
  public static void onVideoStreamStatus(InterfaceStream paramInterfaceStream, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnVideoStreamStatus(StreamWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
  
  public static void onVolumeIndication(InterfaceStream paramInterfaceStream, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        StreamWrapper.nativeOnVolumeIndication(StreamWrapper.this.getClass().getName().replace('.', '/'), paramString);
      }
    });
  }
  
  public static void setStreamView(ViewGroup paramViewGroup)
  {
    mStreamView = paramViewGroup;
  }
  
  public static void setTopStreamView(ViewGroup paramViewGroup)
  {
    mTopStreamView = paramViewGroup;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\StreamWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */