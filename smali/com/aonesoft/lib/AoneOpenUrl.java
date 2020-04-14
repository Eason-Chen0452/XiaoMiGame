package com.aonesoft.lib;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.TextView;
import java.io.File;

@SuppressLint({"SetJavaScriptEnabled"})
public class AoneOpenUrl
  extends Activity
{
  private static Activity s_activity;
  private final int FILE_SELECTED = 1000;
  private String TAG = "AoneOpenUrl";
  private ValueCallback<Uri> mUploadMessage;
  public ValueCallback<Uri[]> mUploadMessages;
  private String mUrl = "";
  private WebView mWebview;
  private WebChromeClient wcc = new WebChromeClient()
  {
    public boolean onShowFileChooser(WebView paramAnonymousWebView, ValueCallback<Uri[]> paramAnonymousValueCallback, WebChromeClient.FileChooserParams paramAnonymousFileChooserParams)
    {
      if (AoneOpenUrl.this.mUploadMessage != null) {
        return false;
      }
      Log.i(AoneOpenUrl.this.TAG, "hhh onShowFileChooser");
      AoneOpenUrl.this.mUploadMessages = paramAnonymousValueCallback;
      paramAnonymousWebView = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
      AoneOpenUrl.s_activity.startActivityForResult(paramAnonymousWebView, 1000);
      return true;
    }
    
    public void openFileChooser(ValueCallback<Uri> paramAnonymousValueCallback)
    {
      if (AoneOpenUrl.this.mUploadMessage != null) {
        return;
      }
      Log.i(AoneOpenUrl.this.TAG, "hhh openFileChooser < 3.0");
      AoneOpenUrl.this.mUploadMessage = paramAnonymousValueCallback;
      paramAnonymousValueCallback = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
      AoneOpenUrl.s_activity.startActivityForResult(paramAnonymousValueCallback, 1000);
    }
    
    public void openFileChooser(ValueCallback paramAnonymousValueCallback, String paramAnonymousString)
    {
      if (AoneOpenUrl.this.mUploadMessage != null) {
        return;
      }
      Log.i(AoneOpenUrl.this.TAG, "hhh openFileChooser 3.0+");
      AoneOpenUrl.this.mUploadMessage = paramAnonymousValueCallback;
      paramAnonymousValueCallback = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
      AoneOpenUrl.s_activity.startActivityForResult(paramAnonymousValueCallback, 1000);
    }
    
    public void openFileChooser(ValueCallback<Uri> paramAnonymousValueCallback, String paramAnonymousString1, String paramAnonymousString2)
    {
      if (AoneOpenUrl.this.mUploadMessage != null) {
        return;
      }
      Log.i(AoneOpenUrl.this.TAG, "hhh openFileChooser > 4.1.1");
      AoneOpenUrl.this.mUploadMessage = paramAnonymousValueCallback;
      paramAnonymousValueCallback = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
      AoneOpenUrl.s_activity.startActivityForResult(paramAnonymousValueCallback, 1000);
    }
  };
  
  private String getDataColumn(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    Context localContext = null;
    try
    {
      paramContext = paramContext.getContentResolver().query(paramUri, new String[] { "_data" }, paramString, paramArrayOfString, null);
      if (paramContext != null)
      {
        localContext = paramContext;
        if (paramContext.moveToFirst())
        {
          localContext = paramContext;
          paramUri = paramContext.getString(paramContext.getColumnIndexOrThrow("_data"));
          return paramUri;
        }
      }
    }
    finally
    {
      if (localContext != null) {
        localContext.close();
      }
    }
    if (paramContext != null) {
      paramContext.close();
    }
    return null;
  }
  
  @TargetApi(19)
  private String getPath(Context paramContext, Uri paramUri)
  {
    Object localObject1 = null;
    int i;
    if (Build.VERSION.SDK_INT >= 19)
    {
      i = 1;
      if ((i == 0) || (!DocumentsContract.isDocumentUri(paramContext, paramUri))) {
        break label222;
      }
      if (!isExternalStorageDocument(paramUri)) {
        break label91;
      }
      paramContext = DocumentsContract.getDocumentId(paramUri).split(":");
      if ("primary".equalsIgnoreCase(paramContext[0])) {
        localObject1 = Environment.getExternalStorageDirectory() + "/" + paramContext[1];
      }
    }
    label91:
    label222:
    do
    {
      do
      {
        return (String)localObject1;
        i = 0;
        break;
        if (isDownloadsDocument(paramUri))
        {
          paramUri = DocumentsContract.getDocumentId(paramUri);
          return getDataColumn(paramContext, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(paramUri).longValue()), null, null);
        }
      } while (!isMediaDocument(paramUri));
      localObject1 = DocumentsContract.getDocumentId(paramUri).split(":");
      Object localObject2 = localObject1[0];
      paramUri = null;
      if ("image".equals(localObject2)) {
        paramUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      }
      for (;;)
      {
        return getDataColumn(paramContext, paramUri, "_id=?", new String[] { localObject1[1] });
        if ("video".equals(localObject2)) {
          paramUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else if ("audio".equals(localObject2)) {
          paramUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        }
      }
      if ("content".equalsIgnoreCase(paramUri.getScheme())) {
        return getDataColumn(paramContext, paramUri, null, null);
      }
    } while (!"file".equalsIgnoreCase(paramUri.getScheme()));
    return paramUri.getPath();
  }
  
  private boolean isDownloadsDocument(Uri paramUri)
  {
    return "com.android.providers.downloads.documents".equals(paramUri.getAuthority());
  }
  
  private boolean isExternalStorageDocument(Uri paramUri)
  {
    return "com.android.externalstorage.documents".equals(paramUri.getAuthority());
  }
  
  private boolean isMediaDocument(Uri paramUri)
  {
    return "com.android.providers.media.documents".equals(paramUri.getAuthority());
  }
  
  private void loadUrl()
  {
    this.mWebview = ((WebView)s_activity.findViewById(AoneUiUtils.getResourceId(s_activity, "id", "urlopen_web")));
    this.mWebview.getSettings().setJavaScriptEnabled(true);
    this.mWebview.getSettings().setDomStorageEnabled(true);
    this.mWebview.getSettings().setAllowContentAccess(true);
    this.mWebview.setVerticalScrollBarEnabled(false);
    this.mWebview.setHorizontalScrollBarEnabled(false);
    this.mWebview.getSettings().setCacheMode(2);
    this.mWebview.getSettings().setDomStorageEnabled(true);
    this.mWebview.setBackgroundColor(0);
    this.mWebview.setScrollbarFadingEnabled(false);
    WebViewClient local3 = new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        paramAnonymousString = paramAnonymousWebView.getTitle();
        Log.i(AoneOpenUrl.this.TAG, "title is:" + paramAnonymousString);
        if ((paramAnonymousString.indexOf("http") == -1) && (paramAnonymousString.indexOf("https") == -1))
        {
          paramAnonymousWebView = paramAnonymousString;
          if (paramAnonymousString.indexOf("www.") == -1) {}
        }
        else
        {
          paramAnonymousWebView = "";
        }
        if (!TextUtils.isEmpty(paramAnonymousWebView)) {
          ((TextView)AoneOpenUrl.s_activity.findViewById(AoneUiUtils.getResourceId(AoneOpenUrl.s_activity, "id", "urlopen_title"))).setText(paramAnonymousWebView);
        }
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        Log.i(AoneOpenUrl.this.TAG, "AoneOpenUrl shouldOverrideUrlLoading  url:" + paramAnonymousString);
        if ((paramAnonymousString.startsWith("https://pay.ipaynow.cn/wxpay")) || (paramAnonymousString.startsWith("https://mclient.alipay.com")))
        {
          paramAnonymousWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString));
          AoneOpenUrl.this.startActivity(paramAnonymousWebView);
          return true;
        }
        return super.shouldOverrideUrlLoading(paramAnonymousWebView, paramAnonymousString);
      }
    };
    this.mWebview.setWebViewClient(local3);
    this.mWebview.setWebChromeClient(this.wcc);
    this.mWebview.loadUrl(this.mUrl);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Log.i(this.TAG, "hhh onActivityResult1:" + paramIntent + " resultCode:" + paramInt2);
    Object localObject;
    if (paramInt1 == 1000)
    {
      if (this.mUploadMessage != null)
      {
        if ((paramIntent != null) && (paramInt2 == -1)) {
          break label255;
        }
        localObject = null;
        Log.i(this.TAG, "hhh onActivityResult2:" + localObject + " data:" + paramIntent);
        if (localObject == null) {
          break label264;
        }
        localObject = Uri.fromFile(new File(getPath(s_activity.getApplicationContext(), (Uri)localObject)));
        this.mUploadMessage.onReceiveValue(localObject);
      }
      label144:
      if (this.mUploadMessages != null)
      {
        if ((paramIntent != null) && (paramInt2 == -1)) {
          break label277;
        }
        localObject = null;
        label163:
        Log.i(this.TAG, "hhh onActivityResult3:" + localObject + " data:" + paramIntent);
        if (localObject == null) {
          break label286;
        }
        paramIntent = Uri.fromFile(new File(getPath(s_activity.getApplicationContext(), (Uri)localObject)));
        this.mUploadMessages.onReceiveValue(new Uri[] { paramIntent });
      }
    }
    for (;;)
    {
      this.mUploadMessage = null;
      this.mUploadMessages = null;
      return;
      label255:
      localObject = paramIntent.getData();
      break;
      label264:
      this.mUploadMessage.onReceiveValue(null);
      break label144;
      label277:
      localObject = paramIntent.getData();
      break label163;
      label286:
      this.mUploadMessages.onReceiveValue(null);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    setContentView(AoneUiUtils.getResourceId(this, "layout", "activity_urlopen"));
    s_activity = this;
    this.mUrl = getIntent().getStringExtra("url");
    ((ImageButton)findViewById(AoneUiUtils.getResourceId(this, "id", "back_button"))).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AoneOpenUrl.this.finish();
      }
    });
    loadUrl();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Log.i(this.TAG, "onKeyDown:" + paramInt + " " + this.mWebview.canGoBack());
    if ((paramInt == 4) && (this.mWebview.canGoBack()))
    {
      this.mWebview.goBack();
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneOpenUrl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */