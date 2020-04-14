package com.xiaomi.gamecenter.sdk.protocol;

import com.xiaomi.gamecenter.sdk.utils.ParamEntry;
import java.util.ArrayList;
import java.util.Iterator;

abstract class MessageRequest
{
  protected ArrayList<ParamEntry> a;
  protected b b;
  protected MessageMethod c;
  
  public MessageRequest(b paramb, MessageMethod paramMessageMethod)
  {
    this.b = paramb;
    this.a = new ArrayList(5);
    if (paramMessageMethod != null)
    {
      this.c = paramMessageMethod;
      return;
    }
    this.c = MessageMethod.GET;
  }
  
  protected final void a(String paramString1, String paramString2)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ParamEntry localParamEntry = (ParamEntry)localIterator.next();
      if (paramString1.equals(localParamEntry.a()))
      {
        localParamEntry.a(paramString2);
        return;
      }
    }
    try
    {
      this.a.add(new ParamEntry(paramString1, paramString2));
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */