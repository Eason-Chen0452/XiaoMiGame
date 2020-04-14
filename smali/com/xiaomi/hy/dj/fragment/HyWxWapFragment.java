package com.xiaomi.hy.dj.fragment;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.net.URLDecoder;
import java.util.Map;

public class HyWxWapFragment
  extends BaseFragment
{
  public static final String d = "HyWxWapFragment";
  private byte[] e = new byte[0];
  private WebView f;
  private String g;
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    this.g = paramString1;
    paramString1 = URLDecoder.decode(paramString2);
    paramString2 = URLDecoder.decode(paramString3);
    this.f.loadDataWithBaseURL(paramString2, "<script>\n        window.location.href=\"" + paramString1 + "\";\n    </script>", "text/html", "UTF-8", null);
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.a.a("WXMWEB");
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(173);
      b(173);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = new RelativeLayout(getActivity());
    paramLayoutInflater.setBackgroundColor(0);
    paramLayoutInflater.setGravity(17);
    paramViewGroup = new RelativeLayout.LayoutParams(0, 0);
    this.f = new WebView(getActivity());
    this.f.getSettings().setJavaScriptEnabled(true);
    this.f.setBackgroundColor(0);
    this.f.setLayerType(1, null);
    this.f.getSettings().setDisplayZoomControls(false);
    this.f.getSettings().setSupportZoom(false);
    this.f.setWebViewClient(new a());
    paramLayoutInflater.addView(this.f, paramViewGroup);
    return paramLayoutInflater;
  }
  
  public void onResume()
  {
    super.onResume();
    synchronized (this.e)
    {
      this.e.notify();
      return;
    }
  }
  
  class a
    extends WebViewClient
  {
    a() {}
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      if (Build.VERSION.SDK_INT >= 23) {
        return;
      }
      HyWxWapFragment.this.b(175);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
    
    @TargetApi(23)
    public void onReceivedError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceError paramWebResourceError)
    {
      super.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
      HyWxWapFragment.this.b(175);
    }
    
    public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      HyWxWapFragment.this.b(175);
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if ((paramString.startsWith("http:")) || (paramString.startsWith("https:"))) {
        return false;
      }
      new Thread(new u(this, paramString)).start();
      return true;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyWxWapFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */