package com.xiaomi.passport.servicetoken;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

public final class AMAuthTokenConverter
{
  public static ServiceTokenResult a(Bundle paramBundle, String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramBundle == null)
    {
      localObject1 = new ServiceTokenResult.Builder(paramString).a(ServiceTokenResult.ErrorCode.ERROR_UNKNOWN).b();
      return (ServiceTokenResult)localObject1;
    }
    if (paramBundle.containsKey("authtoken"))
    {
      paramBundle = paramBundle.getString("authtoken");
      if (TextUtils.isEmpty(paramBundle)) {
        paramBundle = (Bundle)localObject1;
      }
      Object localObject3;
      do
      {
        localObject1 = paramBundle;
        if (paramBundle != null) {
          break;
        }
        return new ServiceTokenResult.Builder(paramString).a(ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR).c("invalid auth token").b();
        localObject3 = paramBundle.split(",");
        if ((paramString == null) || (!paramString.startsWith("weblogin:"))) {
          break label158;
        }
        localObject3 = localObject3[0];
        paramBundle = (Bundle)localObject1;
      } while (TextUtils.isEmpty((CharSequence)localObject3));
      localObject1 = localObject3;
      for (paramBundle = (Bundle)localObject2;; paramBundle = localObject3[1])
      {
        paramBundle = new ServiceTokenResult.Builder(paramString).a(ServiceTokenResult.ErrorCode.ERROR_NONE).a((String)localObject1).b(paramBundle).a().b();
        break;
        label158:
        paramBundle = (Bundle)localObject1;
        if (localObject3.length != 2) {
          break;
        }
        paramBundle = (Bundle)localObject1;
        if (TextUtils.isEmpty(localObject3[0])) {
          break;
        }
        paramBundle = (Bundle)localObject1;
        if (TextUtils.isEmpty(localObject3[1])) {
          break;
        }
        localObject1 = localObject3[0];
      }
    }
    localObject1 = (Intent)paramBundle.getParcelable("intent");
    if (localObject1 != null) {
      return new ServiceTokenResult.Builder(paramString).a(ServiceTokenResult.ErrorCode.ERROR_USER_INTERACTION_NEEDED).a((Intent)localObject1).b();
    }
    if (!paramBundle.containsKey("errorCode")) {
      return new ServiceTokenResult.Builder(paramString).a(ServiceTokenResult.ErrorCode.ERROR_UNKNOWN).b();
    }
    int i = paramBundle.getInt("errorCode");
    localObject1 = paramBundle.getString("errorMessage");
    switch (i)
    {
    case 2: 
    default: 
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_UNKNOWN;
    }
    for (;;)
    {
      return new ServiceTokenResult.Builder(paramString).a(paramBundle).c(i + "#" + (String)localObject1).b();
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_REMOTE_EXCEPTION;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_IOERROR;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_CANCELLED;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      continue;
      paramBundle = ServiceTokenResult.ErrorCode.ERROR_AUTHENTICATOR_ERROR;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\AMAuthTokenConverter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */