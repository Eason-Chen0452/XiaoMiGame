package org.cocos2dx.plugin;

public class ShareWrapper
{
  public static final int SHARERESULT_CANCEL = 2;
  public static final int SHARERESULT_FAIL = 1;
  public static final int SHARERESULT_SUCCESS = 0;
  public static final int SHARERESULT_TIMEOUT = 3;
  
  private static native void nativeOnShareResult(String paramString1, int paramInt, String paramString2);
  
  public static void onShareResult(InterfaceShare paramInterfaceShare, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        ShareWrapper.nativeOnShareResult(ShareWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\ShareWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */