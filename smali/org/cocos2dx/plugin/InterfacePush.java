package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfacePush
{
  public static final int PluginType = 7;
  
  public abstract void closePush();
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract void delAlias(String paramString);
  
  public abstract void delTags(String paramString);
  
  public abstract String getPluginVersion();
  
  public abstract String getSdkVersion();
  
  public abstract void setAlias(String paramString);
  
  public abstract void setDebugMode(boolean paramBoolean);
  
  public abstract void setTags(String paramString);
  
  public abstract void startPush();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfacePush.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */