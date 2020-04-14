package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.widget.ImageView;

public class DrawableImageViewTarget
  extends ImageViewTarget<Drawable>
{
  public DrawableImageViewTarget(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  protected void setResource(@Nullable Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\target\DrawableImageViewTarget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */