package com.xiaomi.accountsdk.account.data;

public enum IdentityAuthReason
{
  static
  {
    ADD_PHONE = new IdentityAuthReason("ADD_PHONE", 2);
    REPLACE_PHONE = new IdentityAuthReason("REPLACE_PHONE", 3);
    DELETE_PHONE = new IdentityAuthReason("DELETE_PHONE", 4);
    SEND_EMAIL_ACTIVATE_MESSAGE = new IdentityAuthReason("SEND_EMAIL_ACTIVATE_MESSAGE", 5);
    SET_SECURITY_QUESTIONS = new IdentityAuthReason("SET_SECURITY_QUESTIONS", 6);
  }
  
  private IdentityAuthReason() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\IdentityAuthReason.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */