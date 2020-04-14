package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceSupport
{
  public static final int PluginType = 11;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract void setUserIdentifier(String paramString);
  
  public abstract void setUserName(String paramString);
  
  public abstract void showConversation();
  
  public abstract void showFAQS();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */