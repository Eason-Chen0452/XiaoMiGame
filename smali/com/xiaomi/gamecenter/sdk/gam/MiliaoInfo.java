package com.xiaomi.gamecenter.sdk.gam;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MiliaoInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MiliaoInfo> CREATOR = new d();
  private String appid;
  private String appname;
  private String gameid;
  private String mlaltmsg;
  private String mlcontent;
  private String mlownerid;
  private String mlownername;
  private String mlsourcename;
  private String mlsourceurl;
  private String mltitle;
  private String rootMiliaoInfo;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAppid()
  {
    return this.appid;
  }
  
  public String getAppname()
  {
    return this.appname;
  }
  
  public String getGameid()
  {
    return this.gameid;
  }
  
  public String getMlaltmsg()
  {
    return this.mlaltmsg;
  }
  
  public String getMlcontent()
  {
    return this.mlcontent;
  }
  
  public String getMlownerid()
  {
    return this.mlownerid;
  }
  
  public String getMlownername()
  {
    return this.mlownername;
  }
  
  public String getMlsourcename()
  {
    return this.mlsourcename;
  }
  
  public String getMlsourceurl()
  {
    return this.mlsourceurl;
  }
  
  public String getMltitle()
  {
    return this.mltitle;
  }
  
  public String getRootMiliaoInfo()
  {
    return this.rootMiliaoInfo;
  }
  
  public void setAppid(String paramString)
  {
    this.appid = paramString;
  }
  
  public void setAppname(String paramString)
  {
    this.appname = paramString;
  }
  
  public void setGameid(String paramString)
  {
    this.gameid = paramString;
  }
  
  public void setMlaltmsg(String paramString)
  {
    this.mlaltmsg = paramString;
  }
  
  public void setMlcontent(String paramString)
  {
    this.mlcontent = paramString;
  }
  
  public void setMlownerid(String paramString)
  {
    this.mlownerid = paramString;
  }
  
  public void setMlownername(String paramString)
  {
    this.mlownername = paramString;
  }
  
  public void setMlsourcename(String paramString)
  {
    this.mlsourcename = paramString;
  }
  
  public void setMlsourceurl(String paramString)
  {
    this.mlsourceurl = paramString;
  }
  
  public void setMltitle(String paramString)
  {
    this.mltitle = paramString;
  }
  
  public void setRootMiliaoInfo(String paramString)
  {
    this.rootMiliaoInfo = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.appid);
    paramParcel.writeString(this.gameid);
    paramParcel.writeString(this.appname);
    paramParcel.writeString(this.mlownerid);
    paramParcel.writeString(this.mlownername);
    paramParcel.writeString(this.mltitle);
    paramParcel.writeString(this.mlcontent);
    paramParcel.writeString(this.mlsourcename);
    paramParcel.writeString(this.mlsourceurl);
    paramParcel.writeString(this.mlaltmsg);
    paramParcel.writeString(this.rootMiliaoInfo);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\MiliaoInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */