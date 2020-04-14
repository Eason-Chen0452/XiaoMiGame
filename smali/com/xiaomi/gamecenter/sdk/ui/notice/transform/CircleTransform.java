package com.xiaomi.gamecenter.sdk.ui.notice.transform;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

public class CircleTransform
  extends BitmapTransformation
{
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof CircleTransform;
  }
  
  public int hashCode()
  {
    return "com.xiaomi.gamecenter.sdk.circle_bitmap".hashCode();
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    try
    {
      paramBitmapPool = AccountIconProcesser.a(paramBitmapPool, paramBitmap, paramBitmap.getHeight() / 2);
      if (paramBitmapPool != null) {
        paramBitmap = paramBitmapPool;
      }
      return paramBitmap;
    }
    catch (Throwable paramBitmapPool)
    {
      for (;;)
      {
        paramBitmapPool.printStackTrace();
        paramBitmapPool = null;
      }
    }
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    if (paramMessageDigest != null) {}
    try
    {
      paramMessageDigest.update("com.xiaomi.gamecenter.sdk.circle_bitmap".getBytes("UTF-8"));
      return;
    }
    catch (Exception paramMessageDigest)
    {
      paramMessageDigest.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\transform\CircleTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */