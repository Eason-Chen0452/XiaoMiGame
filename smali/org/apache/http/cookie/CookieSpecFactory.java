package org.apache.http.cookie;

import org.apache.http.params.HttpParams;

@Deprecated
public abstract interface CookieSpecFactory
{
  public abstract CookieSpec newInstance(HttpParams paramHttpParams);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\cookie\CookieSpecFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */