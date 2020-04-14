package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.entry.AccountStatus;

class SdkAccountAdapter
{
  private Context a;
  private AccountStatus b = AccountStatus.LOCAL;
  private PaymentType c = PaymentType.NOTYPE;
  
  public SdkAccountAdapter(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public final void a(AccountStatus paramAccountStatus)
  {
    this.b = paramAccountStatus;
    if (paramAccountStatus == AccountStatus.LOCAL) {
      this.c = PaymentType.LOCALPAY;
    }
    while (paramAccountStatus != AccountStatus.SERVICE) {
      return;
    }
    this.c = PaymentType.SERVICEPAY;
  }
  
  public final boolean a()
  {
    return this.b == AccountStatus.LOCAL;
  }
  
  public final boolean b()
  {
    return this.b == AccountStatus.SERVICE;
  }
  
  public final boolean c()
  {
    return this.c == PaymentType.LOCALPAY;
  }
  
  public static enum PaymentType
  {
    private PaymentType() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\SdkAccountAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */