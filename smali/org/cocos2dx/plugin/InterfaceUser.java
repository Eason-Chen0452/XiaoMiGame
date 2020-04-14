package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceUser
{
  public static final int PluginType = 5;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract String getSessionID();
  
  public abstract String getUId();
  
  public abstract boolean isLogined();
  
  public abstract void login();
  
  public abstract void logout();
  
  public abstract void setDebugMode(boolean paramBoolean);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceUser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */