package com.xiaomi.hy.dj.a;

import android.os.Handler;
import android.text.TextUtils;
import com.google.protobuf.Message;
import com.mi.milink.sdk.aidl.PacketData;
import com.xiaomi.hy.dj.pb.AnonymousLogin.AnonymousLoginReq;
import com.xiaomi.hy.dj.pb.AnonymousLogin.AnonymousLoginReq.Builder;
import com.xiaomi.hy.dj.pb.AnonymousLogin.AnonymousLoginRsp;
import com.xiaomi.hy.dj.pbformat.JsonFormat;

final class l
  implements Runnable
{
  l(String paramString1, String paramString2, String paramString3, String paramString4, a parama) {}
  
  public final void run()
  {
    Object localObject = AnonymousLogin.AnonymousLoginReq.newBuilder();
    ((AnonymousLogin.AnonymousLoginReq.Builder)localObject).setChannel(this.a);
    ((AnonymousLogin.AnonymousLoginReq.Builder)localObject).setDevAppId(Long.parseLong(this.b));
    ((AnonymousLogin.AnonymousLoginReq.Builder)localObject).setDeviceNo(this.c);
    if ((com.xiaomi.hy.dj.c.b.a().b()) && (!TextUtils.isEmpty(com.xiaomi.hy.dj.c.a.a(this.d)))) {
      for (;;)
      {
        try
        {
          localObject = com.xiaomi.hy.dj.c.b.a().a(com.xiaomi.hy.dj.c.a.a(this.d), ((AnonymousLogin.AnonymousLoginReq.Builder)localObject).build());
          if (localObject == null) {
            continue;
          }
          localObject = AnonymousLogin.AnonymousLoginRsp.parseFrom(((PacketData)localObject).getData());
          localObject = new JsonFormat().printToString((Message)localObject);
          b.b().post(new m(this, (String)localObject));
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          b.b().post(new o(this));
          continue;
        }
        b.b().post(new p(this));
        return;
        b.b().post(new n(this));
      }
    }
    b.b().post(new q(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */