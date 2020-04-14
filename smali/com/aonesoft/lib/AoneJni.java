package com.aonesoft.lib;

import java.util.Hashtable;

public class AoneJni
{
  public static native void nativeInit(AoneResultListener paramAoneResultListener);
  
  public static native void nativeInitForNative(AoneNativeListener paramAoneNativeListener);
  
  public static native void nativeLoadSdk();
  
  public static native void nativeLogin(AoneResultListener paramAoneResultListener);
  
  public static native void nativeLoginForNative(AoneNativeListener paramAoneNativeListener);
  
  public static native void nativePay(Hashtable<String, String> paramHashtable, AoneResultListener paramAoneResultListener);
  
  public static native void nativePayForNative(Hashtable<String, String> paramHashtable, AoneNativeListener paramAoneNativeListener);
  
  public static native void nativeSetJavaVM();
  
  public static native void nativeSetOAuthType(String paramString);
  
  public static native void nativeSetPayChannel(String paramString);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneJni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */