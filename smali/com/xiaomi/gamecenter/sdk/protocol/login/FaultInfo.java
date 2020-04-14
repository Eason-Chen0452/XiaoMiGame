package com.xiaomi.gamecenter.sdk.protocol.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public class FaultInfo
  implements Parcelable
{
  public static final Parcelable.Creator<FaultInfo> CREATOR = new a();
  private int a;
  private String b;
  private String c;
  private String d;
  
  protected FaultInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
  }
  
  public FaultInfo(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    this.a = paramJSONObject.optInt("retCode", -1);
    this.b = paramJSONObject.optString("title");
    this.c = paramJSONObject.optString("content");
    this.d = paramJSONObject.optString("url");
  }
  
  public static FaultInfo a(JSONObject paramJSONObject)
  {
    return new FaultInfo(paramJSONObject);
  }
  
  public final int a()
  {
    return this.a;
  }
  
  public final String b()
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
  
  public String toString()
  {
    return "FaultInfo{retCode=" + this.a + ", title='" + this.b + '\'' + ", content='" + this.c + '\'' + ", url='" + this.d + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\login\FaultInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */