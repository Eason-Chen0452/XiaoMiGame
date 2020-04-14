package com.xiaomi.gamecenter.sdk.ui;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

public class MiSelector
{
  public static StateListDrawable a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842908 }, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842919, 16842909 }, paramDrawable2);
    localStateListDrawable.addState(new int[0], paramDrawable1);
    return localStateListDrawable;
  }
  
  public static StateListDrawable b(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842908 }, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842919, 16842909 }, paramDrawable2);
    localStateListDrawable.addState(new int[] { 16842912 }, paramDrawable2);
    localStateListDrawable.addState(new int[0], paramDrawable1);
    return localStateListDrawable;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiSelector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */