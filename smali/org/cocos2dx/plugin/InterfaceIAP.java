package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceIAP
{
  public static final int PluginType = 3;
  
  public abstract boolean canRequestProducts();
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract void payForProduct(Hashtable<String, String> paramHashtable);
  
  public abstract void setDebugMode(boolean paramBoolean);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceIAP.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */