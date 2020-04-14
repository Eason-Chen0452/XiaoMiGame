package com.mi.milink.sdk.data;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.mi.milink.sdk.base.Global;
import java.util.Map;

public final class Option
{
  private static final String TAG;
  private static SharedPreferences.Editor editor;
  private static SharedPreferences preferences;
  
  static
  {
    Object localObject = "options.for." + Global.getPackageName();
    TAG = (String)localObject;
    localObject = Global.getSharedPreferences((String)localObject, 0);
    preferences = (SharedPreferences)localObject;
    editor = ((SharedPreferences)localObject).edit();
  }
  
  public static SharedPreferences.Editor clear()
  {
    return editor.clear();
  }
  
  public static boolean commit()
  {
    return editor.commit();
  }
  
  public static boolean contains(String paramString)
  {
    return preferences.contains(paramString);
  }
  
  public static Map<String, ?> getAll()
  {
    return preferences.getAll();
  }
  
  public static boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return preferences.getBoolean(paramString, paramBoolean);
  }
  
  public static float getFloat(String paramString, float paramFloat)
  {
    return preferences.getFloat(paramString, paramFloat);
  }
  
  public static int getInt(String paramString, int paramInt)
  {
    return preferences.getInt(paramString, paramInt);
  }
  
  public static long getLong(String paramString, long paramLong)
  {
    return preferences.getLong(paramString, paramLong);
  }
  
  public static String getString(String paramString1, String paramString2)
  {
    return preferences.getString(paramString1, paramString2);
  }
  
  public static SharedPreferences.Editor putBoolean(String paramString, boolean paramBoolean)
  {
    return editor.putBoolean(paramString, paramBoolean);
  }
  
  public static SharedPreferences.Editor putFloat(String paramString, float paramFloat)
  {
    return editor.putFloat(paramString, paramFloat);
  }
  
  public static SharedPreferences.Editor putInt(String paramString, int paramInt)
  {
    return editor.putInt(paramString, paramInt);
  }
  
  public static SharedPreferences.Editor putLong(String paramString, long paramLong)
  {
    return editor.putLong(paramString, paramLong);
  }
  
  public static SharedPreferences.Editor putString(String paramString1, String paramString2)
  {
    return editor.putString(paramString1, paramString2);
  }
  
  public static SharedPreferences.Editor remove(String paramString)
  {
    return editor.remove(paramString);
  }
  
  public static void startListen(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    preferences.registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  public static void stopListen(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    preferences.unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\data\Option.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */