package com.xiaomi.android.support.v7.widget;

import android.view.animation.Interpolator;

final class w
  implements Interpolator
{
  public final float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\android\support\v7\widget\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */