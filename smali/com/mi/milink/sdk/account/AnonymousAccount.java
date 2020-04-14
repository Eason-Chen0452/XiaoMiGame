package com.mi.milink.sdk.account;

import android.text.TextUtils;
import com.mi.milink.sdk.account.manager.RSAPublicKey;
import com.mi.milink.sdk.account.manager.RSAPublicKey.PublicKeyAndId;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.Random;

public class AnonymousAccount
  extends IAccount
{
  private static AnonymousAccount INSTANCE;
  
  public AnonymousAccount() {}
  
  public AnonymousAccount(int paramInt)
  {
    super(paramInt);
  }
  
  public static AnonymousAccount getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new AnonymousAccount();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  protected String generatePrivacyKey()
  {
    StringBuilder localStringBuilder = new StringBuilder(16);
    Random localRandom = new Random();
    int i = 0;
    while (i < 16)
    {
      localStringBuilder.append((char)(localRandom.nextInt(25) + 97));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public void generateServiceTokenAndSSecurity()
  {
    if (("0".equals(this.mServiceToken)) || (TextUtils.isEmpty(this.mSSecurity)))
    {
      RSAPublicKey.PublicKeyAndId localPublicKeyAndId = RSAPublicKey.getPublicKeyAndId();
      this.mServiceToken = localPublicKeyAndId.id;
      this.mSSecurity = localPublicKeyAndId.key;
      MiLinkLog.v(getTag(), "generateServiceTokenAndSSecurity mServiceToken=" + this.mServiceToken + ",mSSecurity=" + this.mSSecurity);
    }
  }
  
  protected int getAccountType()
  {
    return 1;
  }
  
  protected String getPrefFileName()
  {
    return "milink_anonymous_account";
  }
  
  public String getPrivacyKey()
  {
    if (TextUtils.isEmpty(this.mPrivacyKey)) {
      this.mPrivacyKey = generatePrivacyKey();
    }
    MiLinkLog.v(getTag(), "mPrivacyKey=" + this.mPrivacyKey);
    return this.mPrivacyKey;
  }
  
  public String getSSecurity()
  {
    MiLinkLog.v(getTag(), "mSSecurity=" + this.mSSecurity);
    return this.mSSecurity;
  }
  
  public String getServiceToken()
  {
    MiLinkLog.v(getTag(), "mServiceToken=" + this.mServiceToken);
    return this.mServiceToken;
  }
  
  protected String getTag()
  {
    return "AnonymousAccount";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\AnonymousAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */