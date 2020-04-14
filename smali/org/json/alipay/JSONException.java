package org.json.alipay;

public class JSONException
  extends Exception
{
  private Throwable cause;
  
  public JSONException(String paramString)
  {
    super(paramString);
  }
  
  public JSONException(Throwable paramThrowable)
  {
    super(paramThrowable.getMessage());
    this.cause = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return this.cause;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\json\alipay\JSONException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */