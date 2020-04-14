package com.aonesoft.lib;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.TextView;
import java.io.PrintStream;
import org.cocos2dx.plugin.PluginWrapper;

public class AoneUpdateWithAppVersion
{
  private static final String TAG = "AoneUpdateWithAppVersion";
  private static Dialog mAnnounceDialog;
  private static View mAnnounceDialogView;
  private static Context mContext;
  private static Dialog mUpdateDialog;
  private static View mUpdateDialogView;
  private static WebView mWebview;
  private static WebChromeClient wcc = new WebChromeClient()
  {
    public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
    {
      super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
      if (paramAnonymousInt == 100)
      {
        System.out.println("--------100");
        return;
      }
      System.out.println("newProgress=" + paramAnonymousInt);
    }
  };
  private static WebViewClient webViewClient = new WebViewClient()
  {
    public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      System.out.println("onPageFinished===url===" + paramAnonymousString);
    }
    
    public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
    {
      super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
      System.out.println("onPageStarted===url===" + paramAnonymousString);
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      System.out.println("shouldOverrideUrlLoading===url==" + paramAnonymousString);
      if (paramAnonymousString.equals("http://local.aonesdk.com/back_to_game.html"))
      {
        System.out.println("qwerqwer");
        PluginWrapper.runOnGLThread(new Runnable()
        {
          public void run()
          {
            AoneClient.nativeAnnounceCallback();
            AoneUpdateWithAppVersion.mAnnounceDialog.dismiss();
          }
        });
        return true;
      }
      return false;
    }
  };
  
  private static void bindUpdateDialogEvent(String paramString, int paramInt)
  {
    Button localButton1 = (Button)mUpdateDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "aonesdk_button_cancel"));
    System.out.println("updateType==" + paramInt);
    Button localButton2 = (Button)mUpdateDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "aonesdk_button_confirm"));
    localButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PluginWrapper.runOnGLThread(new Runnable()
        {
          public void run()
          {
            AoneClient.nativeUpdateCallback();
            AoneUpdateWithAppVersion.mUpdateDialog.dismiss();
            if (this.val$updateType == 1) {
              AoneUpdateWithAppVersion.mUpdateDialog.dismiss();
            }
            while (this.val$updateType != 2) {
              return;
            }
            AoneUpdateWithAppVersion.mUpdateDialog.dismiss();
            ((Activity)AoneUpdateWithAppVersion.mContext).finish();
            System.exit(0);
          }
        });
      }
    });
    localButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(AoneUpdateWithAppVersion.this));
        ((Activity)AoneUpdateWithAppVersion.mContext).startActivity(paramAnonymousView);
      }
    });
  }
  
  public static String getAppVersion()
  {
    try
    {
      Object localObject = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0);
      String str = ((PackageInfo)localObject).versionName;
      int i = ((PackageInfo)localObject).versionCode;
      Log.d("AoneUpdateWithAppVersion", "getAppVersion=1=versionName=" + str);
      Log.d("AoneUpdateWithAppVersion", "getAppVersion=1=versionCode=" + i);
      localObject = str.split("\\.");
      i = 0;
      for (;;)
      {
        if (i >= localObject.length)
        {
          i = localObject.length - 1;
          Log.d("AoneUpdateWithAppVersion", "num==" + i);
          if (i == 2)
          {
            Log.d("AoneUpdateWithAppVersion", "getAppVersion=2=versionName==" + str);
            return str;
          }
        }
        else
        {
          try
          {
            Integer.parseInt(localObject[i]);
            i += 1;
          }
          catch (Exception localException)
          {
            Log.d("AoneUpdateWithAppVersion", "getAppVersion=6=versionName==" + str);
            return "0.0.0";
          }
        }
      }
      if (i == 1)
      {
        Log.d("AoneUpdateWithAppVersion", "getAppVersion=3=versionName==" + str);
        return str + ".0";
      }
      if (i == 0)
      {
        Log.d("AoneUpdateWithAppVersion", "getAppVersion=4=versionName==" + str);
        return str + ".0.0";
      }
      if (i >= 3)
      {
        Log.d("AoneUpdateWithAppVersion", "getAppVersion=5=versionName==" + str);
        str = str.substring(0, (localException[0] + localException[1] + localException[2]).length() + 2);
        return str;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "1.0.0";
  }
  
  private static WindowManager.LayoutParams getDialogLayoutParams(Dialog paramDialog)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Activity)mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    ((Activity)mContext).getWindowManager().getDefaultDisplay();
    paramDialog = paramDialog.getWindow().getAttributes();
    paramDialog.width = localDisplayMetrics.widthPixels;
    paramDialog.height = localDisplayMetrics.heightPixels;
    return paramDialog;
  }
  
  public static void init(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private static void initUpdateWebView(String paramString)
  {
    mWebview = (WebView)mAnnounceDialogView.findViewById(AoneUiUtils.getResourceId(mContext, "id", "announce_webview"));
    mWebview.setVerticalScrollBarEnabled(false);
    mWebview.setHorizontalScrollBarEnabled(false);
    mWebview.getSettings().setJavaScriptEnabled(true);
    mWebview.getSettings().setCacheMode(2);
    mWebview.setBackgroundColor(0);
    mWebview.setWebViewClient(webViewClient);
    mWebview.setWebChromeClient(wcc);
    mWebview.setScrollbarFadingEnabled(false);
    mWebview.loadUrl(paramString);
  }
  
  public static void showAnnounceDialog(String paramString)
  {
    mAnnounceDialog = new AlertDialog.Builder(mContext).create();
    mAnnounceDialog.show();
    mAnnounceDialogView = View.inflate(mContext.getApplicationContext(), AoneUiUtils.getResourceId(mContext, "layout", "aonesdk_announce_dialog"), null);
    Object localObject = mAnnounceDialog.getWindow();
    ((Window)localObject).setBackgroundDrawable(null);
    ((Window)localObject).setContentView(mAnnounceDialogView);
    mAnnounceDialog.setCanceledOnTouchOutside(false);
    mAnnounceDialog.setCancelable(false);
    localObject = new DisplayMetrics();
    ((Activity)mContext).getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    ((Activity)mContext).getWindowManager().getDefaultDisplay();
    WindowManager.LayoutParams localLayoutParams = mAnnounceDialog.getWindow().getAttributes();
    localLayoutParams.width = ((DisplayMetrics)localObject).widthPixels;
    localLayoutParams.height = ((DisplayMetrics)localObject).heightPixels;
    mAnnounceDialog.getWindow().setAttributes(localLayoutParams);
    initUpdateWebView(paramString);
  }
  
  public static void showUpdateDialog(final String paramString1, String paramString2, final int paramInt)
  {
    PluginWrapper.runOnMainThread(new Runnable()
    {
      public void run()
      {
        AoneUpdateWithAppVersion.mUpdateDialog = new AlertDialog.Builder(AoneUpdateWithAppVersion.mContext).create();
        AoneUpdateWithAppVersion.mUpdateDialog.show();
        AoneUpdateWithAppVersion.mUpdateDialogView = View.inflate(AoneUpdateWithAppVersion.mContext.getApplicationContext(), AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "layout", "aonesdk_update_dialog"), null);
        Window localWindow = AoneUpdateWithAppVersion.mUpdateDialog.getWindow();
        localWindow.setBackgroundDrawable(null);
        localWindow.setContentView(AoneUpdateWithAppVersion.mUpdateDialogView);
        Object localObject = new DisplayMetrics();
        ((Activity)AoneUpdateWithAppVersion.mContext).getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
        ((Activity)AoneUpdateWithAppVersion.mContext).getWindowManager().getDefaultDisplay();
        localObject = localWindow.getAttributes();
        System.out.println("****************uaeifo");
        System.out.println(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "dimen", "aonesdk_update_dialog_width"));
        System.out.println((int)AoneUpdateWithAppVersion.mContext.getResources().getDimension(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "dimen", "aonesdk_update_dialog_width")));
        System.out.println(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "dimen", "aonesdk_update_dialog_height"));
        ((WindowManager.LayoutParams)localObject).width = ((int)AoneUpdateWithAppVersion.mContext.getResources().getDimension(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "dimen", "aonesdk_update_dialog_width")));
        ((WindowManager.LayoutParams)localObject).height = ((int)AoneUpdateWithAppVersion.mContext.getResources().getDimension(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "dimen", "aonesdk_update_dialog_height")));
        localWindow.setAttributes((WindowManager.LayoutParams)localObject);
        AoneUpdateWithAppVersion.mUpdateDialog.setCanceledOnTouchOutside(false);
        AoneUpdateWithAppVersion.mUpdateDialog.setCancelable(false);
        ((TextView)AoneUpdateWithAppVersion.mUpdateDialogView.findViewById(AoneUiUtils.getResourceId(AoneUpdateWithAppVersion.mContext, "id", "aonesdk_update_content"))).setText(AoneUpdateWithAppVersion.this);
        AoneUpdateWithAppVersion.bindUpdateDialogEvent(paramString1, paramInt);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneUpdateWithAppVersion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */