package channel;

import android.app.Activity;
import android.content.Intent;
import main.Utils;
import org.json.JSONObject;

public abstract class Opensdk
{
  private static Opensdk inst_;
  
  public static JSONObject JsonWithInfo(String paramString, int paramInt)
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
  
  public static Opensdk createOpensdk(Activity paramActivity)
  {
    try
    {
      paramActivity = (Opensdk)Class.forName(Utils.getStrMetaData(paramActivity, "aonedef.channel.class")).newInstance();
      inst_ = paramActivity;
      return paramActivity;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
    return null;
  }
  
  public static Opensdk inst()
  {
    return inst_;
  }
  
  public abstract void onActivityCreate(Activity paramActivity);
  
  public abstract void onActivityDestroy(boolean paramBoolean);
  
  public abstract void onActivityPause(boolean paramBoolean);
  
  public abstract void onActivityRestart(boolean paramBoolean);
  
  public abstract void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent);
  
  public abstract void onActivityResume(boolean paramBoolean);
  
  public abstract void onActivityStart(boolean paramBoolean);
  
  public abstract void onActivityStop(boolean paramBoolean);
  
  public abstract boolean onBackey();
  
  protected abstract void onCreateRole(JSONObject paramJSONObject);
  
  protected abstract void onEnterServer(JSONObject paramJSONObject);
  
  public abstract void onExit();
  
  protected abstract void onLogin();
  
  public abstract void onNewIntent(Intent paramIntent);
  
  protected abstract void onPurchase(JSONObject paramJSONObject);
  
  protected abstract void tgInitCallback(int paramInt, JSONObject paramJSONObject);
  
  protected abstract void tgLoginCallback(int paramInt, JSONObject paramJSONObject);
  
  protected abstract void tgLogoutFromApp();
  
  protected abstract void tgPurchaseCallback(int paramInt, JSONObject paramJSONObject);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\channel\Opensdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */