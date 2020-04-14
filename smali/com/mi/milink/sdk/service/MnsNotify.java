package com.mi.milink.sdk.service;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.io.Serializable;

public class MnsNotify
{
  private static Messenger CLIENT_MESSENGER = null;
  
  public static Messenger getMessenger()
  {
    return CLIENT_MESSENGER;
  }
  
  public static final boolean sendEvent(int paramInt)
  {
    return sendEvent(paramInt, 0, null, null);
  }
  
  public static final boolean sendEvent(int paramInt1, int paramInt2)
  {
    return sendEvent(paramInt1, paramInt2, null, null);
  }
  
  public static final boolean sendEvent(int paramInt1, int paramInt2, Object paramObject)
  {
    return sendEvent(paramInt1, paramInt2, paramObject, null);
  }
  
  public static boolean sendEvent(int paramInt1, int paramInt2, Object paramObject, String paramString)
  {
    boolean bool = false;
    Messenger localMessenger = getMessenger();
    Message localMessage;
    if (localMessenger != null)
    {
      localMessage = Message.obtain();
      localMessage.what = paramInt1;
      localMessage.arg1 = paramInt2;
      if (paramObject != null)
      {
        if (!(paramObject instanceof String)) {
          break label83;
        }
        localMessage.getData().putString("event.extra", paramObject.toString());
      }
    }
    for (;;)
    {
      if (paramString != null) {
        localMessage.getData().putString("event.extra2", paramString);
      }
      label83:
      try
      {
        localMessenger.send(localMessage);
        bool = true;
        return bool;
      }
      catch (RemoteException paramObject) {}
      if ((paramObject instanceof Integer)) {
        localMessage.arg2 = ((Integer)paramObject).intValue();
      } else if ((paramObject instanceof Long)) {
        localMessage.getData().putLong("event.extra", ((Long)paramObject).longValue());
      } else if ((paramObject instanceof Serializable)) {
        localMessage.getData().putSerializable("event.extra", (Serializable)paramObject);
      }
    }
    return false;
  }
  
  public static void setMessenger(Messenger paramMessenger)
  {
    CLIENT_MESSENGER = paramMessenger;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\service\MnsNotify.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */