package com.aonesoft.lib;

import android.content.Context;
import android.view.ViewGroup;
import org.cocos2dx.plugin.PlayerWrapper;
import org.cocos2dx.plugin.StreamWrapper;

public class AoneHelper
{
  public static ViewGroup getPlayerView()
  {
    return PlayerWrapper.getPlayerView();
  }
  
  public static ViewGroup getStreamView()
  {
    return StreamWrapper.getStreamView();
  }
  
  public static ViewGroup getTopStreamView()
  {
    return StreamWrapper.getTopStreamView();
  }
  
  public static void init(Context paramContext) {}
  
  public static void setPlayerView(ViewGroup paramViewGroup)
  {
    PlayerWrapper.setPlayerView(paramViewGroup);
  }
  
  public static void setStreamView(ViewGroup paramViewGroup)
  {
    StreamWrapper.setStreamView(paramViewGroup);
  }
  
  public static void setTopStreamView(ViewGroup paramViewGroup)
  {
    StreamWrapper.setTopStreamView(paramViewGroup);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */