package org.cocos2dx.plugin;

import android.view.ViewGroup;

public class PlayerWrapper
{
  public static final int PEC_FAILED = 1;
  public static final int PEC_SUCCESS = 0;
  private static ViewGroup mPlayerView = null;
  
  public static ViewGroup getPlayerView()
  {
    return mPlayerView;
  }
  
  private static native void nativeOnPlayerStart(String paramString);
  
  private static native void nativeOnPlayerStop(String paramString, int paramInt);
  
  public static void onPlayerStart(InterfacePlayer paramInterfacePlayer)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        PlayerWrapper.nativeOnPlayerStart(PlayerWrapper.this.getClass().getName().replace('.', '/'));
      }
    });
  }
  
  public static void onPlayerStop(InterfacePlayer paramInterfacePlayer, final int paramInt)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        PlayerWrapper.nativeOnPlayerStop(PlayerWrapper.this.getClass().getName().replace('.', '/'), paramInt);
      }
    });
  }
  
  public static void setPlayerView(ViewGroup paramViewGroup)
  {
    mPlayerView = paramViewGroup;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\PlayerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */