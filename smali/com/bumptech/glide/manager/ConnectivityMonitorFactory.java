package com.bumptech.glide.manager;

import android.content.Context;
import android.support.annotation.NonNull;

public abstract interface ConnectivityMonitorFactory
{
  @NonNull
  public abstract ConnectivityMonitor build(@NonNull Context paramContext, @NonNull ConnectivityMonitor.ConnectivityListener paramConnectivityListener);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\manager\ConnectivityMonitorFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */