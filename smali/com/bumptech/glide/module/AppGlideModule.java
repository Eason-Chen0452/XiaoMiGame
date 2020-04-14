package com.bumptech.glide.module;

import android.content.Context;
import com.bumptech.glide.GlideBuilder;

public abstract class AppGlideModule
  extends LibraryGlideModule
  implements AppliesOptions
{
  public void applyOptions(Context paramContext, GlideBuilder paramGlideBuilder) {}
  
  public boolean isManifestParsingEnabled()
  {
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\module\AppGlideModule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */