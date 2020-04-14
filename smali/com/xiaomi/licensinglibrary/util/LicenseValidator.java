package com.xiaomi.licensinglibrary.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.xiaomi.licensinglibrary.model.LicenseInfo;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.json.JSONObject;

public class LicenseValidator
{
  private Context a = null;
  private int b = 0;
  private String c = null;
  private PublicKey d;
  
  public LicenseValidator(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.c = paramString;
    this.d = a(this.c);
  }
  
  private static PublicKey a(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString, 0);
      paramString = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramString));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (InvalidKeySpecException paramString)
    {
      Log.e("LicenseValidator", "Invalid key specification.");
      throw new IllegalArgumentException(paramString);
    }
    catch (Exception paramString)
    {
      Log.e("LicenseValidator", "Invalid key specification.");
    }
    return null;
  }
  
  private static boolean a(LicenseInfo paramLicenseInfo, Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      do
      {
        return false;
      } while (paramLicenseInfo.a() < System.currentTimeMillis());
      String str = paramBundle.getString("mid");
      if ((!TextUtils.isEmpty(paramLicenseInfo.b())) && (TextUtils.equals(str, paramLicenseInfo.b()))) {
        return true;
      }
      str = paramBundle.getString("imei");
      if ((!TextUtils.isEmpty(paramLicenseInfo.c())) && (TextUtils.equals(str, paramLicenseInfo.c()))) {
        return true;
      }
      paramBundle = paramBundle.getString("macwifi");
    } while ((TextUtils.isEmpty(paramLicenseInfo.d())) || (!TextUtils.equals(paramBundle, paramLicenseInfo.d())));
    return true;
  }
  
  private String b(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString, 0);
      Cipher.getInstance("RSA/ECB/PKCS1Padding").init(2, this.d);
      paramString = new String(RSAUtils.a(paramString, this.c), "UTF-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public final boolean a(Bundle paramBundle)
  {
    Object localObject = null;
    if (paramBundle == null) {
      return false;
    }
    String str = this.a.getSharedPreferences("xmgamelicense", 0).getString("license", null);
    for (;;)
    {
      if ((!TextUtils.isEmpty(str)) || (!TextUtils.isEmpty((CharSequence)localObject))) {
        try
        {
          boolean bool = a(new LicenseInfo(new JSONObject((String)localObject)), paramBundle);
          if (bool)
          {
            return true;
            localObject = b(str);
          }
          else
          {
            paramBundle = this.a.getSharedPreferences("xmgamelicense", 0).edit();
            paramBundle.remove("license");
            paramBundle.commit();
            return false;
          }
        }
        catch (Exception paramBundle)
        {
          paramBundle.printStackTrace();
        }
      }
    }
    return false;
  }
  
  public final boolean a(Bundle paramBundle1, Bundle paramBundle2)
  {
    if ((paramBundle1 == null) || (paramBundle2 == null)) {}
    for (;;)
    {
      return false;
      paramBundle1 = paramBundle1.getString("license");
      if (!TextUtils.isEmpty(paramBundle1))
      {
        String str = b(paramBundle1);
        try
        {
          if (a(new LicenseInfo(new JSONObject(str)), paramBundle2))
          {
            if (!TextUtils.isEmpty(paramBundle1))
            {
              paramBundle2 = this.a.getSharedPreferences("xmgamelicense", 0).edit();
              paramBundle2.putString("license", paramBundle1);
              paramBundle2.commit();
            }
            return true;
          }
        }
        catch (Exception paramBundle1)
        {
          paramBundle1.printStackTrace();
        }
      }
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\LicenseValidator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */