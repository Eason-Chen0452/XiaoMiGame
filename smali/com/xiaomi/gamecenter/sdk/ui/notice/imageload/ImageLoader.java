package com.xiaomi.gamecenter.sdk.ui.notice.imageload;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.SystemConfig;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.xiaomi.gamecenter.sdk.entry.Image;

public class ImageLoader
{
  public static void a(Context paramContext, ImageView paramImageView, Image paramImage, int paramInt1, ImageLoadCallback paramImageLoadCallback, int paramInt2, int paramInt3)
  {
    if (paramImage == null)
    {
      a(paramImageView, paramInt1);
      return;
    }
    a(paramContext, paramImageView, paramImage.getImagePath(), paramInt1, paramImageLoadCallback, paramInt2, paramInt3, null);
  }
  
  public static void a(Context paramContext, ImageView paramImageView, Image paramImage, int paramInt, ImageLoadCallback paramImageLoadCallback, Transformation<Bitmap> paramTransformation)
  {
    if (paramImage == null)
    {
      a(paramImageView, paramInt);
      return;
    }
    a(paramContext, paramImageView, paramImage.getImagePath(), paramInt, paramImageLoadCallback, 0, 0, paramTransformation);
  }
  
  private static void a(Context paramContext, ImageView paramImageView, String paramString, int paramInt1, ImageLoadCallback paramImageLoadCallback, int paramInt2, int paramInt3, Transformation<Bitmap> paramTransformation)
  {
    a(paramContext, paramImageView, paramString, paramInt1, paramImageLoadCallback, paramInt2, paramInt3, paramTransformation, false, true);
  }
  
  private static void a(Context paramContext, ImageView paramImageView, String paramString, int paramInt1, ImageLoadCallback paramImageLoadCallback, int paramInt2, int paramInt3, Transformation<Bitmap> paramTransformation, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (TextUtils.isEmpty(paramString))
    {
      a(paramImageView, paramInt1);
      return;
    }
    if (paramImageLoadCallback != null) {
      paramImageLoadCallback.a(paramInt1);
    }
    RequestOptions localRequestOptions2 = new RequestOptions();
    localRequestOptions2.skipMemoryCache(paramBoolean1);
    localRequestOptions2.fitCenter();
    if ((paramString.contains("download/Wali")) || (paramString.endsWith(".gif")))
    {
      paramInt1 = 1;
      if (paramInt1 == 0) {
        break label212;
      }
      localRequestOptions2.skipMemoryCache(true);
    }
    for (;;)
    {
      RequestOptions localRequestOptions1 = localRequestOptions2;
      if (paramTransformation != null) {
        localRequestOptions1 = localRequestOptions2.transform(paramTransformation).diskCacheStrategy(DiskCacheStrategy.RESOURCE);
      }
      if (paramInt2 <= 0)
      {
        paramTransformation = localRequestOptions1;
        if (paramInt3 <= 0) {}
      }
      else
      {
        paramTransformation = localRequestOptions1.override(paramInt2, paramInt3).centerCrop();
      }
      if ((!paramBoolean2) && (SystemConfig.f(paramContext)))
      {
        paramTransformation.skipMemoryCache(true);
        paramTransformation.diskCacheStrategy(DiskCacheStrategy.NONE);
      }
      Logger.d("ImageLoader loadUrl=" + paramString);
      try
      {
        Glide.with(paramContext).load(paramString).apply(paramTransformation).listener(paramImageLoadCallback).into(paramImageView);
        return;
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      paramInt1 = 0;
      break;
      label212:
      localRequestOptions2.dontAnimate();
    }
  }
  
  public static void a(ImageView paramImageView, int paramInt)
  {
    if (paramInt != 0) {}
    try
    {
      paramImageView.setBackgroundResource(paramInt);
      paramImageView.setImageDrawable(null);
      return;
    }
    catch (Throwable paramImageView)
    {
      paramImageView.printStackTrace();
    }
  }
  
  public static void b(Context paramContext, ImageView paramImageView, Image paramImage, int paramInt1, ImageLoadCallback paramImageLoadCallback, int paramInt2, int paramInt3)
  {
    if (paramImage == null)
    {
      a(paramImageView, paramInt1);
      return;
    }
    b(paramContext, paramImageView, paramImage.getImagePath(), paramInt1, paramImageLoadCallback, paramInt2, paramInt3, null);
  }
  
  public static void b(Context paramContext, ImageView paramImageView, Image paramImage, int paramInt, ImageLoadCallback paramImageLoadCallback, Transformation<Bitmap> paramTransformation)
  {
    if (paramImage == null)
    {
      a(paramImageView, paramInt);
      return;
    }
    b(paramContext, paramImageView, paramImage.getImagePath(), paramInt, paramImageLoadCallback, 0, 0, paramTransformation);
  }
  
  private static void b(Context paramContext, ImageView paramImageView, String paramString, int paramInt1, ImageLoadCallback paramImageLoadCallback, int paramInt2, int paramInt3, Transformation<Bitmap> paramTransformation)
  {
    a(paramContext, paramImageView, paramString, paramInt1, paramImageLoadCallback, paramInt2, paramInt3, paramTransformation, true, false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\imageload\ImageLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */