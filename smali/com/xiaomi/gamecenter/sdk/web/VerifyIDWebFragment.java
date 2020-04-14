package com.xiaomi.gamecenter.sdk.web;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
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
import com.xiaomi.gamecenter.sdk.ui.MiAlertDialog;
import com.xiaomi.gamecenter.sdk.utils.DensityUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

public class VerifyIDWebFragment
  extends Fragment
  implements View.OnKeyListener
{
  private WebView a;
  private String b;
  private g c;
  private int d;
  private String e = "";
  
  private void a()
  {
    switch (this.d)
    {
    default: 
      if (this.c != null) {
        this.c.b();
      }
      b();
      return;
    }
    this.a.setVisibility(4);
    AlertDialog.Builder localBuilder = MiAlertDialog.a(getActivity());
    localBuilder.setMessage("根据国家规定,您需要完成实名认证，否则无法继续游戏。");
    localBuilder.setTitle("实名认证提示");
    localBuilder.setPositiveButton("马上登记", new e(this));
    localBuilder.setNegativeButton("退出游戏", new f(this));
    localBuilder.setCancelable(false);
    localBuilder.show();
  }
  
  private void b()
  {
    FragmentManager localFragmentManager = getFragmentManager();
    if (localFragmentManager != null) {
      localFragmentManager.beginTransaction().remove(localFragmentManager.findFragmentByTag("VerifyWebView")).commitAllowingStateLoss();
    }
  }
  
  public final void a(g paramg)
  {
    this.c = paramg;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().getWindow().setFlags(1024, 2000);
    this.b = getArguments().getString("_url");
    this.d = getArguments().getInt("_code");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = new FrameLayout(getActivity());
    paramLayoutInflater.setBackgroundColor(0);
    this.a = new WebView(getActivity());
    paramViewGroup = new FrameLayout.LayoutParams(DensityUtils.a(getActivity(), 320.0F), DensityUtils.a(getActivity(), 300.0F));
    paramViewGroup.gravity = 17;
    this.a.setLayoutParams(paramViewGroup);
    this.a.getSettings().setDisplayZoomControls(false);
    this.a.getSettings().setSupportZoom(false);
    this.a.getSettings().setJavaScriptEnabled(true);
    this.a.setWebViewClient(new a((byte)0));
    this.a.setWebChromeClient(new WebChromeClient());
    this.a.getSettings().setUserAgentString("YAHAHA");
    this.a.setOnKeyListener(new d(this));
    paramLayoutInflater.addView(this.a);
    this.a.loadUrl(this.b);
    ReporterUtils.getInstance().xmsdkReport(2022);
    return paramLayoutInflater;
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      ReporterUtils.getInstance().xmsdkReport(2024);
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
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (VerifyIDWebFragment.a(VerifyIDWebFragment.this) == null)
      {
        VerifyIDWebFragment.b(VerifyIDWebFragment.this);
        return true;
      }
      if (VerifyIDWebFragment.c(VerifyIDWebFragment.this) == null)
      {
        VerifyIDWebFragment.a(VerifyIDWebFragment.this).a();
        return true;
      }
      if (paramString.startsWith("migamesdk://"))
      {
        paramWebView = Uri.parse(paramString).getQueryParameter("result");
        if (paramWebView.equals("closed"))
        {
          ReporterUtils.getInstance().xmsdkReport(2023);
          VerifyIDWebFragment.e(VerifyIDWebFragment.this);
        }
      }
      for (;;)
      {
        VerifyIDWebFragment.c(VerifyIDWebFragment.this).setFocusableInTouchMode(true);
        VerifyIDWebFragment.c(VerifyIDWebFragment.this).requestFocus();
        return true;
        if (paramWebView.equals("success"))
        {
          ReporterUtils.getInstance().xmsdkReport(2029);
          if (VerifyIDWebFragment.a(VerifyIDWebFragment.this) != null) {
            VerifyIDWebFragment.a(VerifyIDWebFragment.this).b();
          }
          VerifyIDWebFragment.b(VerifyIDWebFragment.this);
          continue;
          VerifyIDWebFragment.c(VerifyIDWebFragment.this).loadUrl(paramString);
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\VerifyIDWebFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */