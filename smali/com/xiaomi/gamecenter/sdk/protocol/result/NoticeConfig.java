package com.xiaomi.gamecenter.sdk.protocol.result;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.protobuf.ByteString;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.NoticeConfig;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.NoticeImageConfig;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.NoticeSchemaConfig;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.NoticeTextConfig;

public class NoticeConfig
  implements Parcelable
{
  public static final Parcelable.Creator<NoticeConfig> CREATOR = new a();
  private String a;
  private int b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private int i;
  private int j;
  private int k;
  private int l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  
  protected NoticeConfig(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readInt();
    this.j = paramParcel.readInt();
    this.k = paramParcel.readInt();
    this.l = paramParcel.readInt();
    this.m = paramParcel.readString();
    this.n = paramParcel.readString();
    this.o = paramParcel.readString();
    this.p = paramParcel.readString();
    this.q = paramParcel.readString();
  }
  
  public NoticeConfig(NoticeConfigProtos.NoticeConfig paramNoticeConfig)
  {
    if (paramNoticeConfig == null) {}
    do
    {
      return;
      this.a = paramNoticeConfig.getNoticeId();
      this.b = paramNoticeConfig.getNoticeConfigType();
      try
      {
        if (this.b == 0)
        {
          paramNoticeConfig = NoticeConfigProtos.NoticeTextConfig.parseFrom(paramNoticeConfig.getConfig().toByteArray());
          this.c = paramNoticeConfig.getTitle();
          this.d = paramNoticeConfig.getContent();
          return;
        }
      }
      catch (Exception paramNoticeConfig)
      {
        paramNoticeConfig.printStackTrace();
        return;
      }
      if (this.b == 1)
      {
        paramNoticeConfig = NoticeConfigProtos.NoticeImageConfig.parseFrom(paramNoticeConfig.getConfig().toByteArray());
        this.e = paramNoticeConfig.getImagePortraitUrl();
        this.f = paramNoticeConfig.getImageLandscapeUrl();
        this.g = paramNoticeConfig.getActionUrl();
        this.h = paramNoticeConfig.getBackupActionUrl();
        this.i = paramNoticeConfig.getPortraitWidth();
        this.j = paramNoticeConfig.getPortraitHeight();
        this.k = paramNoticeConfig.getLandscapeWidth();
        this.l = paramNoticeConfig.getLandscapeHeight();
        return;
      }
    } while (this.b != 2);
    paramNoticeConfig = NoticeConfigProtos.NoticeSchemaConfig.parseFrom(paramNoticeConfig.getConfig().toByteArray());
    this.m = paramNoticeConfig.getTitle();
    this.n = paramNoticeConfig.getContent();
    this.o = paramNoticeConfig.getButtonText();
    this.p = paramNoticeConfig.getActionUrl();
    this.q = paramNoticeConfig.getBackupActionUrl();
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final int b()
  {
    return this.b;
  }
  
  public final String c()
  {
    return this.c;
  }
  
  public final String d()
  {
    return this.d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final String e()
  {
    return this.e;
  }
  
  public final String f()
  {
    return this.f;
  }
  
  public final String g()
  {
    return this.g;
  }
  
  public final String h()
  {
    return this.h;
  }
  
  public final int i()
  {
    return this.i;
  }
  
  public final int j()
  {
    return this.j;
  }
  
  public final int k()
  {
    return this.k;
  }
  
  public final int l()
  {
    return this.l;
  }
  
  public final String m()
  {
    return this.m;
  }
  
  public final String n()
  {
    return this.n;
  }
  
  public final String o()
  {
    return this.o;
  }
  
  public final String p()
  {
    return this.p;
  }
  
  public final String q()
  {
    return this.q;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeInt(this.i);
    paramParcel.writeInt(this.j);
    paramParcel.writeInt(this.k);
    paramParcel.writeInt(this.l);
    paramParcel.writeString(this.m);
    paramParcel.writeString(this.n);
    paramParcel.writeString(this.o);
    paramParcel.writeString(this.p);
    paramParcel.writeString(this.q);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\result\NoticeConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */