package com.xiaomi.accountsdk.request;

import java.util.ArrayList;
import java.util.List;

public abstract class RequestWithIPStatHelper
  extends IPStatHelper
{
  public static final class Composition
    extends RequestWithIPStatHelper
  {
    private final List<RequestWithIPStatHelper> a = new ArrayList();
    
    public Composition(RequestWithIPStatHelper... paramVarArgs)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        RequestWithIPStatHelper localRequestWithIPStatHelper = paramVarArgs[i];
        if (localRequestWithIPStatHelper != null) {
          this.a.add(localRequestWithIPStatHelper);
        }
        i += 1;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\RequestWithIPStatHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */