package com.bumptech.glide.load.engine.bitmap_recycle;

public abstract interface ArrayPool
{
  public static final int STANDARD_BUFFER_SIZE_BYTES = 65536;
  
  public abstract void clearMemory();
  
  public abstract <T> T get(int paramInt, Class<T> paramClass);
  
  public abstract <T> void put(T paramT, Class<T> paramClass);
  
  public abstract void trimMemory(int paramInt);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\engine\bitmap_recycle\ArrayPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */