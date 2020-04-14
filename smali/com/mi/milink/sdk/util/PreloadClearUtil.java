package com.mi.milink.sdk.util;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class PreloadClearUtil
{
  private static void clearColorStateListArray(LongSparseArray<ColorStateList> paramLongSparseArray)
  {
    if (paramLongSparseArray != null)
    {
      int j = paramLongSparseArray.size();
      int i = 0;
      while (i < j)
      {
        paramLongSparseArray.setValueAt(i, null);
        i += 1;
      }
    }
  }
  
  private static void clearLongSparseArray(LongSparseArray<Drawable.ConstantState> paramLongSparseArray)
  {
    if (paramLongSparseArray != null)
    {
      int j = paramLongSparseArray.size();
      int i = 0;
      while (i < j)
      {
        Object localObject = (Drawable.ConstantState)paramLongSparseArray.valueAt(i);
        if (localObject != null)
        {
          localObject = ((Drawable.ConstantState)localObject).newDrawable();
          if ((localObject != null) && ((localObject instanceof BitmapDrawable)))
          {
            localObject = (BitmapDrawable)localObject;
            Bitmap localBitmap = ((BitmapDrawable)localObject).getBitmap();
            if (localBitmap != null)
            {
              localBitmap.recycle();
              setBitmap((BitmapDrawable)localObject, null);
            }
          }
        }
        i += 1;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private static void clearPreloadedColorDrawables()
  {
    try
    {
      Object localObject = getField(Resources.class, "sPreloadedColorDrawables");
      if (localObject != null)
      {
        ((Field)localObject).setAccessible(true);
        localObject = (LongSparseArray)((Field)localObject).get(null);
        if (localObject != null) {
          clearLongSparseArray((LongSparseArray)localObject);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      MiLinkLog.e("PreloadClearUtil", localException);
    }
  }
  
  @SuppressLint({"NewApi"})
  private static void clearPreloadedColorStateLists()
  {
    try
    {
      Field localField = getField(Resources.class, "sPreloadedColorStateLists");
      Object localObject = localField;
      if (localField == null) {
        localObject = getField(Resources.class, "mPreloadedColorStateLists");
      }
      if (localObject != null)
      {
        ((Field)localObject).setAccessible(true);
        if (Build.VERSION.SDK_INT <= 15)
        {
          localObject = (SparseArray)((Field)localObject).get(null);
          if (localObject != null) {
            clearSparseArray((SparseArray)localObject);
          }
        }
        else
        {
          localObject = (LongSparseArray)((Field)localObject).get(null);
          if (localObject != null)
          {
            clearColorStateListArray((LongSparseArray)localObject);
            return;
          }
        }
      }
    }
    catch (Exception localException)
    {
      MiLinkLog.e("PreloadClearUtil", localException);
    }
  }
  
  @SuppressLint({"NewApi"})
  private static void clearPreloadedDrawables()
  {
    try
    {
      Object localObject = getField(Resources.class, "sPreloadedDrawables");
      if (localObject != null)
      {
        ((Field)localObject).setAccessible(true);
        if (Build.VERSION.SDK_INT <= 17)
        {
          localObject = (LongSparseArray)((Field)localObject).get(null);
          if (localObject != null) {
            clearLongSparseArray((LongSparseArray)localObject);
          }
        }
        else if (Build.VERSION.SDK_INT >= 18)
        {
          localObject = (LongSparseArray[])((Field)localObject).get(null);
          if (localObject != null)
          {
            int i = 0;
            while (i < localObject.length)
            {
              clearLongSparseArray(localObject[i]);
              i += 1;
            }
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      MiLinkLog.e("PreloadClearUtil", localException);
    }
  }
  
  public static void clearResources()
  {
    try
    {
      MiLinkLog.v("PreloadClearUtil", "clear resource");
      clearPreloadedDrawables();
      clearPreloadedColorDrawables();
      clearPreloadedColorStateLists();
      return;
    }
    catch (Exception localException)
    {
      MiLinkLog.e("PreloadClearUtil", localException);
    }
  }
  
  private static void clearSparseArray(SparseArray<?> paramSparseArray)
  {
    if (paramSparseArray != null)
    {
      int j = paramSparseArray.size();
      int i = 0;
      while (i < j)
      {
        paramSparseArray.setValueAt(i, null);
        i += 1;
      }
    }
  }
  
  private static Field getField(Class<?> paramClass, String paramString)
  {
    Field localField = null;
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      localField = paramClass.getDeclaredField(paramString);
      return localField;
    }
    catch (NoSuchFieldException paramClass)
    {
      MiLinkLog.i("PreloadClearUtil", paramClass.getMessage());
    }
    return null;
  }
  
  private static Method getMethod(Class paramClass, String paramString, Class[] paramArrayOfClass)
    throws Exception
  {
    try
    {
      Method localMethod1 = paramClass.getDeclaredMethod(paramString, paramArrayOfClass);
      return localMethod1;
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      try
      {
        Method localMethod2 = paramClass.getMethod(paramString, paramArrayOfClass);
        return localMethod2;
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        if (paramClass.getSuperclass() == null) {
          return null;
        }
      }
    }
    return getMethod(paramClass.getSuperclass(), paramString, paramArrayOfClass);
  }
  
  private static void setBitmap(BitmapDrawable paramBitmapDrawable, Bitmap paramBitmap)
  {
    try
    {
      Method localMethod = getMethod(BitmapDrawable.class, "setBitmap", new Class[] { Bitmap.class });
      if (localMethod != null)
      {
        localMethod.setAccessible(true);
        localMethod.invoke(paramBitmapDrawable, new Object[] { paramBitmap });
      }
      return;
    }
    catch (Exception paramBitmapDrawable)
    {
      MiLinkLog.e("PreloadClearUtil", paramBitmapDrawable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\PreloadClearUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */