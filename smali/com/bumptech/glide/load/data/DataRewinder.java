package com.bumptech.glide.load.data;

import java.io.IOException;

public abstract interface DataRewinder<T>
{
  public abstract void cleanup();
  
  public abstract T rewindAndGet()
    throws IOException;
  
  public static abstract interface Factory<T>
  {
    public abstract DataRewinder<T> build(T paramT);
    
    public abstract Class<T> getDataClass();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\data\DataRewinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */