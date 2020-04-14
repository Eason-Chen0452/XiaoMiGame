package com.xiaomi.hy.dj.fragment;

import java.util.Map;

public class HyQQWapFragment
  extends BaseFragment
{
  public static final String d = "HyQQWapFragment";
  private byte[] e = new byte[0];
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    new Thread(new k(this, paramString2, paramString1)).start();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.a.a("QPAY");
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(181);
      b(181);
    }
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
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyQQWapFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */