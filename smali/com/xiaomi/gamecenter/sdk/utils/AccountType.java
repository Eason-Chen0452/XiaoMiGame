package com.xiaomi.gamecenter.sdk.utils;

public enum AccountType
{
  static
  {
    AccountType_MITALK = new AccountType("AccountType_MITALK", 2);
    AccountType_LOCAL = new AccountType("AccountType_LOCAL", 3);
    AccountType_MI = new AccountType("AccountType_MI", 4);
    AccountType_WX = new AccountType("AccountType_WX", 5);
    AccountType_QQ = new AccountType("AccountType_QQ", 6);
    AccountType_WB = new AccountType("AccountType_WB", 7);
  }
  
  private AccountType() {}
  
  public static AccountType fromInt(int paramInt)
  {
    if (AccountType_XIAOMIClOUD.ordinal() == paramInt) {
      return AccountType_XIAOMIClOUD;
    }
    if (AccountType_MITALK.ordinal() == paramInt) {
      return AccountType_MITALK;
    }
    if (AccountType_NOACCOUNT.ordinal() == paramInt) {
      return AccountType_NOACCOUNT;
    }
    if (AccountType_LOCAL.ordinal() == paramInt) {
      return AccountType_LOCAL;
    }
    if (AccountType_MI.ordinal() == paramInt) {
      return AccountType_MI;
    }
    if (AccountType_WX.ordinal() == paramInt) {
      return AccountType_WX;
    }
    if (AccountType_QQ.ordinal() == paramInt) {
      return AccountType_QQ;
    }
    if (AccountType_WB.ordinal() == paramInt) {
      return AccountType_WB;
    }
    if (AccountType_CANCEL.ordinal() == paramInt) {
      return AccountType_CANCEL;
    }
    return AccountType_XIAOMIClOUD;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\AccountType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */