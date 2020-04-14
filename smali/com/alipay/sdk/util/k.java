package com.alipay.sdk.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.alipay.sdk.cons.a;

public final class k
{
  private static final String a = "content://com.alipay.android.app.settings.data.ServerProvider/current_server";
  
  public static String a(Context paramContext)
  {
    if (paramContext == null) {
      paramContext = a.a;
    }
    String str;
    do
    {
      return paramContext;
      str = a.a;
      paramContext = str;
    } while (!TextUtils.isEmpty(str));
    return a.a;
  }
  
  private static String b(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse("content://com.alipay.android.app.settings.data.ServerProvider/current_server"), null, null, null, null);
    paramContext = (Context)localObject2;
    if (localCursor != null)
    {
      paramContext = (Context)localObject2;
      if (localCursor.getCount() > 0)
      {
        paramContext = (Context)localObject1;
        if (localCursor.moveToFirst()) {
          paramContext = localCursor.getString(localCursor.getColumnIndex("url"));
        }
        localCursor.close();
      }
    }
    return paramContext;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */