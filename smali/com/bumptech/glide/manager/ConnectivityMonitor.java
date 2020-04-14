package com.bumptech.glide.manager;

public abstract interface ConnectivityMonitor
  extends LifecycleListener
{
  public static abstract interface ConnectivityListener
  {
    public abstract void onConnectivityChanged(boolean paramBoolean);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\manager\ConnectivityMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */