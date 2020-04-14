package com.mi.milink.sdk.base.os.dns;

import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class Lookup
{
  private String dnsServerAddress = "";
  
  public Lookup(String paramString)
    throws UnknownHostException
  {
    this.dnsServerAddress = paramString;
  }
  
  public InetAddress[] run(String paramString, long paramLong)
    throws IOException, SocketTimeoutException, WireParseException, UnknownHostException, Exception
  {
    InetAddress[] arrayOfInetAddress = null;
    RequestPacket localRequestPacket = new RequestPacket(paramString);
    Object localObject1 = localRequestPacket.getQueryData();
    if (localObject1 == null) {
      localObject1 = arrayOfInetAddress;
    }
    for (;;)
    {
      return (InetAddress[])localObject1;
      try
      {
        Object localObject2 = new UdpClient();
        ((UdpClient)localObject2).setTimeout(paramLong);
        localObject2 = ((UdpClient)localObject2).sendrecv(this.dnsServerAddress, (byte[])localObject1);
        localObject1 = arrayOfInetAddress;
        if (localObject2 == null) {
          continue;
        }
        localObject2 = new ResponsePacket(new DNSInput((byte[])localObject2), paramString);
        localObject1 = arrayOfInetAddress;
        if (((ResponsePacket)localObject2).getReqId() != localRequestPacket.getReqId()) {
          continue;
        }
        arrayOfInetAddress = ((ResponsePacket)localObject2).getByAddress();
        localObject1 = arrayOfInetAddress;
        if (arrayOfInetAddress == null) {
          continue;
        }
        localObject1 = arrayOfInetAddress;
        if (arrayOfInetAddress.length <= 0) {
          continue;
        }
        HostCacheManager.getInstance().addCache(paramString, arrayOfInetAddress, ((ResponsePacket)localObject2).getExpireTime());
        return arrayOfInetAddress;
      }
      catch (WireParseException paramString)
      {
        throw paramString;
      }
      catch (SocketTimeoutException paramString)
      {
        throw paramString;
      }
      catch (IOException paramString)
      {
        throw paramString;
      }
    }
  }
  
  public void setDnsAddress(String paramString)
  {
    this.dnsServerAddress = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\Lookup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */