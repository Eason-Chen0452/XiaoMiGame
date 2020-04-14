package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

public class CountBean
  extends BaseEntity
{
  private int dIndex;
  private String date;
  
  public CountBean(int paramInt, String paramString)
  {
    this.dIndex = paramInt;
    this.date = paramString;
  }
  
  public String getDate()
  {
    return this.date;
  }
  
  public int getdIndex()
  {
    return this.dIndex;
  }
  
  public void setDate(String paramString)
  {
    this.date = paramString;
  }
  
  public void setdIndex(int paramInt)
  {
    this.dIndex = paramInt;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\CountBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */