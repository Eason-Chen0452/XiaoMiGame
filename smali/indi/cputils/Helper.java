package indi.cputils;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.File;

public class Helper
{
  static Context sContext;
  
  public static void Init(Context paramContext)
  {
    sContext = paramContext;
    SetAssetsMgr(paramContext.getAssets());
    SetWritablePath(paramContext.getFilesDir().toString());
    String str = paramContext.getFilesDir().toString();
    if (paramContext.getExternalFilesDir(null) != null) {}
    for (paramContext = paramContext.getExternalFilesDir(null).toString();; paramContext = str)
    {
      SetExternalWritablePath(paramContext);
      return;
      Log.e("cputils", "not hava external path, use internal path");
    }
  }
  
  public static native void SetAssetsMgr(AssetManager paramAssetManager);
  
  public static native void SetExternalWritablePath(String paramString);
  
  public static native void SetWritablePath(String paramString);
  
  public static Context getContext()
  {
    return sContext;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\indi\cputils\Helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */