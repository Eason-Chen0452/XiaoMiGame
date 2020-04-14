package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceSocial
{
  public static final int PluginType = 6;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract void setDebugMode(boolean paramBoolean);
  
  public abstract void showAchievements();
  
  public abstract void showLeaderboard(String paramString);
  
  public abstract void submitScore(String paramString, long paramLong);
  
  public abstract void unlockAchievement(Hashtable<String, String> paramHashtable);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceSocial.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */