package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfacePlayer
{
  public static final int PluginType = 9;
  
  public abstract void close();
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract void playSoundEffect(byte[] paramArrayOfByte);
  
  public abstract void setStreamParams(Hashtable<String, String> paramHashtable);
  
  public abstract void start();
  
  public abstract void stop();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfacePlayer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */