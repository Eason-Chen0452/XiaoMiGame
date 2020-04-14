package channel.adapter;

import java.io.PrintStream;
import java.util.HashMap;
import org.json.JSONObject;

public class GameAdapter
{
  static GameAdapter ins;
  HashMap<String, IGameListener> translater = new HashMap();
  
  public GameAdapter()
  {
    ins = this;
  }
  
  public static GameAdapter Inst()
  {
    if (ins == null) {
      ins = new GameAdapter();
    }
    return ins;
  }
  
  public boolean registerListener(String paramString, IGameListener paramIGameListener)
  {
    if ((paramString == null) || (paramString.length() <= 0) || (paramIGameListener == null))
    {
      System.out.print(String.format("Register Listener Param error !!", new Object[0]));
      return false;
    }
    if (this.translater.containsKey(paramString)) {
      System.out.print(String.format("WARNING !! The LISTENER named %s was exists!!", new Object[] { paramString }));
    }
    try
    {
      this.translater.put(paramString, paramIGameListener);
      return true;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  public boolean translateListener(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      String str = paramString.getString("id");
      if (!this.translater.containsKey(str)) {
        return false;
      }
      ((IGameListener)this.translater.get(str)).onEvent(str, paramString);
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\channel\adapter\GameAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */