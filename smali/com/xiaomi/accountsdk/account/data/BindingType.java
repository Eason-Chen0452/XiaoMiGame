package com.xiaomi.accountsdk.account.data;

@Deprecated
public enum BindingType
{
  static
  {
    ADD_PHONE = new BindingType("ADD_PHONE", 2);
    REPLACE_PHONE = new BindingType("REPLACE_PHONE", 3);
  }
  
  private BindingType() {}
  
  public final boolean isBindingEmail()
  {
    return (this == ADD_SAFE_EMAIL) || (this == REPLACE_SAFE_EMAIL);
  }
  
  public final boolean isBindingPhone()
  {
    return (this == ADD_PHONE) || (this == REPLACE_PHONE) || (this == DELETE_PHONE);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\BindingType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */