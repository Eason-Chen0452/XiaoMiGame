package org.cocos2dx.plugin;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppType;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;

public class UserMi
  implements InterfaceUser
{
  private static String TAG = "UserMi";
  private static boolean isDebug = false;
  public static boolean isInited = false;
  private static JSONObject jsonExData;
  public static InterfaceUser mAdapter;
  private Activity activity;
  private String appId;
  private String appKey;
  private boolean isLogined = false;
  private OnLoginProcessListener loginProcessListener = new OnLoginProcessListener()
  {
    public void finishLoginProcess(int paramAnonymousInt, MiAccountInfo paramAnonymousMiAccountInfo)
    {
      switch (paramAnonymousInt)
      {
      default: 
        UserWrapper.onActionResult(new UserMi(UserMi.this.activity), 1, "Login failed");
        return;
      case 0: 
        UserMi.this.isLogined = true;
        UserMi.this.session = paramAnonymousMiAccountInfo.getSessionId();
        UserMi.this.uid = paramAnonymousMiAccountInfo.getUid();
        UserWrapper.onActionResult(new UserMi(UserMi.this.activity), 0, "Login successed");
        return;
      case -102: 
        UserWrapper.onActionResult(new UserMi(UserMi.this.activity), 1, "Login failed:MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL");
        return;
      case -12: 
        UserWrapper.onActionResult(new UserMi(UserMi.this.activity), 2, "Login cancel:MI_XIAOMI_GAMECENTER_ERROR_CANCEL");
        return;
      }
      UserWrapper.onActionResult(new UserMi(UserMi.this.activity), 1, "Login failed:MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED");
    }
  };
  private MiAppType miAppType;
  private String session = "";
  private String uid;
  
  public UserMi(Context paramContext)
  {
    this.activity = ((Activity)paramContext);
    mAdapter = this;
    PluginWrapper.getActivityEventListener().addListener(new MiActivityEventListener(null));
  }
  
  protected static void LogD(String paramString)
  {
    if (isDebug) {
      Log.d(TAG, paramString);
    }
  }
  
  protected static void LogE(String paramString, Exception paramException)
  {
    Log.e(TAG, paramString, paramException);
    paramException.printStackTrace();
  }
  
  public void configDeveloperInfo(Hashtable<String, String> paramHashtable)
  {
    if (isInited) {
      return;
    }
    this.appId = ((String)paramHashtable.get("AppId"));
    this.appKey = ((String)paramHashtable.get("AppKey"));
    this.miAppType = MiAppType.online;
    isInited = true;
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        MiWrapper.onCreate(UserMi.this.activity);
      }
    });
    UserWrapper.onActionResult(mAdapter, 0, "init success");
  }
  
  public void exit()
  {
    MiWrapper.miExit(this.activity);
  }
  
  public String getPluginVersion()
  {
    return MiWrapper.getPluginVersion();
  }
  
  public String getSDKVersion()
  {
    return MiWrapper.getSDKVersion();
  }
  
  public String getSessionID()
  {
    return this.session;
  }
  
  public String getUId()
  {
    return "1|" + this.uid;
  }
  
  public boolean hasExitUI()
  {
    return true;
  }
  
  public boolean isLogined()
  {
    return this.isLogined;
  }
  
  public void login()
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        if (!UserMi.isInited)
        {
          UserWrapper.onActionResult(UserMi.mAdapter, 1, "SDK init failed");
          return;
        }
        if (UserMi.this.isLogined())
        {
          UserWrapper.onActionResult(UserMi.mAdapter, 0, "SDK already logined");
          return;
        }
        MiWrapper.miLogin(UserMi.this.activity, UserMi.this.loginProcessListener);
      }
    });
  }
  
  public void logout()
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        UserMi.this.isLogined = false;
        UserMi.this.session = null;
        UserWrapper.onActionResult(UserMi.mAdapter, 3, "logout success");
      }
    });
  }
  
  public void setDebugMode(boolean paramBoolean)
  {
    isDebug = paramBoolean;
  }
  
  public void submitRoleData(JSONObject paramJSONObject)
  {
    try
    {
      String str1 = paramJSONObject.getString("aoneRoleId");
      String str2 = paramJSONObject.getString("aoneRoleName");
      String str3 = paramJSONObject.getString("aoneRoleLevel");
      String str4 = paramJSONObject.getString("aoneGroupId");
      String str5 = paramJSONObject.getString("aoneGroupName");
      paramJSONObject = paramJSONObject.getString("aoneRoleVip");
      jsonExData = new JSONObject();
      jsonExData.put("roleId", str1);
      jsonExData.put("roleName", str2);
      jsonExData.put("roleLevel", str3);
      jsonExData.put("zoneId", str4);
      jsonExData.put("zoneName", str5);
      jsonExData.put("roleVip", paramJSONObject);
      jsonExData.put("UnionName", "");
      jsonExData.put("Balance", "0");
      MiWrapper.getRoleInfo(jsonExData);
      return;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private class MiActivityEventListener
    extends ActivityEventListener
  {
    private MiActivityEventListener() {}
    
    public void onActivityDestroy()
    {
      MiWrapper.onDestroy(UserMi.this.activity);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\UserMi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */