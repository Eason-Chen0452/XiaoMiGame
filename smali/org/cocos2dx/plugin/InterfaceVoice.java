package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceVoice
{
  public static final int PluginType = 10;
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract int getVolume();
  
  public abstract boolean isMicMute();
  
  public abstract void setMicMute(boolean paramBoolean);
  
  public abstract void setVoiceParams(Hashtable<String, String> paramHashtable);
  
  public abstract void setVolume(int paramInt);
  
  public abstract void start(String paramString);
  
  public abstract void stop();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceVoice.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */