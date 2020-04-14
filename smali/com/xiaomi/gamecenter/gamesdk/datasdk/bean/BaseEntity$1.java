package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.i;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

final class BaseEntity$1
  implements Parcelable.Creator<BaseEntity>
{
  public final BaseEntity createFromParcel(Parcel paramParcel)
  {
    for (;;)
    {
      Object localObject;
      int i;
      try
      {
        localObject = Class.forName(paramParcel.readString()).newInstance();
        Field[] arrayOfField = localObject.getClass().getDeclaredFields();
        int j = arrayOfField.length;
        i = 0;
        if (i < j)
        {
          Field localField = arrayOfField[i];
          localField.setAccessible(true);
          if (localField.getType().equals(List.class))
          {
            ArrayList localArrayList = new ArrayList();
            paramParcel.readList(localArrayList, Class.forName(localField.getDeclaringClass().getName()).getClassLoader());
            localField.set(localObject, localArrayList);
          }
          else
          {
            localField.set(localObject, paramParcel.readValue(localField.getType().getClassLoader()));
          }
        }
      }
      catch (Exception paramParcel)
      {
        i.c("BaseEntity", paramParcel.toString());
        return null;
      }
      paramParcel = (BaseEntity)localObject;
      return paramParcel;
      i += 1;
    }
  }
  
  public final BaseEntity[] newArray(int paramInt)
  {
    return new BaseEntity[paramInt];
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\BaseEntity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */