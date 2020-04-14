package com.mi.milink.sdk.base.os;

import android.net.Proxy;

final class Http$HttpProxy$1
  extends Http.HttpProxy
{
  public final String getHost()
  {
    return Proxy.getDefaultHost();
  }
  
  public final int getPort()
  {
    return Proxy.getDefaultPort();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\Http$HttpProxy$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */