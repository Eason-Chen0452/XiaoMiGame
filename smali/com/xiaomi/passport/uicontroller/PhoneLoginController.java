package com.xiaomi.passport.uicontroller;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class PhoneLoginController
{
  private static final ExecutorService a = ;
  private PhoneUserInfoHelper b = new PhoneUserInfoHelper();
  
  public static enum ErrorCode
  {
    static
    {
      ERROR_UNKNOWN = new ErrorCode("ERROR_UNKNOWN", 1);
      ERROR_AUTH_FAIL = new ErrorCode("ERROR_AUTH_FAIL", 2);
      ERROR_NETWORK = new ErrorCode("ERROR_NETWORK", 3);
      ERROR_SERVER = new ErrorCode("ERROR_SERVER", 4);
      ERROR_ACCESS_DENIED = new ErrorCode("ERROR_ACCESS_DENIED", 5);
      ERROR_INVALID_PARAM = new ErrorCode("ERROR_INVALID_PARAM", 6);
      ERROR_USER_ACTION_OVER_LIMIT = new ErrorCode("ERROR_USER_ACTION_OVER_LIMIT", 7);
      ERROR_PASSWORD = new ErrorCode("ERROR_PASSWORD", 8);
    }
    
    private ErrorCode() {}
  }
  
  public static class PhoneUserInfoHelper {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\PhoneLoginController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */