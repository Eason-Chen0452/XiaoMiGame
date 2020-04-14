package com.xiaomi.gamecenter.sdk.web;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.xiaomi.accountsdk.utils.WebViewDeviceIdUtil;
import com.xiaomi.gamecenter.sdk.component.item.MiProgressView;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.utils.DensityUtils;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.concurrent.ExecutorService;

public class LoginWebFragment
  extends Fragment
  implements View.OnClickListener, View.OnKeyListener, a
{
  private WebView a;
  private String b;
  private i c;
  private int d;
  private String e;
  private ImageView f;
  private MiProgressView g;
  private String h = "";
  
  private void a()
  {
    FragmentManager localFragmentManager = getFragmentManager();
    if (localFragmentManager != null) {
      localFragmentManager.beginTransaction().remove(localFragmentManager.findFragmentByTag("LoginWebView")).commitAllowingStateLoss();
    }
  }
  
  public final void a(int paramInt)
  {
    if (this.g != null)
    {
      this.g.a(paramInt);
      if ((paramInt <= 0) || (paramInt >= 100)) {
        break label44;
      }
      if (!this.g.isShown()) {
        this.g.setVisibility(0);
      }
    }
    return;
    label44:
    this.g.setVisibility(8);
  }
  
  public final void a(i parami)
  {
    this.c = parami;
  }
  
  public void onClick(View paramView)
  {
    if (this.f.hashCode() == paramView.getId())
    {
      if (this.c != null) {
        this.c.b();
      }
      a();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().getWindow().setFlags(1024, 2000);
    this.b = getArguments().getString("_url");
    this.d = getArguments().getInt("_accountType");
    this.e = getArguments().getString("_state");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = new RelativeLayout(getActivity());
    paramViewGroup.setBackgroundColor(Color.parseColor("#b0000000"));
    this.a = new WebView(getActivity());
    int i;
    if (getResources().getConfiguration().orientation == 2)
    {
      i = DensityUtils.a(getActivity(), 400.0F);
      paramLayoutInflater = new RelativeLayout.LayoutParams(i, -1);
    }
    for (;;)
    {
      paramLayoutInflater.addRule(13);
      paramLayoutInflater.addRule(14);
      paramLayoutInflater.addRule(15);
      this.a.setLayoutParams(paramLayoutInflater);
      this.a.setWebViewClient(new a((byte)0));
      this.a.setWebChromeClient(new GameSdkChromeClient(this));
      paramLayoutInflater = this.a.getSettings();
      if (paramLayoutInflater != null)
      {
        paramLayoutInflater.setDisplayZoomControls(false);
        paramLayoutInflater.setSupportZoom(false);
        paramLayoutInflater.setJavaScriptEnabled(true);
        paramLayoutInflater.setUserAgentString("Chrome/63.0.3239.84");
        paramLayoutInflater.setCacheMode(2);
        CookieSyncManager.createInstance(this.a.getContext());
        this.a.clearHistory();
        this.a.clearFormData();
        this.a.clearCache(true);
        paramLayoutInflater = CookieManager.getInstance();
        paramLayoutInflater.setAcceptCookie(true);
        paramLayoutInflater.removeSessionCookie();
        paramLayoutInflater.removeAllCookie();
      }
      this.a.setId(this.a.hashCode());
      this.a.setOnKeyListener(new b(this));
      paramLayoutInflater = new RelativeLayout.LayoutParams(-2, -2);
      paramLayoutInflater.addRule(6, this.a.hashCode());
      paramLayoutInflater.addRule(5, this.a.hashCode());
      this.f = new ImageView(getActivity());
      this.f.setImageResource(ResourceUtils.c(getActivity(), "mio_close"));
      this.f.setClickable(true);
      this.f.setId(this.f.hashCode());
      this.f.setOnClickListener(this);
      this.f.setLayoutParams(paramLayoutInflater);
      paramLayoutInflater = new RelativeLayout.LayoutParams(i, MiLayout.b(6));
      paramLayoutInflater.addRule(6, this.a.hashCode());
      paramLayoutInflater.addRule(14);
      this.g = new MiProgressView(getActivity());
      this.g.setClickable(false);
      this.g.setId(this.g.hashCode());
      this.g.setLayoutParams(paramLayoutInflater);
      this.g.setVisibility(0);
      paramViewGroup.addView(this.a);
      paramViewGroup.addView(this.f);
      paramViewGroup.addView(this.g);
      this.a.loadDataWithBaseURL("www.mi.com", "<script>\n        window.location.href=\"" + this.b + "\";\n    </script>", "text/html", "UTF-8", null);
      new WebViewDeviceIdUtil().b(this.a);
      this.a.loadUrl(this.b);
      if (this.c != null) {
        this.c.c();
      }
      return paramViewGroup;
      paramLayoutInflater = new RelativeLayout.LayoutParams(-1, DensityUtils.a(getActivity(), 520.0F));
      i = 0;
    }
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      if (this.c != null) {
        this.c.b();
      }
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
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      CookieManager.getInstance().getCookie(paramString);
      super.onPageFinished(paramWebView, paramString);
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (LoginWebFragment.a(LoginWebFragment.this) == null)
      {
        LoginWebFragment.b(LoginWebFragment.this);
        return true;
      }
      if (LoginWebFragment.c(LoginWebFragment.this) == null)
      {
        LoginWebFragment.a(LoginWebFragment.this).a();
        return true;
      }
      String str;
      if (paramString.startsWith("http://game.xiaomi.com/oauthcallback/mioauth"))
      {
        paramWebView = Uri.parse(paramString.replaceAll("#", "?"));
        paramString = paramWebView.getQueryParameter("code");
        str = paramWebView.getQueryParameter("state");
        paramWebView.getQueryParameter("error");
        paramWebView.getQueryParameter("error_description");
        if ((LoginWebFragment.e(LoginWebFragment.this).equals(str)) && (!TextUtils.isEmpty(paramString)))
        {
          if (LoginWebFragment.a(LoginWebFragment.this) != null) {
            LoginWebFragment.a(LoginWebFragment.this).a(paramString, null, null, null);
          }
          LoginWebFragment.b(LoginWebFragment.this);
        }
      }
      for (;;)
      {
        LoginWebFragment.c(LoginWebFragment.this).setFocusableInTouchMode(true);
        LoginWebFragment.c(LoginWebFragment.this).requestFocus();
        return true;
        if (LoginWebFragment.a(LoginWebFragment.this) == null) {
          break;
        }
        LoginWebFragment.a(LoginWebFragment.this).a();
        break;
        if (paramString.startsWith("http://g.mi.com/mobilelogin/qq/redirect.html"))
        {
          Object localObject = Uri.parse(paramString.replaceAll("#", ""));
          paramWebView = ((Uri)localObject).getQueryParameter("access_token");
          paramString = ((Uri)localObject).getQueryParameter("expires_in");
          str = ((Uri)localObject).getQueryParameter("state");
          localObject = ((Uri)localObject).getQueryParameter("usercancel");
          if ((LoginWebFragment.e(LoginWebFragment.this).equals(str)) && (TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(paramWebView))) {
            HyUtils.a().submit(new c(this, paramWebView, paramString));
          }
          for (;;)
          {
            LoginWebFragment.b(LoginWebFragment.this);
            break;
            if (LoginWebFragment.a(LoginWebFragment.this) != null) {
              LoginWebFragment.a(LoginWebFragment.this).a();
            }
          }
        }
        LoginWebFragment.c(LoginWebFragment.this).loadUrl(paramString);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\LoginWebFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */