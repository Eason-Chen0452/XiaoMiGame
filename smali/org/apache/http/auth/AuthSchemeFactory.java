package org.apache.http.auth;

import org.apache.http.params.HttpParams;

@Deprecated
public abstract interface AuthSchemeFactory
{
  public abstract AuthScheme newInstance(HttpParams paramHttpParams);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\auth\AuthSchemeFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */