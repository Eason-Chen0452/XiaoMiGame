package com.xiaomi.gamecenter.sdk.notice;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.GeneralStatInfo;
import com.xiaomi.gamecenter.sdk.utils.AndroidUtils;
import com.xiaomi.gamecenter.sdk.utils.InternetUtil;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.GetNoticeConfigReq;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.GetNoticeConfigReq.Builder;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.StatInfo;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.StatInfo.Builder;

public class Helper
{
  private static String a(String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    }
    return str;
  }
  
  public static NoticeConfigProtos.GetNoticeConfigReq a(Context paramContext)
  {
    NoticeConfigProtos.GetNoticeConfigReq.Builder localBuilder = NoticeConfigProtos.GetNoticeConfigReq.newBuilder();
    localBuilder.setDevAppId(GeneralStatInfo.i());
    localBuilder.setUnionId(a(GeneralStatInfo.a()));
    localBuilder.setSdkType(GeneralStatInfo.h());
    localBuilder.setSdkVersion(a(GeneralStatInfo.f()));
    localBuilder.setChannel(a(GeneralStatInfo.g()));
    String str = GeneralStatInfo.l();
    long l = GeneralStatInfo.c();
    if (l > 0L) {
      localBuilder.setFuid(l);
    }
    Object localObject = str;
    if (TextUtils.isEmpty(str)) {
      localObject = GeneralStatInfo.a();
    }
    localBuilder.setDeviceNo(a((String)localObject));
    localBuilder.setUa(a(GeneralStatInfo.o()));
    localBuilder.setGamePackageName(a(paramContext.getPackageName()));
    if (paramContext != null) {
      localObject = paramContext.getPackageManager();
    }
    try
    {
      localObject = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
      int i = ((PackageInfo)localObject).versionCode;
      localObject = ((PackageInfo)localObject).versionName;
      localBuilder.setGameVersionCode(i);
      localBuilder.setGameVersionName(a((String)localObject));
      localBuilder.setModel(a(GeneralStatInfo.j()));
      localObject = NoticeConfigProtos.StatInfo.newBuilder();
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setImeiMd5(a(GeneralStatInfo.k()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setImeiSha1(a(GeneralStatInfo.l()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setImeiSha2(a(GeneralStatInfo.m()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setMacMd5(a(GeneralStatInfo.n()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setUa(a(GeneralStatInfo.o()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setNetwork(a(InternetUtil.a(paramContext)));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setAndroid(a(GeneralStatInfo.p()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setOs(a(GeneralStatInfo.q()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setRegion(a(GeneralStatInfo.r()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setLang(a(GeneralStatInfo.s()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setCarrier(a(b.d(paramContext)));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setTimezone(a(GeneralStatInfo.t()));
      if (l > 0L) {
        ((NoticeConfigProtos.StatInfo.Builder)localObject).setFuid(l);
      }
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setClientVersion(a(AndroidUtils.a(paramContext)));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setLocalTime(a(String.valueOf(System.currentTimeMillis())));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setCid(a(GeneralStatInfo.g()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setDevAppId(GeneralStatInfo.i());
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setSdkType(GeneralStatInfo.h());
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setSdkJarVersion(a(GeneralStatInfo.f()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setSdkServiceVersion(a(GeneralStatInfo.e()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setExtra(a(GeneralStatInfo.d()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setSessionId(a(GeneralStatInfo.b()));
      ((NoticeConfigProtos.StatInfo.Builder)localObject).setUnionId(a(GeneralStatInfo.a()));
      localBuilder.setStatInfo(((NoticeConfigProtos.StatInfo.Builder)localObject).build());
      return localBuilder.build();
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localNameNotFoundException.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\notice\Helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */