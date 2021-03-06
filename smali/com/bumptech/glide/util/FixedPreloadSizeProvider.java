package com.bumptech.glide.util;

import com.bumptech.glide.ListPreloader.PreloadSizeProvider;
import java.util.Arrays;

public class FixedPreloadSizeProvider<T>
  implements ListPreloader.PreloadSizeProvider<T>
{
  private final int[] size;
  
  public FixedPreloadSizeProvider(int paramInt1, int paramInt2)
  {
    this.size = new int[] { paramInt1, paramInt2 };
  }
  
  public int[] getPreloadSize(T paramT, int paramInt1, int paramInt2)
  {
    return Arrays.copyOf(this.size, this.size.length);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\util\FixedPreloadSizeProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */