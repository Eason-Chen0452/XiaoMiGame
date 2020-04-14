package org.cocos2dx.plugin;

public class SocialWrapper
{
  public static final int SOCIAL_SUBMITSCORE_FAILED = 2;
  public static final int SOCIAL_SUBMITSCORE_SUCCESS = 1;
  public static final int SOCIAL_UNLOCKACH_FAILED = 4;
  public static final int SOCIAL_UNLOCKACH_SUCCESS = 3;
  
  private static native void nativeOnSocialResult(String paramString1, int paramInt, String paramString2);
  
  public static void onSocialResult(InterfaceSocial paramInterfaceSocial, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        SocialWrapper.nativeOnSocialResult(SocialWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\SocialWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */