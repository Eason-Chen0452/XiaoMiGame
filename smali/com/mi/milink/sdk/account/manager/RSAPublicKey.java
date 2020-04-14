package com.mi.milink.sdk.account.manager;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class RSAPublicKey
{
  public static String key2 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDp9WJz0gTAQP5oneVMs+ubmBDn7uFbNJOetNH19Ze+4EyYxyg7zPr9rGlWuNmiQzd7KeHB6uOOBTOIYtRl0J/z4fx5aPejleHfJEd8urjkMCEReDTLKrFa0IeBHRqy8FyGjMtVQJUw9V30Jvy7WFFB07rTw1Lt2mJsQOpPt4CjPwIDAQAB";
  public static String key3 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD+qNU/W2iWBi5APoJ9nOSgD1IFCI18OQ6ksWDqjWK0GIpOU0wapEa9cVKbbhDkGwpX5I5JEuHygPsAEMWLRF6zr9h5RqdOjISlaeAU4nwsd4dJRNHeHON5COkGo38Eu9PJSGzOed7sjCC7XxCI+E2N7hiaFRQlF2obHQch6Cnb9wIDAQAB";
  public static String key4 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCm4DNek5oJVR0AkGNG1A3WMAcSf2ifKI6Ythj1SYeeL0CZhxRn2FBQtGlxRZRDq0FFws0VlzZpo4xatJpEJh2CBpooMK2VJYQ3Erm8eyBw2vQEJ6dhOZ8UqRSMwaKT4g6IEp8TqtArjbFaOcvKLq4APanv1OXTi/Xo5Px3T84gUQIDAQAB";
  
  public static PublicKeyAndId getPublicKeyAndId()
  {
    Random localRandom = new Random();
    String str1 = key2;
    String str2 = key3;
    String str3 = key4;
    int i = localRandom.nextInt(3);
    return new PublicKeyAndId(String.valueOf(i + 2), new String[] { str1, str2, str3 }[i]);
  }
  
  public Set<PublicKeyAndId> getPublicKeySet()
  {
    HashSet localHashSet = new HashSet();
    PublicKeyAndId localPublicKeyAndId1 = new PublicKeyAndId("2", key2);
    PublicKeyAndId localPublicKeyAndId2 = new PublicKeyAndId("3", key3);
    PublicKeyAndId localPublicKeyAndId3 = new PublicKeyAndId("4", key4);
    localHashSet.add(localPublicKeyAndId1);
    localHashSet.add(localPublicKeyAndId2);
    localHashSet.add(localPublicKeyAndId3);
    return localHashSet;
  }
  
  public static class PublicKeyAndId
  {
    public String id;
    public String key;
    
    public PublicKeyAndId(String paramString1, String paramString2)
    {
      this.id = paramString1;
      this.key = paramString2;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\manager\RSAPublicKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */