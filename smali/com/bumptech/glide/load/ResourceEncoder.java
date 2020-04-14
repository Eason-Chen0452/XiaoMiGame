package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.Resource;

public abstract interface ResourceEncoder<T>
  extends Encoder<Resource<T>>
{
  public abstract EncodeStrategy getEncodeStrategy(Options paramOptions);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\ResourceEncoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */