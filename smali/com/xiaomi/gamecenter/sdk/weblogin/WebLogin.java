package com.xiaomi.gamecenter.sdk.weblogin;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.SocketTouch;
import com.xiaomi.gamecenter.sdk.web.LoginWebFragment;
import com.xiaomi.gamecenter.sdk.web.i;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class WebLogin
{
  private Activity a;
  private i b;
  private AccountType c;
  
  public WebLogin(Activity paramActivity, AccountType paramAccountType)
  {
    this.a = paramActivity;
    this.c = paramAccountType;
  }
  
  public final void a(i parami)
  {
    this.b = parami;
    Bundle localBundle = new Bundle();
    String str3 = SocketTouch.a();
    if (AccountType.AccountType_MI == this.c)
    {
      parami = "http://game.xiaomi.com/oauthcallback/mioauth";
      try
      {
        String str1 = URLEncoder.encode("http://game.xiaomi.com/oauthcallback/mioauth", "utf-8");
        parami = str1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        for (;;)
        {
          localUnsupportedEncodingException1.printStackTrace();
        }
      }
      localBundle.putString("_url", "https://account.xiaomi.com/oauth2/authorize?client_id=2882303761517516898&response_type=code&scope=1 3&redirect_uri=" + parami + "&state=" + str3);
      localBundle.putInt("_accountType", 40001);
    }
    for (;;)
    {
      localBundle.putString("_state", str3);
      parami = new LoginWebFragment();
      parami.setArguments(localBundle);
      parami.a(this.b);
      this.a.getFragmentManager().beginTransaction().add(16908290, parami, "LoginWebView").commitAllowingStateLoss();
      do
      {
        return;
      } while (AccountType.AccountType_QQ != this.c);
      parami = "http://g.mi.com/mobilelogin/qq/redirect.html";
      try
      {
        String str2 = URLEncoder.encode("http://g.mi.com/mobilelogin/qq/redirect.html", "utf-8");
        parami = str2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        for (;;)
        {
          localUnsupportedEncodingException2.printStackTrace();
        }
      }
      localBundle.putString("_url", "https://graph.qq.com/oauth2.0/authorize?client_id=101424138&response_type=token&redirect_uri=" + parami + "&state=" + str3);
      localBundle.putInt("_accountType", 40002);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\weblogin\WebLogin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */