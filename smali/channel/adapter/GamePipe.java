package channel.adapter;

import java.io.PrintStream;
import main.GameActivity;
import org.json.JSONObject;

public class GamePipe
{
  public static GameActivity ga;
  
  public static void FromGame(String paramString)
  {
    GameAdapter.Inst().translateListener(paramString);
  }
  
  public static void InitOver(int paramInt, JSONObject paramJSONObject)
  {
    ToGame(paramJSONObject);
  }
  
  public static JSONObject JsonWithEidAndCode(String paramString, int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramString);
      localJSONObject.put("code", paramInt);
      return localJSONObject;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return localJSONObject;
  }
  
  public static void LoginOver(int paramInt, JSONObject paramJSONObject)
  {
    ToGame(paramJSONObject);
  }
  
  public static void PurchaseFailed()
  {
    ToGame(JsonWithEidAndCode("purchase_callback", 1));
  }
  
  public static void PurchaseOver(int paramInt, JSONObject paramJSONObject)
  {
    ToGame(paramJSONObject);
  }
  
  public static void PushToGame(JSONObject paramJSONObject)
  {
    ga.runOnGLThread(new Runnable()
    {
      public void run()
      {
        GamePipe.ToGame(this.val$json.toString());
      }
    });
  }
  
  public static void PushToGameWithEidAndCode(String paramString, final int paramInt)
  {
    ga.runOnUiThread(new Runnable()
    {
      public void run()
      {
        GamePipe.ToGame(GamePipe.JsonWithEidAndCode(this.val$eid_, paramInt));
      }
    });
  }
  
  static native void ToGame(String paramString);
  
  public static void ToGame(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.has("id"))
    {
      System.out.print("PushToGame json don't have the key of 'id'.");
      return;
    }
    ga.runOnGLThread(new Runnable()
    {
      public void run()
      {
        GamePipe.ToGame(this.val$json.toString());
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\channel\adapter\GamePipe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */