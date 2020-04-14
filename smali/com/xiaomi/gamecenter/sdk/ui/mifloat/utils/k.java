package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.LoginResult;
import com.xiaomi.gamecenter.sdk.entry.UserLevelAndVipInfo;

public class k
{
  private static k b;
  private String a;
  private LoginResult c;
  private long d;
  private String e;
  private UserLevelAndVipInfo f;
  private MilinkAccountProps g;
  
  public static k b()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new k();
      }
      return b;
    }
    finally {}
  }
  
  public final String a()
  {
    return this.e;
  }
  
  public final void a(long paramLong)
  {
    this.d = paramLong;
  }
  
  public final void a(MilinkAccountProps paramMilinkAccountProps)
  {
    this.g = paramMilinkAccountProps;
  }
  
  public final void a(LoginResult paramLoginResult)
  {
    this.c = paramLoginResult;
  }
  
  public final void a(UserLevelAndVipInfo paramUserLevelAndVipInfo)
  {
    try
    {
      this.f = paramUserLevelAndVipInfo;
      return;
    }
    finally
    {
      paramUserLevelAndVipInfo = finally;
      throw paramUserLevelAndVipInfo;
    }
  }
  
  public final void a(String paramString)
  {
    this.e = paramString;
  }
  
  public final void b(String paramString)
  {
    this.a = paramString;
  }
  
  public final void c()
  {
    this.c = null;
  }
  
  public final LoginResult d()
  {
    return this.c;
  }
  
  public final String e()
  {
    if (this.c == null) {
      return null;
    }
    return this.c.getHeadUrl();
  }
  
  public final String f()
  {
    if (this.c == null) {
      return null;
    }
    return this.c.getUserName();
  }
  
  public final String g()
  {
    if (this.c == null) {
      return null;
    }
    return this.c.getSession();
  }
  
  public final long h()
  {
    return this.d;
  }
  
  public final boolean i()
  {
    return !"N".equalsIgnoreCase(this.a);
  }
  
  public final MilinkAccountProps j()
  {
    return this.g;
  }
  
  public final UserLevelAndVipInfo k()
  {
    try
    {
      UserLevelAndVipInfo localUserLevelAndVipInfo = this.f;
      return localUserLevelAndVipInfo;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */