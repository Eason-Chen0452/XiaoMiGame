package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.util.Base64;

public class Base64Helper
{
  @TargetApi(8)
  public static String encodeToString(byte[] paramArrayOfByte, int paramInt)
  {
    return Base64.encodeToString(paramArrayOfByte, paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\Base64Helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */