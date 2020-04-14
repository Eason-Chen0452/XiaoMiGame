package org.cocos2dx.plugin;

import java.util.Hashtable;
import java.util.List;

public class IAPWrapper
{
  public static final int PAYRESULT_CANCEL = 2;
  public static final int PAYRESULT_FAIL = 1;
  public static final int PAYRESULT_SUCCESS = 0;
  public static final int PAYRESULT_TIMEOUT = 3;
  public static final int REQUESTRESULT_SUCCESS = 4;
  
  private static native void nativeOnPayResult(String paramString1, int paramInt, String paramString2);
  
  private static native void nativeOnRequestProduct(String paramString, int paramInt, List<Hashtable<String, String>> paramList);
  
  public static void onPayResult(InterfaceIAP paramInterfaceIAP, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        IAPWrapper.nativeOnPayResult(IAPWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
  
  public static void onRequestProduct(InterfaceIAP paramInterfaceIAP, final int paramInt, final List<Hashtable<String, String>> paramList)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        IAPWrapper.nativeOnRequestProduct(IAPWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramList);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\IAPWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */