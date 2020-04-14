package com.mi.milink.sdk.proto;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;

final class SystemPacketProto$PublicKeyInfo$1
  extends AbstractParser<SystemPacketProto.PublicKeyInfo>
{
  public final SystemPacketProto.PublicKeyInfo parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return new SystemPacketProto.PublicKeyInfo(paramCodedInputStream, paramExtensionRegistryLite, null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\SystemPacketProto$PublicKeyInfo$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */