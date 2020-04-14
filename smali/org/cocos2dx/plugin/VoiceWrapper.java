package org.cocos2dx.plugin;

public class VoiceWrapper
{
  public static final int VEC_FAILED = 1;
  public static final int VEC_SUCCESS = 0;
  public static final int VET_INIT = 0;
  public static final int VET_START = 1;
  public static final int VET_STOP = 2;
  
  private static native void nativeOnVoiceEvent(String paramString, int paramInt1, int paramInt2);
  
  public static void onVoiceEvent(InterfaceVoice paramInterfaceVoice, final int paramInt1, final int paramInt2)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        VoiceWrapper.nativeOnVoiceEvent(VoiceWrapper.this.getClass().getName().replace('.', '/'), paramInt1, paramInt2);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\VoiceWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */