package com.xiaomi.hy.dj.pb;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;

final class HttpTransfer$RequestInfo$1
  extends AbstractParser<HttpTransfer.RequestInfo>
{
  public final HttpTransfer.RequestInfo parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return new HttpTransfer.RequestInfo(paramCodedInputStream, paramExtensionRegistryLite, null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pb\HttpTransfer$RequestInfo$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */