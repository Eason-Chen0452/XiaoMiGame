package com.xiaomi.accountsdk.request;

import com.xiaomi.account.exception.PassportCAException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import org.json.JSONException;

public class PassportRequestException
  extends Exception
{
  public PassportRequestException(PassportCAException paramPassportCAException)
  {
    super(paramPassportCAException);
  }
  
  public PassportRequestException(InvalidCredentialException paramInvalidCredentialException)
  {
    super(paramInvalidCredentialException);
  }
  
  public PassportRequestException(InvalidUserNameException paramInvalidUserNameException)
  {
    super(paramInvalidUserNameException);
  }
  
  public PassportRequestException(NeedCaptchaException paramNeedCaptchaException)
  {
    super(paramNeedCaptchaException);
  }
  
  public PassportRequestException(NeedNotificationException paramNeedNotificationException)
  {
    super(paramNeedNotificationException);
  }
  
  public PassportRequestException(NeedVerificationException paramNeedVerificationException)
  {
    super(paramNeedVerificationException);
  }
  
  public PassportRequestException(AccessDeniedException paramAccessDeniedException)
  {
    super(paramAccessDeniedException);
  }
  
  public PassportRequestException(AuthenticationFailureException paramAuthenticationFailureException)
  {
    super(paramAuthenticationFailureException);
  }
  
  public PassportRequestException(InvalidResponseException paramInvalidResponseException)
  {
    super(paramInvalidResponseException);
  }
  
  public PassportRequestException(JSONException paramJSONException)
  {
    super(paramJSONException);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportRequestException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */