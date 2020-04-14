package main;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.Display;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import channel.Opensdk;
import channel.adapter.GameAdapter;
import channel.adapter.IGameListener;
import java.io.File;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONException;
import org.json.JSONObject;

public class GameExt
{
  protected static Cocos2dxActivity activity_;
  static LinearLayout portalayout;
  static WebView portalview;
  
  public static void delete(String paramString)
  {
    delete_(new File(paramString));
  }
  
  public static void delete_(File paramFile)
  {
    if (paramFile.isFile()) {
      paramFile.delete();
    }
    while (!paramFile.isDirectory()) {
      return;
    }
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile.delete();
      return;
    }
    int i = 0;
    while (i < arrayOfFile.length)
    {
      delete_(arrayOfFile[i]);
      i += 1;
    }
    paramFile.delete();
  }
  
  static void hideNewsView()
  {
    activity_.runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (GameExt.portalayout == null) {
          return;
        }
        GameExt.portalview.stopLoading();
        GameExt.portalayout.removeView(GameExt.portalview);
        GameExt.portalayout.clearFocus();
        GameExt.portalayout.setVisibility(8);
        GameExt.portalview.clearFocus();
        GameExt.portalview.destroy();
        GameExt.portalayout = null;
        GameExt.portalview = null;
      }
    });
  }
  
  public static void init(Activity paramActivity)
  {
    activity_ = (Cocos2dxActivity)paramActivity;
    registerListener();
  }
  
  public static void openUrl(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    activity_.startActivity(localIntent);
  }
  
  public static void registerListener()
  {
    GameAdapter.Inst().registerListener("openurl", new IGameListener()
    {
      public void onEvent(final String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        try
        {
          paramAnonymousString = paramAnonymousJSONObject.getString("url");
          GameExt.activity_.runOnUiThread(new Runnable()
          {
            public void run()
            {
              GameExt.openUrl(paramAnonymousString);
            }
          });
          return;
        }
        catch (JSONException paramAnonymousString)
        {
          paramAnonymousString.printStackTrace();
        }
      }
    });
    GameAdapter.Inst().registerListener("exit", new IGameListener()
    {
      public void onEvent(String paramAnonymousString, JSONObject paramAnonymousJSONObject)
      {
        GameExt.activity_.runOnUiThread(new Runnable()
        {
          public void run()
          {
            Opensdk.inst().onExit();
          }
        });
      }
    });
  }
  
  static void showNewsView(final String paramString, int paramInt1, final int paramInt2)
  {
    activity_.runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (GameExt.portalayout != null) {
          return;
        }
        GameExt.portalayout = new LinearLayout(GameExt.activity_);
        GameExt.portalayout.setFocusable(false);
        GameExt.portalayout.setFocusableInTouchMode(false);
        GameExt.activity_.addContentView(GameExt.portalayout, new ViewGroup.LayoutParams(-1, -1));
        GameExt.portalview = new WebView(GameExt.activity_);
        GameExt.portalview.setFocusable(false);
        GameExt.portalview.setFocusableInTouchMode(false);
        GameExt.portalayout.addView(GameExt.portalview);
        Object localObject = GameExt.activity_.getWindowManager().getDefaultDisplay();
        int i = ((Display)localObject).getWidth();
        int j = ((Display)localObject).getHeight();
        localObject = (LinearLayout.LayoutParams)GameExt.portalview.getLayoutParams();
        ((LinearLayout.LayoutParams)localObject).leftMargin = ((i - this.val$width) / 2);
        ((LinearLayout.LayoutParams)localObject).topMargin = ((j - paramInt2) / 2);
        ((LinearLayout.LayoutParams)localObject).width = this.val$width;
        ((LinearLayout.LayoutParams)localObject).height = paramInt2;
        GameExt.portalview.setLayoutParams((ViewGroup.LayoutParams)localObject);
        GameExt.portalview.loadUrl(paramString);
        GameExt.portalview.getSettings().setUseWideViewPort(true);
        GameExt.portalview.getSettings().setLoadWithOverviewMode(true);
        GameExt.portalview.setBackgroundColor(0);
        GameExt.portalview.setWebViewClient(new WebViewClient()
        {
          public boolean shouldOverrideUrlLoading(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            if (paramAnonymous2String.indexOf("tel:") < 0)
            {
              paramAnonymous2WebView.loadUrl(paramAnonymous2String);
              Log.i("Confirm!!", "load url : " + paramAnonymous2String);
            }
            return true;
          }
        });
      }
    });
  }
  
  public void setIsTouches(boolean paramBoolean) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\main\GameExt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */