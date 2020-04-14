package com.xiaomi.gamecenter.sdk.ui.mifloat.menu;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class MiFloatMenuInfo
{
  private List<MiFloatMenuItemInfo> a;
  
  public static MiFloatMenuInfo a(JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.optJSONObject("data");
    if (localObject == null) {}
    do
    {
      return null;
      paramJSONObject = new MiFloatMenuInfo();
      localObject = ((JSONObject)localObject).optJSONArray("menu");
    } while ((localObject == null) || (((JSONArray)localObject).length() <= 0));
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < ((JSONArray)localObject).length())
    {
      localArrayList.add(MiFloatMenuItemInfo.a(((JSONArray)localObject).optJSONObject(i)));
      i += 1;
    }
    paramJSONObject.a = localArrayList;
    return paramJSONObject;
  }
  
  public final List<MiFloatMenuItemInfo> a()
  {
    return this.a;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\menu\MiFloatMenuInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */