package com.xiaomi.passport.v2.utils;

import android.content.Context;
import com.xiaomi.phonenum.PhoneNumKeeper;
import com.xiaomi.phonenum.PhoneNumKeeperFactory;

public class ActivatorPhoneController
{
  protected PhoneNumKeeper a;
  
  public ActivatorPhoneController(Context paramContext)
  {
    this.a = new PhoneNumKeeperFactory().createPhoneNumKeeper(paramContext, "2882303761517565051");
    this.a.setUp(new a(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\v2\utils\ActivatorPhoneController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */