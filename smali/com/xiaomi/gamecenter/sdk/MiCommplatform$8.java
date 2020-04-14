package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;

class MiCommplatform$8
  extends IServiceCallback.Stub
{
  MiCommplatform$8(MiCommplatform paramMiCommplatform) {}
  
  public void startActivity(String paramString1, String paramString2, Bundle paramBundle)
    throws RemoteException
  {
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    paramBundle.setClassLoader(MiAppEntry.class.getClassLoader());
    localIntent.putExtras(paramBundle);
    localIntent.setClassName(paramString1, paramString2);
    MiCommplatform.access$100().startActivity(localIntent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\MiCommplatform$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */