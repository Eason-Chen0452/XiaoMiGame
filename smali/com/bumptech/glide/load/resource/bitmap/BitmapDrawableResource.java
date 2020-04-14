package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.util.Util;

public class BitmapDrawableResource
  extends DrawableResource<BitmapDrawable>
  implements Initializable
{
  private final BitmapPool bitmapPool;
  
  public BitmapDrawableResource(BitmapDrawable paramBitmapDrawable, BitmapPool paramBitmapPool)
  {
    super(paramBitmapDrawable);
    this.bitmapPool = paramBitmapPool;
  }
  
  public Class<BitmapDrawable> getResourceClass()
  {
    return BitmapDrawable.class;
  }
  
  public int getSize()
  {
    return Util.getBitmapByteSize(((BitmapDrawable)this.drawable).getBitmap());
  }
  
  public void initialize()
  {
    ((BitmapDrawable)this.drawable).getBitmap().prepareToDraw();
  }
  
  public void recycle()
  {
    this.bitmapPool.put(((BitmapDrawable)this.drawable).getBitmap());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\bitmap\BitmapDrawableResource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */