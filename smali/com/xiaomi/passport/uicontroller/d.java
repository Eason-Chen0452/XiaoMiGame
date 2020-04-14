package com.xiaomi.passport.uicontroller;

import com.xiaomi.accountsdk.futureservice.a;
import com.xiaomi.accountsdk.futureservice.a.a;

public abstract class d<ModelDataType, UIDataType>
  extends a<ModelDataType, UIDataType>
{
  protected d(a<UIDataType> parama)
  {
    super(parama);
  }
  
  protected final UIDataType b(ModelDataType paramModelDataType)
    throws Throwable
  {
    return (UIDataType)c(paramModelDataType);
  }
  
  protected abstract UIDataType c(ModelDataType paramModelDataType)
    throws Throwable;
  
  public static abstract interface a<UIDataType>
    extends a.a<UIDataType>
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */