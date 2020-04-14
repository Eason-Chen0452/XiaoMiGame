package org.cocos2dx.plugin;

public class PushWrapper
{
  public static final int PUSH_RET_FAIL = 1;
  public static final int PUSH_RET_SUCCESS = 0;
  public static final int PUSH_RET_TIMEOUT = 2;
  
  private static native void nativeOnPushResult(String paramString1, int paramInt, String paramString2);
  
  public static void onPushResult(InterfacePush paramInterfacePush, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        PushWrapper.nativeOnPushResult(PushWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\PushWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */