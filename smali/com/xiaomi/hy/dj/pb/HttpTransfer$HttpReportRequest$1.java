package com.xiaomi.hy.dj.pb;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;

final class HttpTransfer$HttpReportRequest$1
  extends AbstractParser<HttpTransfer.HttpReportRequest>
{
  public final HttpTransfer.HttpReportRequest parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return new HttpTransfer.HttpReportRequest(paramCodedInputStream, paramExtensionRegistryLite, null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pb\HttpTransfer$HttpReportRequest$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */