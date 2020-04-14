package com.xiaomi.licensinglibrary;

public abstract interface LicenseCheckerCallback
{
  public abstract void allow(int paramInt);
  
  public abstract void applicationError(int paramInt);
  
  public abstract void dontAllow(int paramInt);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\LicenseCheckerCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */