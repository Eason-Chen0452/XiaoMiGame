package com.bumptech.glide.load.engine;

public abstract interface Resource<Z>
{
  public abstract Z get();
  
  public abstract Class<Z> getResourceClass();
  
  public abstract int getSize();
  
  public abstract void recycle();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\engine\Resource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */