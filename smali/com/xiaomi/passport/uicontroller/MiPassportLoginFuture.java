package com.xiaomi.passport.uicontroller;

import android.os.Build.VERSION;
import android.os.RemoteException;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.MiLoginResult;
import com.xiaomi.accountsdk.account.data.NotificationAuthResult;
import com.xiaomi.accountsdk.account.exception.AccountException;
import com.xiaomi.accountsdk.account.exception.HttpException;
import com.xiaomi.accountsdk.account.exception.IllegalDeviceException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidStep2codeException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.account.exception.PassportIOException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import java.io.IOException;
import javax.net.ssl.SSLException;

public abstract class MiPassportLoginFuture
  extends d<MiLoginResult, AccountInfo>
{
  public MiPassportLoginFuture(d.a<AccountInfo> parama)
  {
    super(parama);
  }
  
  protected AccountInfo a(MiLoginResult paramMiLoginResult)
    throws InvalidResponseException, NeedNotificationException, NeedVerificationException, InvalidStep2codeException, IOException, InvalidCredentialException, NeedCaptchaException, InvalidUserNameException, AccessDeniedException, IllegalDeviceException, RemoteException
  {
    if (paramMiLoginResult == null) {
      throw new InvalidResponseException("result is null");
    }
    Object localObject;
    switch (paramMiLoginResult.h)
    {
    case 12: 
    default: 
      throw new IllegalStateException("this should not be happen");
    case 0: 
      return paramMiLoginResult.c;
    case 3: 
      throw new NeedNotificationException(paramMiLoginResult.a, paramMiLoginResult.e);
    case 2: 
      throw new NeedVerificationException(paramMiLoginResult.f, paramMiLoginResult.g, paramMiLoginResult.a);
    case 11: 
      throw new InvalidStep2codeException();
    case 5: 
      if (paramMiLoginResult.j)
      {
        localObject = new PassportIOException(0, "http exception");
        ((PassportIOException)localObject).b = paramMiLoginResult.b;
        ((PassportIOException)localObject).c = true;
        throw ((Throwable)localObject);
      }
      throw new IOException("network error");
    case 4: 
      localObject = new InvalidCredentialException(paramMiLoginResult.i);
      ((InvalidCredentialException)localObject).e = paramMiLoginResult.f;
      ((InvalidCredentialException)localObject).f = paramMiLoginResult.d;
      throw ((Throwable)localObject);
    case 1: 
      throw new NeedCaptchaException(paramMiLoginResult.d);
    case 8: 
      throw new InvalidUserNameException();
    case 7: 
      localObject = new AccessDeniedException(403, "access denied");
      if (paramMiLoginResult.j)
      {
        ((HttpException)localObject).b = paramMiLoginResult.b;
        ((HttpException)localObject).c = true;
      }
      throw ((Throwable)localObject);
    case 6: 
      localObject = new InvalidResponseException("server error");
      if (paramMiLoginResult.j)
      {
        ((AccountException)localObject).c = paramMiLoginResult.b;
        ((AccountException)localObject).d = true;
      }
      throw ((Throwable)localObject);
    case 10: 
      throw new SSLException("time or network error");
    case 9: 
      throw new IllegalDeviceException("device id should not be null");
    }
    if (Build.VERSION.SDK_INT < 15) {
      throw new RemoteException();
    }
    throw new RemoteException("Service side fatal error");
  }
  
  public static final class AddOrUpdateAccountFuture
    extends d<Void, Void>
  {
    public AddOrUpdateAccountFuture(d.a<Void> parama)
    {
      super();
    }
  }
  
  public static abstract class AddOrUpdateUICallback
    implements d.a
  {}
  
  public static class NotificationAuthFuture
    extends d<NotificationAuthResult, NotificationAuthResult>
  {
    public NotificationAuthFuture(d.a<NotificationAuthResult> parama)
    {
      super();
    }
  }
  
  public static abstract class NotificationAuthUICallback
    implements d.a
  {}
  
  public static final class NotificationLoginFuture
    extends MiPassportLoginFuture
  {
    public NotificationLoginFuture(d.a<AccountInfo> parama)
    {
      super();
    }
    
    protected final AccountInfo a(MiLoginResult paramMiLoginResult)
      throws InvalidResponseException, NeedNotificationException, IOException, InvalidCredentialException, InvalidUserNameException, AccessDeniedException, IllegalDeviceException, RemoteException
    {
      try
      {
        paramMiLoginResult = super.a(paramMiLoginResult);
        return paramMiLoginResult;
      }
      catch (InvalidStep2codeException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
      catch (NeedVerificationException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
      catch (NeedCaptchaException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
    }
  }
  
  public static abstract class NotificationLoginUICallback
    implements d.a
  {}
  
  public static final class PasswordLoginFuture
    extends MiPassportLoginFuture
  {
    public PasswordLoginFuture(d.a<AccountInfo> parama)
    {
      super();
    }
    
    protected final AccountInfo a(MiLoginResult paramMiLoginResult)
      throws InvalidResponseException, NeedNotificationException, NeedVerificationException, IOException, InvalidCredentialException, NeedCaptchaException, InvalidUserNameException, AccessDeniedException, IllegalDeviceException, RemoteException
    {
      try
      {
        paramMiLoginResult = super.a(paramMiLoginResult);
        return paramMiLoginResult;
      }
      catch (InvalidStep2codeException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
    }
  }
  
  public static abstract class PasswordLoginUICallback
    implements d.a
  {}
  
  public static final class Step2LoginFuture
    extends MiPassportLoginFuture
  {
    public Step2LoginFuture(d.a<AccountInfo> parama)
    {
      super();
    }
    
    protected final AccountInfo a(MiLoginResult paramMiLoginResult)
      throws InvalidResponseException, IOException, InvalidCredentialException, InvalidUserNameException, AccessDeniedException, IllegalDeviceException, InvalidStep2codeException, RemoteException
    {
      try
      {
        paramMiLoginResult = super.a(paramMiLoginResult);
        return paramMiLoginResult;
      }
      catch (NeedNotificationException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
      catch (NeedVerificationException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
      catch (NeedCaptchaException paramMiLoginResult)
      {
        throw new IllegalStateException("this should not be happen");
      }
    }
  }
  
  public static abstract class Step2LoginUICallback
    implements d.a
  {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\MiPassportLoginFuture.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */