package com.mi.milink.sdk.base.os.dns;

public class AnswerRecord
{
  public String domain;
  public byte[] ip;
  public int qclass;
  public long ttl;
  public int type;
  
  public AnswerRecord() {}
  
  public AnswerRecord(String paramString, byte[] paramArrayOfByte, int paramInt1, long paramLong, int paramInt2)
  {
    this.domain = paramString;
    this.ip = paramArrayOfByte;
    this.type = paramInt1;
    this.ttl = paramLong;
    this.qclass = paramInt2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\AnswerRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */