package com.xiaomi.accountsdk.account.exception;

import java.io.IOException;

public class PassportIOException
  extends IOException
{
  public final int a;
  public String b;
  public boolean c = false;
  
  public PassportIOException(int paramInt, String paramString)
  {
    super(paramString);
    this.a = paramInt;
  }
  
  public PassportIOException(IOException paramIOException)
  {
    super(paramIOException);
    this.a = -1;
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\PassportIOException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */