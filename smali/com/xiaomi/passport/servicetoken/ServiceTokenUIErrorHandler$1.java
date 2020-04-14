package com.xiaomi.passport.servicetoken;

import android.os.Bundle;
import android.os.RemoteException;

final class ServiceTokenUIErrorHandler$1
  extends IServiceTokenUIResponse.Stub
{
  ServiceTokenUIErrorHandler$1(ServiceTokenResult paramServiceTokenResult, ServiceTokenFuture paramServiceTokenFuture) {}
  
  public final void onError(int paramInt, String paramString)
    throws RemoteException
  {
    if (paramInt == 4)
    {
      this.val$future.a(new ServiceTokenResult.Builder(this.val$previousResult.a).a(ServiceTokenResult.ErrorCode.ERROR_CANCELLED).b());
      return;
    }
    this.val$future.a(this.val$previousResult);
  }
  
  public final void onRequestContinued()
    throws RemoteException
  {
    this.val$future.a(this.val$previousResult);
  }
  
  public final void onResult(Bundle paramBundle)
    throws RemoteException
  {
    paramBundle = AMAuthTokenConverter.a(paramBundle, this.val$previousResult.a);
    this.val$future.a(paramBundle);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\ServiceTokenUIErrorHandler$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */