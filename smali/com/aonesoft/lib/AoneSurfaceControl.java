package com.aonesoft.lib;

import android.graphics.Bitmap;
import android.view.View;

public class AoneSurfaceControl
{
  public static Bitmap screenshot(View paramView)
  {
    paramView.setDrawingCacheEnabled(true);
    paramView.buildDrawingCache();
    return paramView.getDrawingCache();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneSurfaceControl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */