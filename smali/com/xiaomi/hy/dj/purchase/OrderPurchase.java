package com.xiaomi.hy.dj.purchase;

public class OrderPurchase
  extends Purchase
{
  private String displayName;
  private String feeValue;
  private String miOrderId;
  
  public String getDisplayName()
  {
    return this.displayName;
  }
  
  public String getFeeValue()
  {
    return this.feeValue;
  }
  
  public String getMiOrderId()
  {
    return this.miOrderId;
  }
  
  public void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }
  
  public void setFeeValue(String paramString)
  {
    this.feeValue = paramString;
  }
  
  public void setMiOrderId(String paramString)
  {
    this.miOrderId = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\purchase\OrderPurchase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */