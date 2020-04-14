package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelNewPubKeyRsp;
import com.mi.milink.sdk.session.common.Request;

public class UpdateChannelPubKeyValue
{
  private SystemPacketProto.MnsCmdChannelNewPubKeyRsp channelNewPubkey;
  private Request mRequeset;
  
  public SystemPacketProto.MnsCmdChannelNewPubKeyRsp getChannelNewPubkey()
  {
    return this.channelNewPubkey;
  }
  
  public Request getmRequeset()
  {
    return this.mRequeset;
  }
  
  public void setChannelNewPubkey(SystemPacketProto.MnsCmdChannelNewPubKeyRsp paramMnsCmdChannelNewPubKeyRsp)
  {
    this.channelNewPubkey = paramMnsCmdChannelNewPubKeyRsp;
  }
  
  public void setmRequeset(Request paramRequest)
  {
    this.mRequeset = paramRequest;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\UpdateChannelPubKeyValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */