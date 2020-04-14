package com.xiaomi.passport;

public class PassportUserEnvironment
{
  public static class Holder
  {
    private static final PassportUserEnvironment a;
    private static PassportUserEnvironment b;
    
    static
    {
      PassportUserEnvironment localPassportUserEnvironment = new PassportUserEnvironment();
      a = localPassportUserEnvironment;
      b = localPassportUserEnvironment;
    }
  }
  
  public static enum TelePhonyInfo
  {
    String a;
    
    static
    {
      SERIAL_NUMBER = new TelePhonyInfo("SERIAL_NUMBER", 1, "getSimSerialNumberForSlot");
      LINE1_NUMBER = new TelePhonyInfo("LINE1_NUMBER", 2, "getLine1NumberForSlot");
      OPERATOR = new TelePhonyInfo("OPERATOR", 3, "getSimOperatorForSlot");
    }
    
    private TelePhonyInfo(String paramString)
    {
      this.a = paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\PassportUserEnvironment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */