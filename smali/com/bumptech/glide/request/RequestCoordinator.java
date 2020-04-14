package com.bumptech.glide.request;

public abstract interface RequestCoordinator
{
  public abstract boolean canNotifyStatusChanged(Request paramRequest);
  
  public abstract boolean canSetImage(Request paramRequest);
  
  public abstract boolean isAnyResourceSet();
  
  public abstract void onRequestSuccess(Request paramRequest);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\RequestCoordinator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */