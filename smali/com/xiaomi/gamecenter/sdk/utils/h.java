package com.xiaomi.gamecenter.sdk.utils;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class h
{
  public static String a(List<ParamEntry> paramList)
  {
    Collections.sort(paramList, new i());
    Object localObject = new StringBuffer();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ParamEntry localParamEntry = (ParamEntry)paramList.next();
      ((StringBuffer)localObject).append(localParamEntry.a).append("=").append(localParamEntry.b).append("&");
    }
    localObject = ((StringBuffer)localObject).toString();
    paramList = (List<ParamEntry>)localObject;
    if (((String)localObject).endsWith("&")) {
      paramList = ((String)localObject).substring(0, ((String)localObject).length() - 1);
    }
    return paramList;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */