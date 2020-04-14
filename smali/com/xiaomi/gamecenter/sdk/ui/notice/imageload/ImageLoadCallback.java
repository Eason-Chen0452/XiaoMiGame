package com.xiaomi.gamecenter.sdk.ui.notice.imageload;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.ImageView;
import cn.com.wali.basetool.log.Logger;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import java.lang.ref.WeakReference;

public class ImageLoadCallback
  implements RequestListener<Drawable>
{
  private WeakReference<ImageView> a;
  private boolean b;
  private a c;
  private String d;
  
  public ImageLoadCallback(ImageView paramImageView)
  {
    if (paramImageView != null) {
      this.a = new WeakReference(paramImageView);
    }
  }
  
  public ImageLoadCallback(String paramString)
  {
    this.d = paramString;
  }
  
  private boolean a()
  {
    this.b = false;
    if ((this.a != null) && (this.a.get() != null)) {}
    try
    {
      if (Build.VERSION.SDK_INT < 16) {
        ((ImageView)this.a.get()).setBackgroundDrawable(null);
      }
      for (;;)
      {
        if (this.c != null)
        {
          if (this.a != null) {
            break;
          }
          if (TextUtils.isEmpty(this.d)) {
            this.a.get();
          }
        }
        return false;
        ((ImageView)this.a.get()).setBackground(null);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      TextUtils.isEmpty(this.d);
    }
    return false;
  }
  
  public final void a(int paramInt)
  {
    if (this.a == null) {}
    while ((this.a.get() == null) || (this.b)) {
      return;
    }
    this.b = true;
    ((ImageView)this.a.get()).setBackgroundResource(paramInt);
    ((ImageView)this.a.get()).setImageDrawable(null);
  }
  
  public boolean onLoadFailed(@Nullable GlideException paramGlideException, Object paramObject, Target<Drawable> paramTarget, boolean paramBoolean)
  {
    this.b = false;
    Logger.a("MiGameSDK.ImageLoadCallback", "load error:" + paramObject.toString());
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\imageload\ImageLoadCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */