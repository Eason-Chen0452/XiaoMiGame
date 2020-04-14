package com.mi.milink.sdk.client;

import android.os.Bundle;
import android.os.Message;
import com.mi.milink.sdk.client.ipc.ClientLog;
import com.mi.milink.sdk.data.Const.Event;
import java.util.Observable;
import java.util.Observer;

public abstract class MiLinkObserver
  implements Const.Event, Observer
{
  public abstract void onInternalError(int paramInt, String paramString);
  
  public abstract void onLoginStateUpdate(int paramInt);
  
  public abstract void onServerStateUpdate(int paramInt1, int paramInt2);
  
  public abstract void onServiceConnected(long paramLong);
  
  public abstract void onSuicideTime(int paramInt);
  
  public void update(Observable paramObservable, Object paramObject)
  {
    ClientLog.v("MiLinkObserver", "update data:" + paramObject);
    if ((paramObject == null) || (!(paramObject instanceof Message))) {
      return;
    }
    paramObservable = (Message)paramObject;
    if (paramObservable.peekData() != null) {
      paramObservable.peekData().setClassLoader(getClass().getClassLoader());
    }
    switch (paramObservable.what)
    {
    case 5: 
    case 7: 
    case 8: 
    case 11: 
    case 12: 
    case 13: 
    default: 
      return;
    case 4: 
      onSuicideTime(paramObservable.arg1);
      return;
    case 6: 
      onServerStateUpdate(paramObservable.arg1, paramObservable.arg2);
      return;
    case 10: 
      if (paramObservable.peekData() == null) {}
      for (long l = 0L;; l = paramObservable.peekData().getLong("event.extra"))
      {
        onServiceConnected(Long.valueOf(l).longValue());
        return;
      }
    case 9: 
      int i = paramObservable.arg1;
      if (paramObservable.peekData() == null) {}
      for (paramObservable = null;; paramObservable = paramObservable.peekData().getString("event.extra"))
      {
        onInternalError(i, paramObservable);
        return;
      }
    }
    onLoginStateUpdate(paramObservable.arg2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */