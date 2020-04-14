package org.cocos2dx.plugin;

import java.util.Hashtable;

public abstract interface InterfaceStream
{
  public static final int PluginType = 8;
  
  public abstract void close();
  
  public abstract void configDeveloperInfo(Hashtable<String, String> paramHashtable);
  
  public abstract int getCameraCount();
  
  public abstract int getCurCameraType();
  
  public abstract boolean isMicMute();
  
  public abstract void playSoundEffect(byte[] paramArrayOfByte);
  
  public abstract void setMicMute(boolean paramBoolean);
  
  public abstract void setStreamParams(Hashtable<String, String> paramHashtable);
  
  public abstract void startCapture();
  
  public abstract void startPublish();
  
  public abstract void stopCapture();
  
  public abstract void stopPublish();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\InterfaceStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */