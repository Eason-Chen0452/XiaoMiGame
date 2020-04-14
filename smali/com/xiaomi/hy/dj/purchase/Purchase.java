package com.xiaomi.hy.dj.purchase;

import java.io.Serializable;

public abstract class Purchase
  implements Serializable
{
  private String cpOrderId = "";
  private String cpUserInfo = "";
  
  public String getCpOrderId()
  {
    return this.cpOrderId;
  }
  
  public String getCpUserInfo()
  {
    return this.cpUserInfo;
  }
  
  public void setCpOrderId(String paramString)
  {
    this.cpOrderId = paramString;
  }
  
  public void setCpUserInfo(String paramString)
  {
    this.cpUserInfo = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\purchase\Purchase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */