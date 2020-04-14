package channel;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import channel.adapter.GameAdapter;
import channel.adapter.GamePipe;
import channel.adapter.IGameListener;
import java.io.PrintStream;
import main.GameActivity;
import main.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class SSWrapper
  extends Opensdk
{
  protected static String LANG = null;
  protected Activity activity_;
  protected Activity atvt;
  protected GameAdapter gmadptr;
  protected initCallback initListener = new initCallback()
  {
    public void onComplete(int paramAnonymousInt, Object paramAnonymousObject)
    {
      paramAnonymousObject = Opensdk.JsonWithInfo("init_callback", paramAnonymousInt);
      SSWrapper.this.tgInitCallback(paramAnonymousInt, (JSONObject)paramAnonymousObject);
    }
  };
  protected PurchaseDialogListener purchaseListener = new PurchaseDialogListener()
  {
    public void onComplete(int paramAnonymousInt, String paramAnonymousString)
    {
      try
      {
        paramAnonymousString = Opensdk.JsonWithInfo("purchase_callback", paramAnonymousInt);
        if (paramAnonymousInt != 0) {
          System.out.print(String.format("Purchase Failed, code = %d", new Object[] { Integer.valueOf(paramAnonymousInt) }));
        }
        SSWrapper.this.tgPurchaseCallback(paramAnonymousInt, paramAnonymousString);
        return;
      }
      catch (Exception paramAnonymousString)
      {
        paramAnonymousString.printStackTrace();
      }
    }
  };
  
  public void onActivityCreate(Activity paramActivity)
  {
    this.activity_ = paramActivity;
    this.atvt = paramActivity;
    registerListeners(GameAdapter.Inst());
  }
  
  public void onActivityDestroy(boolean paramBoolean)
  {
    if (!paramBoolean) {
      this.activity_.runOnUiThread(new Runnable()
      {
        public void run() {}
      });
    }
  }
  
  public void onActivityPause(boolean paramBoolean)
  {
    if (!paramBoolean) {
      this.activity_.runOnUiThread(new Runnable()
      {
        public void run() {}
      });
    }
  }
  
  public void onActivityRestart(boolean paramBoolean)
  {
    if (!paramBoolean) {
      this.activity_.runOnUiThread(new Runnable()
      {
        public void run() {}
      });
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onActivityResume(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.activity_.runOnUiThread(new Runnable()
      {
        public void run() {}
      });
    }
  }
  
  public void onActivityStart(boolean paramBoolean) {}
  
  public void onActivityStop(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.activity_.runOnUiThread(new Runnable()
      {
        public void run() {}
      });
    }
  }
  
  public boolean onBackey()
  {
    this.activity_.runOnUiThread(new Runnable()
    {
      public void run()
      {
        new AlertDialog.Builder(SSWrapper.this.activity_).setMessage("您确定要退出游戏吗？").setPositiveButton("确定", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            SSWrapper.this.onExit();
          }
        }).setNeutralButton("取消", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
        }).create().show();
      }
    });
    return true;
  }
  
  protected void onCreateRole(JSONObject paramJSONObject) {}
  
  protected void onEnterServer(JSONObject paramJSONObject) {}
  
  public void onExit()
  {
    ((GameActivity)this.atvt).finish();
    ((GameActivity)this.atvt).onDestroy();
    System.exit(0);
  }
  
  public void onExitDialogCanceled() {}
  
  public void onExitDialogConfirmed()
  {
    onExit();
  }
  
  protected void onLogin() {}
  
  public void onNewIntent(Intent paramIntent) {}
  
  protected void onPlayVideos() {}
  
  protected void onPurchase(JSONObject paramJSONObject) {}
  
  protected void onRoleLevelUp(JSONObject paramJSONObject) {}
  
  protected void registerListeners(GameAdapter paramGameAdapter)
  {
    this.gmadptr = paramGameAdapter;
    this.gmadptr.registerListener("init_lang", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        try
        {
          SSWrapper.LANG = paramAnonymousJSONObject.getString("lang_id");
          SSWrapper.this.activity_.runOnUiThread(new Runnable()
          {
            public void run() {}
          });
          return;
        }
        catch (JSONException paramAnonymousString)
        {
          paramAnonymousString.printStackTrace();
        }
      }
    });
    this.gmadptr.registerListener("login", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onLogin();
          }
        });
      }
    });
    this.gmadptr.registerListener("stt-createrole", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, final JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onCreateRole(paramAnonymousJSONObject);
          }
        });
      }
    });
    this.gmadptr.registerListener("stt-rolelevelup", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, final JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onRoleLevelUp(paramAnonymousJSONObject);
          }
        });
      }
    });
    this.gmadptr.registerListener("enterserver", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, final JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onEnterServer(paramAnonymousJSONObject);
          }
        });
      }
    });
    this.gmadptr.registerListener("purchase", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, final JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onPurchase(paramAnonymousJSONObject);
          }
        });
      }
    });
    this.gmadptr.registerListener("usercenter", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run() {}
        });
      }
    });
    this.gmadptr.registerListener("MP4", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        SSWrapper.this.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            SSWrapper.this.onPlayVideos();
          }
        });
      }
    });
  }
  
  protected void tgInitCallback(int paramInt, JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject.put("freespace", Utils.getAvailableSpace());
      paramJSONObject.put("memory", Utils.getTotalMemory());
      GamePipe.PushToGame(paramJSONObject);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void tgLoginCallback(int paramInt, JSONObject paramJSONObject)
  {
    GamePipe.PushToGame(paramJSONObject);
  }
  
  protected void tgLogoutFromApp()
  {
    GamePipe.PushToGameWithEidAndCode("logout_callback", 0);
  }
  
  protected void tgPurchaseCallback(int paramInt, JSONObject paramJSONObject)
  {
    GamePipe.PushToGame(paramJSONObject);
  }
  
  public static abstract interface PurchaseDialogListener
  {
    public abstract void onComplete(int paramInt, String paramString);
  }
  
  public static abstract interface initCallback
  {
    public abstract void onComplete(int paramInt, Object paramObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\channel\SSWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */