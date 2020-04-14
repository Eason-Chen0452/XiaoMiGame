package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class RoundedCorners
  extends BitmapTransformation
{
  private static final String ID = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";
  private static final byte[] ID_BYTES = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(CHARSET);
  private final int roundingRadius;
  
  public RoundedCorners(int paramInt)
  {
    if (paramInt > 0) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "roundingRadius must be greater than 0.");
      this.roundingRadius = paramInt;
      return;
    }
  }
  
  @Deprecated
  public RoundedCorners(Context paramContext, int paramInt)
  {
    this(paramInt);
  }
  
  @Deprecated
  public RoundedCorners(BitmapPool paramBitmapPool, int paramInt)
  {
    this(paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof RoundedCorners)) && (((RoundedCorners)paramObject).roundingRadius == this.roundingRadius);
  }
  
  public int hashCode()
  {
    return "com.bumptech.glide.load.resource.bitmap.RoundedCorners".hashCode() + this.roundingRadius;
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return TransformationUtils.roundedCorners(paramBitmapPool, paramBitmap, paramInt1, paramInt2, this.roundingRadius);
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ID_BYTES);
    paramMessageDigest.update(ByteBuffer.allocate(4).putInt(this.roundingRadius).array());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\bitmap\RoundedCorners.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */