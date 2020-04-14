package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CardBuyInfoOffline
  implements Parcelable
{
  public static final Parcelable.Creator<CardBuyInfoOffline> CREATOR = new b();
  private String cardNumber;
  private String cardPass;
  private CardType cardType;
  private MiBuyInfoOffline infoOffline;
  private int money;
  
  private CardBuyInfoOffline() {}
  
  public CardBuyInfoOffline(String paramString1, String paramString2, CardType paramCardType, int paramInt, MiBuyInfoOffline paramMiBuyInfoOffline)
  {
    this.cardNumber = paramString1;
    this.cardPass = paramString2;
    this.cardType = paramCardType;
    this.money = paramInt;
    this.infoOffline = paramMiBuyInfoOffline;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCardNumber()
  {
    return this.cardNumber;
  }
  
  public String getCardPass()
  {
    return this.cardPass;
  }
  
  public CardType getCardType()
  {
    return this.cardType;
  }
  
  public MiBuyInfoOffline getInfoOffline()
  {
    return this.infoOffline;
  }
  
  public int getMoney()
  {
    return this.money;
  }
  
  public void setCardNumber(String paramString)
  {
    this.cardNumber = paramString;
  }
  
  public void setCardPass(String paramString)
  {
    this.cardPass = paramString;
  }
  
  public void setCardType(CardType paramCardType)
  {
    this.cardType = paramCardType;
  }
  
  public void setInfoOffline(MiBuyInfoOffline paramMiBuyInfoOffline)
  {
    this.infoOffline = paramMiBuyInfoOffline;
  }
  
  public void setMoney(int paramInt)
  {
    this.money = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getCardNumber());
    paramParcel.writeString(getCardPass());
    paramParcel.writeString(getCardType().toString());
    paramParcel.writeInt(getMoney());
    paramParcel.writeParcelable(getInfoOffline(), paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\CardBuyInfoOffline.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */