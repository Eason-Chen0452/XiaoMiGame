package com.aonesoft.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

public class SaveImageInBackgroundData
{
  Context context;
  Runnable finisher;
  int iconSize;
  Bitmap image;
  Uri imageUri;
  int result;
  
  void clearContext()
  {
    this.context = null;
  }
  
  void clearImage()
  {
    this.image = null;
    this.imageUri = null;
    this.iconSize = 0;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\SaveImageInBackgroundData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */