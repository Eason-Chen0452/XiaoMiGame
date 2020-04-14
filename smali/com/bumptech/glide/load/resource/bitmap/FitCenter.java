package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

public class FitCenter
  extends BitmapTransformation
{
  private static final String ID = "com.bumptech.glide.load.resource.bitmap.FitCenter";
  private static final byte[] ID_BYTES = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(CHARSET);
  
  public FitCenter() {}
  
  @Deprecated
  public FitCenter(Context paramContext)
  {
    this();
  }
  
  @Deprecated
  public FitCenter(BitmapPool paramBitmapPool)
  {
    this();
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof FitCenter;
  }
  
  public int hashCode()
  {
    return "com.bumptech.glide.load.resource.bitmap.FitCenter".hashCode();
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return TransformationUtils.fitCenter(paramBitmapPool, paramBitmap, paramInt1, paramInt2);
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ID_BYTES);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\bitmap\FitCenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */