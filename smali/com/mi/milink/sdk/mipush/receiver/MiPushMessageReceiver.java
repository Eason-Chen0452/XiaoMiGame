package com.mi.milink.sdk.mipush.receiver;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.mi.milink.sdk.client.ipc.ClientLog;
import com.mi.milink.sdk.mipush.MiPushManager;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class MiPushMessageReceiver
  extends PushMessageReceiver
{
  private static String TAG = "MiPushMessageReceiver";
  private String mAccount;
  private String mAlias;
  private String mCommand;
  private String mEndTime;
  private String mMessage;
  private String mReason;
  private String mRegId;
  private long mResultCode = -1L;
  private String mStartTime;
  private String mTopic;
  
  @SuppressLint({"SimpleDateFormat"})
  public static String getSimpleDate()
  {
    return new SimpleDateFormat("MM-dd hh:mm:ss").format(new Date());
  }
  
  public void onCommandResult(Context paramContext, MiPushCommandMessage paramMiPushCommandMessage)
  {
    ClientLog.w(TAG, "onCommandResult is called. " + paramMiPushCommandMessage.toString());
    String str = paramMiPushCommandMessage.getCommand();
    Object localObject = paramMiPushCommandMessage.getCommandArguments();
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      paramContext = (String)((List)localObject).get(0);
      if ((localObject == null) || (((List)localObject).size() <= 1)) {
        break label134;
      }
      localObject = (String)((List)localObject).get(1);
      label85:
      if (!"register".equals(str)) {
        break label157;
      }
      if (paramMiPushCommandMessage.getResultCode() != 0L) {
        break label139;
      }
      MiPushManager.getInstance().setMiPushRegId(paramContext);
      MiPushManager.getInstance().bindAliasByUserId();
      MiPushManager.getInstance().setRegisting(false);
    }
    for (;;)
    {
      Message.obtain();
      return;
      paramContext = null;
      break;
      label134:
      localObject = null;
      break label85;
      label139:
      ClientLog.w(TAG, "COMMAND_REGISTER failed");
      MiPushManager.getInstance().registerMiPush(false);
      continue;
      label157:
      if ("set-alias".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L)
        {
          ClientLog.w(TAG, "setAlias success!");
          MiPushManager.getInstance().setAlias(paramContext);
        }
        else
        {
          ClientLog.w(TAG, "COMMAND_SET_ALIAS failed");
          MiPushManager.getInstance().registerMiPush(true);
        }
      }
      else if ("unset-alias".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L)
        {
          this.mAlias = paramContext;
          ClientLog.w(TAG, "unsetAlias success!");
          MiPushManager.getInstance().clearAlias();
        }
        else
        {
          ClientLog.w(TAG, "unsetAlias failed!");
          MiPushManager.getInstance().logoff();
        }
      }
      else if ("set-account".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L) {
          this.mAccount = paramContext;
        }
      }
      else if ("unset-account".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L) {
          this.mAccount = paramContext;
        }
      }
      else if ("subscribe-topic".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L) {
          this.mTopic = paramContext;
        }
      }
      else if ("unsubscibe-topic".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() != 0L) {}
      }
      else if ("accept-time".equals(str))
      {
        if (paramMiPushCommandMessage.getResultCode() == 0L)
        {
          this.mStartTime = paramContext;
          this.mEndTime = ((String)localObject);
        }
      }
      else {
        paramMiPushCommandMessage.getReason();
      }
    }
  }
  
  public void onNotificationMessageArrived(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    ClientLog.w(TAG, "onNotificationMessageArrived is called. " + paramMiPushMessage.toString());
    if (!TextUtils.isEmpty(paramMiPushMessage.getTopic())) {
      this.mTopic = paramMiPushMessage.getTopic();
    }
    for (;;)
    {
      MiPushManager.getInstance().onNotificationMessageArrived(paramContext, paramMiPushMessage);
      return;
      if (!TextUtils.isEmpty(paramMiPushMessage.getAlias())) {
        this.mAlias = paramMiPushMessage.getAlias();
      }
    }
  }
  
  public void onNotificationMessageClicked(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    ClientLog.w(TAG, "onNotificationMessageClicked is called. " + paramMiPushMessage.toString());
    if (!TextUtils.isEmpty(paramMiPushMessage.getTopic())) {
      this.mTopic = paramMiPushMessage.getTopic();
    }
    for (;;)
    {
      MiPushManager.getInstance().onNotificationMessageClicked(paramContext, paramMiPushMessage);
      return;
      if (!TextUtils.isEmpty(paramMiPushMessage.getAlias())) {
        this.mAlias = paramMiPushMessage.getAlias();
      }
    }
  }
  
  public void onReceivePassThroughMessage(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    ClientLog.w(TAG, "onReceivePassThroughMessage is called. " + paramMiPushMessage.toString());
    if (!TextUtils.isEmpty(paramMiPushMessage.getTopic())) {
      this.mTopic = paramMiPushMessage.getTopic();
    }
    for (;;)
    {
      MiPushManager.getInstance().onReceivePassThroughMessage(paramContext, paramMiPushMessage);
      return;
      if (!TextUtils.isEmpty(paramMiPushMessage.getAlias())) {
        this.mAlias = paramMiPushMessage.getAlias();
      }
    }
  }
  
  public void onReceiveRegisterResult(Context paramContext, MiPushCommandMessage paramMiPushCommandMessage)
  {
    ClientLog.w(TAG, "onReceiveRegisterResult is called. " + paramMiPushCommandMessage.toString());
    String str = paramMiPushCommandMessage.getCommand();
    paramContext = paramMiPushCommandMessage.getCommandArguments();
    if ((paramContext != null) && (paramContext.size() > 0))
    {
      paramContext = (String)paramContext.get(0);
      if (!"register".equals(str)) {
        break label92;
      }
      if (paramMiPushCommandMessage.getResultCode() == 0L) {
        this.mRegId = paramContext;
      }
    }
    for (;;)
    {
      Message.obtain();
      return;
      paramContext = null;
      break;
      label92:
      paramMiPushCommandMessage.getReason();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\receiver\MiPushMessageReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */