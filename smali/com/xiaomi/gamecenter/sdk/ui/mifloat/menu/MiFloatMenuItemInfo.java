package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import org.json.JSONObject;

public class MiFloatMenuItemInfo
{
  private String a;
  private String b;
  private int c;
  private String d;
  private boolean e = false;
  
  public static MiFloatMenuItemInfo a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    MiFloatMenuItemInfo localMiFloatMenuItemInfo = new MiFloatMenuItemInfo();
    localMiFloatMenuItemInfo.b = paramJSONObject.optString("title");
    localMiFloatMenuItemInfo.a = paramJSONObject.optString("icon");
    localMiFloatMenuItemInfo.c = paramJSONObject.optInt("type");
    localMiFloatMenuItemInfo.d = paramJSONObject.optString("actUrl");
    return localMiFloatMenuItemInfo;
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public final String b()
  {
    return this.b;
  }
  
  public final boolean c()
  {
    return this.e;
  }
  
  public final int d()
  {
    return this.c;
  }
  
  public final String e()
  {
    return this.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuItemInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */