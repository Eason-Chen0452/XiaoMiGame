package com.xiaomi.gamecenter.sdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

final class d
  extends BroadcastReceiver
{
  d(Downloader paramDownloader) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (TextUtils.equals(paramIntent.getAction(), "android.intent.action.DOWNLOAD_COMPLETE")) {
      Downloader.b(this.a);
    }
    while (!TextUtils.equals(paramIntent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
      return;
    }
    Downloader.c(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */