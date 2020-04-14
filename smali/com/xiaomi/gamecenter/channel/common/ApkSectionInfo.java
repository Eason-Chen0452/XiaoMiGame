package com.xiaomi.gamecenter.channel.common;

import java.nio.ByteBuffer;

public class ApkSectionInfo
{
  public Pair<ByteBuffer, Long> mCentralDir;
  public Pair<ByteBuffer, Long> mContentEntry;
  public Pair<ByteBuffer, Long> mEocd;
  public Pair<ByteBuffer, Long> mSchemeV2Block;
  
  public String toString()
  {
    return "mContentEntry : " + this.mContentEntry + " , mSchemeV2Block : " + this.mSchemeV2Block + " , mCentralDir : " + this.mCentralDir + " , mEocd : " + this.mEocd;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\ApkSectionInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */