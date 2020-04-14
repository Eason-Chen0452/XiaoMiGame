package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceAds
{
  public static final int PluginType = 1;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract void hideAds(Hashtable<String, String> paramHashtable);
  
  public abstract void queryPoints();
  
  public abstract void setDebugMode(boolean paramBoolean);
  
  public abstract void showAds(Hashtable<String, String> paramHashtable, int paramInt);
  
  public abstract void spendPoints(int paramInt);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceAds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */