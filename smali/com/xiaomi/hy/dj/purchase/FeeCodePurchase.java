package com.xiaomi.hy.dj.purchase;

@Deprecated
public class FeeCodePurchase
  extends Purchase
{
  private String chargeCode;
  private String feeValue;
  
  public String getChargeCode()
  {
    return this.chargeCode;
  }
  
  public String getFeeValue()
  {
    return this.feeValue;
  }
  
  public void setChargeCode(String paramString)
  {
    this.chargeCode = paramString;
  }
  
  public void setFeeValue(String paramString)
  {
    this.feeValue = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\purchase\FeeCodePurchase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */