package com.xiaomi.gamecenter.sdk.ui.notice.transform;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import cn.com.wali.basetool.log.Logger;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public class AccountIconProcesser
{
  public static Bitmap a(BitmapPool paramBitmapPool, Bitmap paramBitmap, float paramFloat)
  {
    int j = paramBitmap.getWidth();
    int i = paramBitmap.getHeight();
    int m = Math.max(j, i);
    int k = Math.min(j, i);
    Bitmap localBitmap;
    if (m > 300)
    {
      j = Math.min(300, k);
      paramFloat = j / 2;
      localBitmap = Bitmap.createScaledBitmap(paramBitmap, j, j, false);
      Logger.d("XXX scale w=" + j);
      i = j;
    }
    for (;;)
    {
      paramBitmap = paramBitmapPool.get(j, i, Bitmap.Config.ARGB_8888);
      paramBitmapPool = paramBitmap;
      if (paramBitmap == null) {
        paramBitmapPool = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888);
      }
      paramBitmap = new Canvas(paramBitmapPool);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, j, i);
      RectF localRectF = new RectF(localRect);
      localPaint.setAntiAlias(true);
      paramBitmap.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-12434878);
      paramBitmap.drawRoundRect(localRectF, paramFloat, paramFloat, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      paramBitmap.drawBitmap(localBitmap, localRect, localRect, localPaint);
      return paramBitmapPool;
      localBitmap = paramBitmap;
      if (k < 300)
      {
        paramFloat = k / 2;
        localBitmap = Bitmap.createScaledBitmap(paramBitmap, k, k, false);
        Logger.d("XXX scale w=" + k);
        i = k;
        j = k;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\transform\AccountIconProcesser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */