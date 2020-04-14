package org.cocos2dx.lib;

public class Cocos2dxLuaJavaBridge
{
  public static native int callLuaFunctionWithString(int paramInt, String paramString);
  
  public static native int callLuaGlobalFunctionWithString(String paramString1, String paramString2);
  
  public static native int releaseLuaFunction(int paramInt);
  
  public static native int retainLuaFunction(int paramInt);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxLuaJavaBridge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */