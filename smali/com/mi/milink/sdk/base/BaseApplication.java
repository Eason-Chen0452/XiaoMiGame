package com.mi.milink.sdk.base;

import android.app.Application;
import com.mi.milink.sdk.data.ClientAppInfo;

public abstract class BaseApplication
  extends Application
{
  public abstract ClientAppInfo getClientAppInfo();
  
  public void onCreate()
  {
    super.onCreate();
    Global.init(this, getClientAppInfo());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\BaseApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */