package com.xiaomi.hy.dj.fragment;

import android.os.CountDownTimer;

class b
  extends CountDownTimer
{
  b(BaseFragment paramBaseFragment, long paramLong1, long paramLong2, String paramString)
  {
    super(paramLong1, paramLong2);
  }
  
  public void onFinish()
  {
    if (this.a.equals("WXMWEB")) {
      com.xiaomi.hy.dj.e.b.a().a(174);
    }
    for (;;)
    {
      this.b.b(185);
      return;
      if (this.a.equals("WXNATIVE")) {
        com.xiaomi.hy.dj.e.b.a().a(178);
      } else if (this.a.equals("ALIPAY")) {
        com.xiaomi.hy.dj.e.b.a().a(170);
      } else if (this.a.equals("PAYECO")) {
        com.xiaomi.hy.dj.e.b.a().a(188);
      } else if (this.a.equals("SZFPAY")) {
        com.xiaomi.hy.dj.e.b.a().a(192);
      } else {
        com.xiaomi.hy.dj.e.b.a().a(182);
      }
    }
  }
  
  public void onTick(long paramLong)
  {
    this.b.a.c();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */