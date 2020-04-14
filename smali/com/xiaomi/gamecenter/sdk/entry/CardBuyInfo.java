package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CardBuyInfo
  implements Parcelable
{
  public static final Parcelable.Creator<CardBuyInfo> CREATOR = new a();
  private String cardMoney;
  private String cardNumber;
  private String cardPass;
  private String cardType;
  
  private CardBuyInfo() {}
  
  public CardBuyInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.cardNumber = paramString1;
    this.cardPass = paramString2;
    this.cardType = paramString3;
    this.cardMoney = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCardMoney()
  {
    return this.cardMoney;
  }
  
  public String getCardNumber()
  {
    return this.cardNumber;
  }
  
  public String getCardPass()
  {
    return this.cardPass;
  }
  
  public String getCardType()
  {
    return this.cardType;
  }
  
  public void setCardMoney(String paramString)
  {
    this.cardMoney = paramString;
  }
  
  public void setCardNumber(String paramString)
  {
    this.cardNumber = paramString;
  }
  
  public void setCardPass(String paramString)
  {
    this.cardPass = paramString;
  }
  
  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getCardNumber());
    paramParcel.writeString(getCardPass());
    paramParcel.writeString(getCardType());
    paramParcel.writeString(getCardMoney());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\CardBuyInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */