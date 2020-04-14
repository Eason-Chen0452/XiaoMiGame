package main;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.Window;
import channel.Opensdk;
import channel.adapter.GameAdapter;
import channel.adapter.IGameListener;
import com.aonesoft.lib.AoneClient;
import com.aonesoft.lib.AoneSdkProxy;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;
import org.json.JSONObject;

public class GameActivity
  extends Cocos2dxActivity
{
  View.OnKeyListener keyListener = new View.OnKeyListener()
  {
    public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      return GameActivity.this.onKeyDown(paramAnonymousInt, paramAnonymousKeyEvent);
    }
  };
  protected Opensdk opensdk;
  
  protected void initListeners(GameActivity paramGameActivity)
  {
    GameAdapter.Inst().registerListener("portal", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        if (paramAnonymousJSONObject.optBoolean("open"))
        {
          GameExt.showNewsView(paramAnonymousJSONObject.optString("portal_url"), paramAnonymousJSONObject.optInt("portal_w"), paramAnonymousJSONObject.optInt("portal_h"));
          return;
        }
        GameExt.hideNewsView();
      }
    });
  }
  
  protected void initOpensdk(GameActivity paramGameActivity)
  {
    this.opensdk = Opensdk.createOpensdk(paramGameActivity);
    this.opensdk.onActivityCreate(paramGameActivity);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    AoneSdkProxy.onActivityResult(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.opensdk.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.i("Activity", "-- onCreate");
    getWindow().setFlags(128, 128);
    AoneSdkProxy.load(this, paramBundle, Cocos2dxGLSurfaceView.getInstance());
    channel.adapter.GamePipe.ga = this;
    Utils.init(this);
    GameExt.init(this);
    initOpensdk(this);
    initListeners(this);
  }
  
  public void onDestroy()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityDestroy(false);
    }
    super.onDestroy();
    if (this.opensdk != null) {
      this.opensdk.onActivityDestroy(true);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (4 != paramInt) {
      bool = false;
    }
    do
    {
      return bool;
      if (AoneClient.hasExitUI())
      {
        AoneClient.Exit();
        return true;
      }
    } while ((this.opensdk != null) && (this.opensdk.onBackey()));
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    AoneSdkProxy.onNewIntent(paramIntent);
    if (this.opensdk != null) {
      this.opensdk.onNewIntent(paramIntent);
    }
    super.onNewIntent(paramIntent);
  }
  
  protected void onPause()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityPause(true);
    }
    super.onPause();
    if (this.opensdk != null) {
      this.opensdk.onActivityPause(false);
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    AoneSdkProxy.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onRestart()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityRestart(false);
    }
    super.onRestart();
    if (this.opensdk != null) {
      this.opensdk.onActivityRestart(true);
    }
  }
  
  protected void onResume()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityResume(true);
    }
    super.onResume();
    if (this.opensdk != null) {
      this.opensdk.onActivityResume(false);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    AoneSdkProxy.onSaveInstanceState(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityStart(true);
    }
    super.onStart();
    if (this.opensdk != null) {
      this.opensdk.onActivityStart(false);
    }
  }
  
  protected void onStop()
  {
    
    if (this.opensdk != null) {
      this.opensdk.onActivityStop(false);
    }
    super.onStop();
    if (this.opensdk != null) {
      this.opensdk.onActivityStop(true);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\main\GameActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */