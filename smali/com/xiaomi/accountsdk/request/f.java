package com.xiaomi.accountsdk.request;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

final class f
  implements SimpleRequest.a
{
  public final HttpURLConnection a(URL paramURL)
    throws IOException
  {
    if (SimpleRequest.a() != null) {
      SimpleRequest.a();
    }
    return (HttpURLConnection)paramURL.openConnection();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */