package com.mi.milink.sdk.account;

import android.text.TextUtils;
import com.mi.milink.sdk.account.manager.RSAPublicKey;
import com.mi.milink.sdk.account.manager.RSAPublicKey.PublicKeyAndId;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ChannelAccount
  extends AnonymousAccount
{
  private static final String PREF_CHANNLE_PUB_KEY_SUB = ":";
  int keepAliveTime = 120000;
  
  public ChannelAccount()
  {
    initPubKey();
  }
  
  public ChannelAccount(int paramInt)
  {
    super(paramInt);
    initPubKey();
  }
  
  private String buildChannelPubKey(String paramString1, String paramString2)
  {
    return paramString1 + ":" + paramString2;
  }
  
  private void generateServiceToken()
  {
    RSAPublicKey.PublicKeyAndId localPublicKeyAndId2 = getRandomPublicKeyAndId();
    RSAPublicKey.PublicKeyAndId localPublicKeyAndId1 = localPublicKeyAndId2;
    if (localPublicKeyAndId2 == null) {
      localPublicKeyAndId1 = RSAPublicKey.getPublicKeyAndId();
    }
    this.mServiceToken = localPublicKeyAndId1.id;
    this.mSSecurity = localPublicKeyAndId1.key;
    MiLinkLog.v(getTag(), "generateServiceTokenAndSSecurity mServiceToken=" + this.mServiceToken + ",mSSecurity=" + this.mSSecurity);
  }
  
  private RSAPublicKey.PublicKeyAndId getRandomPublicKeyAndId()
  {
    Object localObject2 = ConfigManager.getInstance().getChannelPubKeys();
    if (localObject2 == null)
    {
      MiLinkLog.v(getTag(), "getRandomPublicKeyAndId is null");
      return null;
    }
    Object localObject1 = new HashMap();
    localObject2 = ((Set)localObject2).iterator();
    Object localObject3;
    if (((Iterator)localObject2).hasNext())
    {
      localObject3 = ((String)((Iterator)localObject2).next()).split(":");
      if (localObject3.length != 2) {
        break label202;
      }
      localObject1 = new HashMap();
      ((Map)localObject1).put(localObject3[0], localObject3[1]);
    }
    label202:
    for (;;)
    {
      break;
      if (((Map)localObject1).size() == 0)
      {
        MiLinkLog.v(getTag(), "getRandomPublicKeyAndId parseChannelPubKey map is null || size=0");
        return null;
      }
      localObject2 = ((String[])localObject1.keySet().toArray(new String[0]))[new java.util.Random().nextInt(localObject1.size())];
      localObject1 = (String)((Map)localObject1).get(localObject2);
      localObject3 = new RSAPublicKey.PublicKeyAndId((String)localObject2, (String)localObject1);
      MiLinkLog.d(getTag(), "getRandomPublicKeyAndId find PublicKeyAndId id=" + (String)localObject2 + ", key=" + (String)localObject1);
      return (RSAPublicKey.PublicKeyAndId)localObject3;
    }
  }
  
  public void DelChannelPubKey()
  {
    String str = buildChannelPubKey(this.mServiceToken, this.mSSecurity);
    ConfigManager.getInstance().deleteChannelPubKey(str);
    generateServiceToken();
  }
  
  public String buildStoreValue(RSAPublicKey.PublicKeyAndId paramPublicKeyAndId)
  {
    return buildChannelPubKey(paramPublicKeyAndId.id, paramPublicKeyAndId.key);
  }
  
  public void generateServiceTokenAndSSecurity()
  {
    if (("0".equals(this.mServiceToken)) || (TextUtils.isEmpty(this.mSSecurity))) {
      generateServiceToken();
    }
  }
  
  protected int getAccountType()
  {
    return 2;
  }
  
  public int getKeepAliveTime()
  {
    MiLinkLog.v(getTag(), "get keepAliveTime:" + this.keepAliveTime);
    return this.keepAliveTime;
  }
  
  protected String getPrefFileName()
  {
    return "milink_channel_account";
  }
  
  protected String getTag()
  {
    return String.format("ChannelAccount[No:%d]", new Object[] { Integer.valueOf(this.mNo) });
  }
  
  public void initPubKey()
  {
    Object localObject = ConfigManager.getInstance().getChannelPubKeys();
    if (localObject == null) {
      localObject = new HashSet();
    }
    for (;;)
    {
      if (((Set)localObject).size() > 0) {
        return;
      }
      Iterator localIterator = new RSAPublicKey().getPublicKeySet().iterator();
      while (localIterator.hasNext()) {
        ((Set)localObject).add(buildStoreValue((RSAPublicKey.PublicKeyAndId)localIterator.next()));
      }
      ConfigManager.getInstance().updateChannelPubKeySet((Set)localObject);
      return;
    }
  }
  
  public void setChannelPubKey(Map<Integer, String> paramMap)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      String str = (String)paramMap.get(localInteger);
      localHashSet.add(buildChannelPubKey(String.valueOf(localInteger), str));
      MiLinkLog.v(getTag(), "setChannelPubKey keyId:" + localInteger + " ,pubKey:" + str.toString());
    }
    ConfigManager.getInstance().updateChannelPubKeySet(localHashSet);
    generateServiceToken();
  }
  
  public void setKeepAliveTime(int paramInt)
  {
    this.keepAliveTime = (paramInt * 1000);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\ChannelAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */