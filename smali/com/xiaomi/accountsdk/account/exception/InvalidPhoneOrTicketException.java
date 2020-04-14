package com.xiaomi.accountsdk.account.exception;

public class InvalidPhoneOrTicketException
  extends Exception
{
  public InvalidPhoneOrTicketException()
  {
    super("wrong ticket or unactivated phone");
  }
  
  public InvalidPhoneOrTicketException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\InvalidPhoneOrTicketException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */