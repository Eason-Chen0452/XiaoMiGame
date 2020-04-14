package com.xiaomi.accountsdk.account.exception;

public class HttpException
  extends Exception
{
  public final int a;
  public String b;
  public boolean c = false;
  
  public HttpException(int paramInt, String paramString)
  {
    super(paramString);
    this.a = paramInt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("response code: ").append(this.a).append("\n");
    if (this.c) {}
    for (String str = this.b + " sts url request error \n";; str = "")
    {
      str = str;
      return str + super.toString();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\HttpException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */