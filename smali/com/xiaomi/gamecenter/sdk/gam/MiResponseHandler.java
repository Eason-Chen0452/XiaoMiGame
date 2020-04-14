package com.xiaomi.gamecenter.sdk.gam;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.json.JSONObject;

public abstract class MiResponseHandler
  extends Handler
{
  public MiResponseHandler()
  {
    super(Looper.getMainLooper());
  }
  
  public void dispatchMessage(Message paramMessage)
  {
    super.dispatchMessage(paramMessage);
    try
    {
      paramMessage = (MiGamMessageResponse)paramMessage.obj;
      int i = paramMessage.getSdkStatus();
      String str = paramMessage.getMsgResult();
      paramMessage = null;
      if (str != null) {
        paramMessage = new JSONObject(str);
      }
      if (i == 0)
      {
        onComplete(i, paramMessage);
        return;
      }
      onError(i, paramMessage);
      return;
    }
    catch (Exception paramMessage)
    {
      paramMessage.printStackTrace();
    }
  }
  
  protected abstract void onComplete(int paramInt, JSONObject paramJSONObject);
  
  protected abstract void onError(int paramInt, JSONObject paramJSONObject);
  
  public void sendResultMsg(int paramInt, String paramString)
  {
    Message localMessage = new Message();
    MiGamMessageResponse localMiGamMessageResponse = new MiGamMessageResponse();
    localMiGamMessageResponse.setSdkStatus(paramInt);
    localMiGamMessageResponse.setMsgResult(paramString);
    localMessage.obj = localMiGamMessageResponse;
    sendMessage(localMessage);
  }
  
  public void sendResultMsg(MiGamMessageResponse paramMiGamMessageResponse)
  {
    Message localMessage = new Message();
    localMessage.obj = paramMiGamMessageResponse;
    sendMessage(localMessage);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\MiResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */