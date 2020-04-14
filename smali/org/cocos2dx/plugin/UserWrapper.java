package org.cocos2dx.plugin;

public class UserWrapper
{
  public static final int ACTION_RET_LOGIN_CANCEL = 2;
  public static final int ACTION_RET_LOGIN_FAILED = 1;
  public static final int ACTION_RET_LOGIN_SUCCEED = 0;
  public static final int ACTION_RET_LOGOUT_SUCCEED = 3;
  public static final int ACTION_RET_REQUEST_SUCCEED = 4;
  public static final int ACTION_RET_SWITCHACCOUNT_SUCCEED = 5;
  
  private static native void nativeOnActionResult(String paramString1, int paramInt, String paramString2);
  
  public static void onActionResult(InterfaceUser paramInterfaceUser, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        UserWrapper.nativeOnActionResult(UserWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\UserWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */