package com.xiaomi.gamecenter.sdk.notice;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import cn.com.wali.basetool.log.Logger;
import com.google.protobuf.GeneratedMessage;
import com.mi.milink.sdk.aidl.PacketData;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.milink.MiLinkManager;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.dialog.DialogUtils;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.NoticeHelper;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils.a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.GetNoticeConfigResp;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.NoticeConfig;

public class NoticeManager
{
  private static final SparseArray<String> a;
  private static NoticeManager d;
  private bg b = null;
  private NoticeHandler c;
  private RequestListener e;
  private Queue<NoticeConfigProtos.NoticeConfig> f;
  private Activity g;
  private a h;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    a = localSparseArray;
    localSparseArray.put(0, "success");
    a.put(4001, "invalid param");
    a.put(4002, "invalid proto");
    a.put(4003, "db error");
    a.put(4004, "server error");
    a.put(4005, "no match notice");
  }
  
  public static NoticeManager a()
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = new NoticeManager();
      }
      return d;
    }
    finally {}
  }
  
  public final void a(Activity paramActivity, a parama)
  {
    this.g = paramActivity;
    this.h = parama;
    if ((this.f != null) && (this.f.size() > 0)) {
      this.c.a(this.f, null);
    }
    while (this.h == null) {
      return;
    }
    this.h.a();
  }
  
  public final void a(Context paramContext, bg parambg)
  {
    NoticeHelper.a(paramContext);
    Image.init(paramContext);
    this.c = new NoticeHandler(Looper.getMainLooper());
    this.b = parambg;
  }
  
  public final void a(Context paramContext, RequestListener paramRequestListener)
  {
    try
    {
      if (this.c.b != null)
      {
        Logger.b("MiGameSDK.NoticeManager", "notice is showing.");
        return;
      }
      this.e = paramRequestListener;
      new NoticeTask(paramContext).execute(new String[] { "gamesdk.config.getinitconfig" });
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private class NoticeHandler
    extends Handler
  {
    NoticeConfigProtos.NoticeConfig a = null;
    Queue<NoticeConfigProtos.NoticeConfig> b = null;
    
    public NoticeHandler(Looper paramLooper)
    {
      super();
    }
    
    public final void a(Queue<NoticeConfigProtos.NoticeConfig> paramQueue, NoticeConfigProtos.NoticeConfig paramNoticeConfig)
    {
      Logger.a("MiGameSDK.NoticeManager", "postToShowNotice : " + paramQueue);
      Message localMessage = obtainMessage(1000);
      localMessage.obj = paramQueue;
      if (paramNoticeConfig != null) {
        localMessage.getData().putSerializable("current.config", paramNoticeConfig);
      }
      localMessage.sendToTarget();
    }
    
    public void handleMessage(Message paramMessage)
    {
      Logger.a("MiGameSDK.NoticeManager", "currentActivity " + NoticeManager.b(NoticeManager.this));
      if (NoticeManager.b(NoticeManager.this) == null) {
        if (NoticeManager.c(NoticeManager.this) != null) {
          NoticeManager.c(NoticeManager.this).b();
        }
      }
      label147:
      do
      {
        do
        {
          Queue localQueue;
          do
          {
            do
            {
              do
              {
                return;
                switch (paramMessage.what)
                {
                default: 
                  return;
                case 1000: 
                  Logger.a("MiGameSDK.NoticeManager", "handler : " + paramMessage.obj);
                  if (paramMessage.obj != null) {
                    break label147;
                  }
                }
              } while (NoticeManager.c(NoticeManager.this) == null);
              NoticeManager.c(NoticeManager.this).b();
              return;
              localQueue = (Queue)paramMessage.obj;
              if (localQueue != null) {
                break;
              }
            } while (NoticeManager.c(NoticeManager.this) == null);
            NoticeManager.c(NoticeManager.this).b();
            return;
            localObject = (NoticeConfigProtos.NoticeConfig)paramMessage.getData().getSerializable("current.config");
            paramMessage = (Message)localObject;
            if (localObject == null) {
              paramMessage = (NoticeConfigProtos.NoticeConfig)localQueue.poll();
            }
            this.a = paramMessage;
            this.b = localQueue;
            if (paramMessage != null) {
              break;
            }
          } while (NoticeManager.c(NoticeManager.this) == null);
          NoticeManager.c(NoticeManager.this).b();
          return;
          Object localObject = NoticeManager.b(NoticeManager.this).getPackageName();
          NoticeHelper.a();
          boolean bool = NoticeHelper.a((String)localObject, paramMessage.getNoticeId());
          Logger.a("MiGameSDK.NoticeManager", "show notice queue: " + bool);
          if (bool)
          {
            paramMessage = new NoticeConfig(paramMessage);
            DialogUtils.a(NoticeManager.b(NoticeManager.this), paramMessage, NoticeManager.a(NoticeManager.this), new b(this, (String)localObject, localQueue), new NoticeManager.NoticeUrlActionListener(NoticeManager.this, paramMessage));
            return;
          }
          if (localQueue.size() > 0)
          {
            a(localQueue, null);
            return;
          }
        } while (NoticeManager.c(NoticeManager.this) == null);
        NoticeManager.c(NoticeManager.this).a();
        return;
        DialogUtils.a();
        return;
      } while ((this.a == null) || (this.b == null));
      a(this.b, this.a);
    }
  }
  
  private class NoticeTask
    extends AsyncTask<String, Void, NoticeManager.a>
  {
    private Context b;
    
    public NoticeTask(Context paramContext)
    {
      this.b = paramContext;
    }
    
    private NoticeManager.a a(String... paramVarArgs)
    {
      Object localObject1 = null;
      if (paramVarArgs != null) {
        localObject1 = paramVarArgs[0];
      }
      paramVarArgs = new NoticeManager.a(NoticeManager.this, (byte)0);
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        paramVarArgs.b = "milink cmd can not be null.";
        return paramVarArgs;
      }
      if (!MiLinkManager.getInstance().isMilinkLogined())
      {
        paramVarArgs.b = "milink is not logined.";
        return paramVarArgs;
      }
      try
      {
        Object localObject2 = Helper.a(this.b);
        Logger.a("MiGameSDK.NoticeManager", (String)localObject1 + " req " + localObject2);
        localObject2 = MiLinkManager.getInstance().sendMilinkRequest((String)localObject1, (GeneratedMessage)localObject2);
        if (localObject2 == null)
        {
          paramVarArgs.b = "packetData is null.";
          return paramVarArgs;
        }
        localObject2 = NoticeConfigProtos.GetNoticeConfigResp.parseFrom(((PacketData)localObject2).getData());
        Logger.a("MiGameSDK.NoticeManager", (String)localObject1 + " resp " + localObject2);
        if (((NoticeConfigProtos.GetNoticeConfigResp)localObject2).getRetCode() != 0)
        {
          localObject1 = ((NoticeConfigProtos.GetNoticeConfigResp)localObject2).getRetCode() + " : " + (String)NoticeManager.b().get(((NoticeConfigProtos.GetNoticeConfigResp)localObject2).getRetCode());
          Logger.a("MiGameSDK.NoticeManager", "Notice server resp err : " + (String)localObject1);
          paramVarArgs.b = ((String)localObject1);
          return paramVarArgs;
        }
        localObject1 = ((NoticeConfigProtos.GetNoticeConfigResp)localObject2).getNoticeConfigList();
        if ((localObject1 != null) && (((List)localObject1).size() > 0))
        {
          Logger.a("MiGameSDK.NoticeManager", "notice num " + ((List)localObject1).size());
          paramVarArgs.a = new LinkedList();
          localObject1 = ((List)localObject1).iterator();
        }
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (NoticeConfigProtos.NoticeConfig)((Iterator)localObject1).next();
          paramVarArgs.a.add(localObject2);
          continue;
          return paramVarArgs;
        }
      }
      catch (Exception localException)
      {
        Logger.a("MiGameSDK.NoticeManager", "request error.", localException);
        paramVarArgs.b = localException.getMessage();
      }
      for (;;)
      {
        Logger.a("MiGameSDK.NoticeManager", "result.configs  : " + paramVarArgs.a);
      }
    }
  }
  
  private class NoticeUrlActionListener
    implements UrlUtils.a
  {
    private NoticeConfig b;
    
    public NoticeUrlActionListener(NoticeConfig paramNoticeConfig)
    {
      this.b = paramNoticeConfig;
    }
  }
  
  private final class a
  {
    Queue<NoticeConfigProtos.NoticeConfig> a;
    String b;
    
    private a() {}
    
    public final String toString()
    {
      return "Result{configs=" + this.a + ", errorMsg='" + this.b + '\'' + '}';
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\notice\NoticeManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */