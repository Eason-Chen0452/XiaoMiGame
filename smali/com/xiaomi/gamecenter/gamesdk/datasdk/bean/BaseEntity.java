package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.i;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import java.lang.reflect.Field;
import java.util.List;

public class BaseEntity
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<BaseEntity> CREATOR = new BaseEntity.1();
  private static final String TAG = "BaseEntity";
  
  public Object clone()
  {
    return super.clone();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return new Gson().toJson(this);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getClass().getCanonicalName());
    Field[] arrayOfField = getClass().getDeclaredFields();
    int i = arrayOfField.length;
    paramInt = 0;
    for (;;)
    {
      if (paramInt < i)
      {
        Field localField = arrayOfField[paramInt];
        localField.setAccessible(true);
        try
        {
          if (localField.getType().equals(List.class)) {
            paramParcel.writeList((List)localField.get(this));
          } else {
            paramParcel.writeValue(localField.get(this));
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          i.c("BaseEntity", localIllegalAccessException.toString());
        }
      }
      return;
      paramInt += 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\BaseEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */