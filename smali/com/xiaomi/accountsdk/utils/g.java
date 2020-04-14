package com.xiaomi.accountsdk.utils;

import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.SimpleRequest;
import java.io.IOException;

final class g
  implements Runnable
{
  g(f paramf) {}
  
  public final void run()
  {
    try
    {
      SimpleRequest.a(f.c());
      return;
    }
    catch (IOException localIOException)
    {
      AccountLog.d("SyncServerTimeExecutor", "syncServerTime", localIOException);
      return;
    }
    catch (AccessDeniedException localAccessDeniedException)
    {
      AccountLog.d("SyncServerTimeExecutor", "syncServerTime", localAccessDeniedException);
      return;
    }
    catch (AuthenticationFailureException localAuthenticationFailureException)
    {
      AccountLog.d("SyncServerTimeExecutor", "syncServerTime", localAuthenticationFailureException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */