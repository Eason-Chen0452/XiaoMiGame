package org.apache.http.auth;

import java.security.Principal;

@Deprecated
public abstract interface Credentials
{
  public abstract String getPassword();
  
  public abstract Principal getUserPrincipal();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\http\auth\Credentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */