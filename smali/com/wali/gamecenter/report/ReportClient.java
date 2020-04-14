package com.wali.gamecenter.report;

public abstract interface ReportClient
{
  public static final String BEGIN_DOWNLOAD = "begindownload";
  public static final String BEGIN_INSTALL = "begininstall";
  public static final String DOWNLOAD_FAIL = "downloadFail";
  public static final String DOWNLOAD_FINISH = "downloadfinish";
  public static final String DOWNLOAD_PAUSE = "downloadPause";
  public static final String INSTALL_SUCCESS = "installsuccess";
  public static final String OPEN_GAMECENTER = "op_newmsgcnt_";
  public static final String TRACK = "track";
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */