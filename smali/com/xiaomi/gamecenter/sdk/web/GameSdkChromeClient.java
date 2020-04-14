package com.xiaomi.gamecenter.sdk.web;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class GameSdkChromeClient
  extends WebChromeClient
{
  private a a;
  
  public GameSdkChromeClient(a parama)
  {
    this.a = parama;
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    this.a.a(paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\GameSdkChromeClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */