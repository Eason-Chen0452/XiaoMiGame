package com.mi.milink.sdk.account;

public class MiAccount
  extends IAccount
{
  private static MiAccount INSTANCE;
  
  public MiAccount() {}
  
  public MiAccount(int paramInt)
  {
    super(paramInt);
  }
  
  public static MiAccount getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new MiAccount();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  public void generateServiceTokenAndSSecurity()
  {
    throw new IllegalAccessError("stardard mode will never call generateServiceTokenAndSSecurity");
  }
  
  protected int getAccountType()
  {
    return 0;
  }
  
  protected String getPrefFileName()
  {
    return "milink_account";
  }
  
  public String getPrivacyKey()
  {
    throw new IllegalAccessError("stardard mode will never call getPrivacyKey");
  }
  
  protected String getTag()
  {
    return "MiAccount";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\MiAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */