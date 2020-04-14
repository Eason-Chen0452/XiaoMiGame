package com.xiaomi.accountsdk.account.exception;

public class AccountException
  extends Exception
{
  public final int a;
  public final String b;
  public String c;
  public boolean d = false;
  
  public AccountException(int paramInt, String paramString)
  {
    this(paramInt, paramString, null);
  }
  
  public AccountException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.a = paramInt;
    this.b = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("server code: ").append(this.a).append("; desc: ").append(this.b).append("\n");
    if (this.d) {}
    for (String str = this.c + " sts url request error \n";; str = "")
    {
      str = str;
      return str + super.toString();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\AccountException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */