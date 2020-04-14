package org.cocos2dx.plugin;

import android.app.Application;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;

public class MyApplication
  extends Application
{
  public static MiAppInfo appInfo;
  
  public void onCreate()
  {
    super.onCreate();
    appInfo = new MiAppInfo();
    appInfo.setAppId("2882303761518016806");
    appInfo.setAppKey("5291801616806");
    MiCommplatform.Init(this, appInfo);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\MyApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */