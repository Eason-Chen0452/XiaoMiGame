package com.aonesoft.lib;

import java.util.Hashtable;

public class AoneNativeListener
{
  public native void initCallback(int paramInt, Hashtable<String, String> paramHashtable);
  
  public native void loginCallback(int paramInt, Hashtable<String, String> paramHashtable);
  
  public native void payCallback(int paramInt, Hashtable<String, String> paramHashtable);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneNativeListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */