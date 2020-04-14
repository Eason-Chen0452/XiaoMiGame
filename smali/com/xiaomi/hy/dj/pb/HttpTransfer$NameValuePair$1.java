package com.xiaomi.hy.dj.pb;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;

final class HttpTransfer$NameValuePair$1
  extends AbstractParser<HttpTransfer.NameValuePair>
{
  public final HttpTransfer.NameValuePair parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return new HttpTransfer.NameValuePair(paramCodedInputStream, paramExtensionRegistryLite, null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pb\HttpTransfer$NameValuePair$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */