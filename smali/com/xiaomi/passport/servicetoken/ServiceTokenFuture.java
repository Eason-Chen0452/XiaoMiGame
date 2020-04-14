package com.xiaomi.passport.servicetoken;

import android.os.RemoteException;
import com.xiaomi.accountsdk.futureservice.a;
import com.xiaomi.accountsdk.futureservice.a.a;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class ServiceTokenFuture
  extends a<ServiceTokenResult, ServiceTokenResult>
{
  public ServiceTokenFuture(a.a<ServiceTokenResult> parama)
  {
    super(parama);
  }
  
  private ServiceTokenResult a(Long paramLong, TimeUnit paramTimeUnit)
  {
    if ((paramLong != null) && (paramTimeUnit != null)) {}
    try
    {
      return (ServiceTokenResult)super.get(paramLong.longValue(), paramTimeUnit);
    }
    catch (InterruptedException paramLong)
    {
      ServiceTokenResult localServiceTokenResult;
      return new ServiceTokenResult.Builder(null).a(ServiceTokenResult.ErrorCode.ERROR_CANCELLED).c(paramLong.getMessage()).b();
    }
    catch (ExecutionException paramLong)
    {
      if (!(paramLong.getCause() instanceof RemoteException)) {
        break label93;
      }
      return new ServiceTokenResult.Builder(null).a(ServiceTokenResult.ErrorCode.ERROR_REMOTE_EXCEPTION).c(paramLong.getMessage()).b();
      if (paramLong.getCause() == null) {
        break label130;
      }
      for (paramLong = paramLong.getCause().getMessage();; paramLong = paramLong.getMessage()) {
        return new ServiceTokenResult.Builder(null).a(ServiceTokenResult.ErrorCode.ERROR_UNKNOWN).c(paramLong).b();
      }
    }
    catch (TimeoutException localTimeoutException) {}
    localServiceTokenResult = (ServiceTokenResult)super.get();
    return localServiceTokenResult;
    label93:
    label130:
    return new ServiceTokenResult.Builder(null).a(ServiceTokenResult.ErrorCode.ERROR_TIME_OUT).c("time out after " + paramLong + " " + paramTimeUnit).b();
  }
  
  public static abstract class ServiceTokenCallback
    implements a.a<ServiceTokenResult>
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\ServiceTokenFuture.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */