package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceAnalytics
{
  public static final int PluginType = 2;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract String getConfigParams(String paramString);
  
  public abstract String getPluginVersion();
  
  public abstract String getSDKVersion();
  
  public abstract void logError(String paramString1, String paramString2);
  
  public abstract void logEvent(String paramString);
  
  public abstract void logEvent(String paramString, Hashtable<String, String> paramHashtable);
  
  public abstract void logPageEnd(String paramString);
  
  public abstract void logPageStart(String paramString);
  
  public abstract void logTimedEventBegin(String paramString);
  
  public abstract void logTimedEventEnd(String paramString);
  
  public abstract void logTimedKVEventBegin(String paramString, Hashtable<String, String> paramHashtable);
  
  public abstract void logTimedKVEventEnd(String paramString);
  
  public abstract void setCaptureUncaughtException(boolean paramBoolean);
  
  public abstract void setDebugMode(boolean paramBoolean);
  
  public abstract void setSessionContinueMillis(int paramInt);
  
  public abstract void startSession(String paramString);
  
  public abstract void stopSession();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceAnalytics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */