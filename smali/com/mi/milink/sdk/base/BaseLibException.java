package com.mi.milink.sdk.base;

public class BaseLibException
  extends RuntimeException
{
  private static final long serialVersionUID = -2945737496904114992L;
  
  public BaseLibException() {}
  
  public BaseLibException(String paramString)
  {
    super(paramString);
  }
  
  public BaseLibException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public BaseLibException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\BaseLibException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */