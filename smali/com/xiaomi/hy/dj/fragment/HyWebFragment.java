package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.xiaomi.hy.dj.b.a;
import com.xiaomi.hy.dj.f.h;

public class HyWebFragment
  extends Fragment
  implements View.OnKeyListener
{
  private WebView a;
  private String b;
  private y c;
  private int d;
  
  private void a()
  {
    switch (this.d)
    {
    default: 
      this.c.b();
      getFragmentManager().beginTransaction().remove(getFragmentManager().findFragmentByTag("WEBVIEW")).commit();
      return;
    case 404: 
      this.a.setVisibility(4);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
      localBuilder.setMessage("您未完成真实身份登记,根据国家规定，无法为游戏充值。");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("去登记", new q(this));
      localBuilder.setNegativeButton("确定", new r(this));
      localBuilder.setCancelable(false);
      localBuilder.show();
      return;
    case 405: 
      this.c.b();
      getFragmentManager().beginTransaction().remove(getFragmentManager().findFragmentByTag("WEBVIEW")).commit();
      return;
    }
    this.c.b();
    getFragmentManager().beginTransaction().remove(getFragmentManager().findFragmentByTag("WEBVIEW")).commit();
  }
  
  public void a(y paramy)
  {
    this.c = paramy;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().getWindow().setFlags(1024, 2000);
    this.b = getArguments().getString("_url");
    this.d = getArguments().getInt("_code");
    a.a("load data=" + this.b + ",code=" + this.d);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = new FrameLayout(getActivity());
    paramLayoutInflater.setBackgroundColor(Color.parseColor("#b0000000"));
    this.a = new WebView(getActivity());
    int j;
    if (getResources().getConfiguration().orientation == 2) {
      j = h.a(getActivity(), 333.0F);
    }
    for (int i = h.a(getActivity(), 300.0F);; i = h.a(getActivity(), 333.0F))
    {
      paramViewGroup = new FrameLayout.LayoutParams(j, i);
      paramViewGroup.gravity = 17;
      this.a.setLayoutParams(paramViewGroup);
      this.a.getSettings().setDisplayZoomControls(false);
      this.a.getSettings().setSupportZoom(false);
      this.a.getSettings().setJavaScriptEnabled(true);
      this.a.setWebViewClient(new a(null));
      this.a.setWebChromeClient(new WebChromeClient());
      paramLayoutInflater.addView(this.a);
      this.a.loadUrl(this.b);
      return paramLayoutInflater;
      j = h.a(getActivity(), 300.0F);
    }
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      a();
      return true;
    }
    return false;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    getView().setFocusableInTouchMode(true);
    getView().requestFocus();
    getView().setOnKeyListener(this);
  }
  
  private class a
    extends WebViewClient
  {
    private a() {}
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      a.a(paramString);
      if (paramString.startsWith("migamesdk://"))
      {
        paramWebView = Uri.parse(paramString).getQueryParameter("result");
        if (paramWebView.equals("closed")) {
          HyWebFragment.a(HyWebFragment.this);
        }
        while (!paramWebView.equals("success")) {
          return true;
        }
        HyWebFragment.b(HyWebFragment.this).b();
        HyWebFragment.this.getFragmentManager().beginTransaction().remove(HyWebFragment.this.getFragmentManager().findFragmentByTag("WEBVIEW")).commit();
        return true;
      }
      HyWebFragment.c(HyWebFragment.this).loadUrl(paramString);
      HyWebFragment.this.getView().setFocusableInTouchMode(true);
      HyWebFragment.this.getView().requestFocus();
      HyWebFragment.this.getView().setOnKeyListener(new s(this));
      return true;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyWebFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */