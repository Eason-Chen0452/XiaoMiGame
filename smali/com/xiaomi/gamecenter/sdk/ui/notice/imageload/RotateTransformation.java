package com.xiaomi.gamecenter.sdk.ui.notice.imageload;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

public class RotateTransformation
  extends BitmapTransformation
{
  private float a = 0.0F;
  
  public RotateTransformation(float paramFloat)
  {
    this.a = paramFloat;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof RotateTransformation)) && (((RotateTransformation)paramObject).a == this.a);
  }
  
  public int hashCode()
  {
    return (int)(31.0F * this.a) + "com.xiaomi.gamecenter.sdk.rotate".hashCode();
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    paramBitmapPool = new Matrix();
    paramBitmapPool.postRotate(this.a);
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmapPool, true);
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    if (paramMessageDigest != null) {}
    try
    {
      paramMessageDigest.update("com.xiaomi.gamecenter.sdk.rotate".getBytes("UTF-8"));
      return;
    }
    catch (Exception paramMessageDigest)
    {
      paramMessageDigest.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\imageload\RotateTransformation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */