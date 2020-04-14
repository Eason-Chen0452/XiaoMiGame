package com.xiaomi.gamecenter.sdk.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MilinkAccountProps
  implements Parcelable
{
  public static final Parcelable.Creator<MilinkAccountProps> CREATOR = new a();
  private int a;
  private long b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private String n;
  private String o = "";
  
  protected MilinkAccountProps(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readInt();
    this.i = paramParcel.readInt();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      this.j = bool1;
      if (paramParcel.readByte() == 0) {
        break label162;
      }
      bool1 = true;
      label107:
      this.k = bool1;
      if (paramParcel.readByte() == 0) {
        break label167;
      }
      bool1 = true;
      label121:
      this.l = bool1;
      if (paramParcel.readByte() == 0) {
        break label172;
      }
    }
    label162:
    label167:
    label172:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.m = bool1;
      this.n = paramParcel.readString();
      this.o = paramParcel.readString();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label107;
      bool1 = false;
      break label121;
    }
  }
  
  public final long a()
  {
    return this.b;
  }
  
  public final String b()
  {
    return this.c;
  }
  
  public final String c()
  {
    return this.g;
  }
  
  public final String d()
  {
    return this.o;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeInt(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeInt(this.h);
    paramParcel.writeInt(this.i);
    if (this.j)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!this.k) {
        break label154;
      }
      b1 = 1;
      label98:
      paramParcel.writeByte(b1);
      if (!this.l) {
        break label159;
      }
      b1 = 1;
      label112:
      paramParcel.writeByte(b1);
      if (!this.m) {
        break label164;
      }
    }
    label154:
    label159:
    label164:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeString(this.n);
      paramParcel.writeString(this.o);
      return;
      b1 = 0;
      break;
      b1 = 0;
      break label98;
      b1 = 0;
      break label112;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\account\MilinkAccountProps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */