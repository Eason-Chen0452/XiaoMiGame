package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.widget.ImageView;

public class BitmapImageViewTarget
  extends ImageViewTarget<Bitmap>
{
  public BitmapImageViewTarget(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  protected void setResource(Bitmap paramBitmap)
  {
    ((ImageView)this.view).setImageBitmap(paramBitmap);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\target\BitmapImageViewTarget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */