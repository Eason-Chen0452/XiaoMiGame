package com.mi.milink.sdk.base.os.dns;

import com.mi.milink.sdk.util.SecureRandomUtils;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.security.SecureRandom;

final class UdpClient
{
  private static final int EPHEMERAL_RANGE = 64511;
  private static final int EPHEMERAL_START = 1024;
  private static final int EPHEMERAL_STOP = 65535;
  private static final int MAX_SIZE = 512;
  private static SecureRandom prng = ;
  private long timeout_value = 5000L;
  
  private static void blockUntil(SelectionKey paramSelectionKey, long paramLong)
    throws IOException, SocketTimeoutException
  {
    paramLong -= System.currentTimeMillis();
    int i = 0;
    if (paramLong > 0L) {
      i = paramSelectionKey.selector().select(paramLong);
    }
    while (i == 0)
    {
      throw new SocketTimeoutException();
      if (paramLong == 0L) {
        i = paramSelectionKey.selector().selectNow();
      }
    }
  }
  
  public final byte[] sendrecv(String paramString, byte[] paramArrayOfByte)
    throws IOException, SocketTimeoutException
  {
    localDatagramChannel = null;
    try
    {
      localObject = DatagramChannel.open();
      ((SelectableChannel)localObject).configureBlocking(false);
      localObject = ((SelectableChannel)localObject).register(Selector.open(), 1);
      try
      {
        localDatagramChannel = (DatagramChannel)((SelectionKey)localObject).channel();
        InetSocketAddress localInetSocketAddress = new InetSocketAddress(prng.nextInt(64511) + 1024);
        localDatagramChannel.socket().bind(localInetSocketAddress);
        localDatagramChannel.connect(new InetSocketAddress(InetAddress.getByName(paramString), 53));
        localDatagramChannel.write(ByteBuffer.wrap(paramArrayOfByte));
        paramString = new byte['Ȁ'];
        l1 = System.currentTimeMillis();
        l2 = this.timeout_value;
      }
      finally
      {
        try
        {
          long l2;
          while (!((SelectionKey)localObject).isReadable()) {
            blockUntil((SelectionKey)localObject, l1 + l2);
          }
          if (paramArrayOfByte == null) {
            break label174;
          }
        }
        finally
        {
          if (((SelectionKey)localObject).isValid()) {
            ((SelectionKey)localObject).interestOps(0);
          }
        }
      }
    }
    finally
    {
      for (;;)
      {
        Object localObject;
        long l1;
        int i;
        paramArrayOfByte = localDatagramChannel;
      }
    }
    paramArrayOfByte.selector().close();
    paramArrayOfByte.channel().close();
    label174:
    throw paramString;
    if (((SelectionKey)localObject).isValid()) {
      ((SelectionKey)localObject).interestOps(0);
    }
    l1 = localDatagramChannel.read(ByteBuffer.wrap(paramString));
    if (l1 > 0L)
    {
      i = (int)l1;
      paramArrayOfByte = new byte[i];
      System.arraycopy(paramString, 0, paramArrayOfByte, 0, i);
      if (localObject != null)
      {
        ((SelectionKey)localObject).selector().close();
        ((SelectionKey)localObject).channel().close();
      }
      return paramArrayOfByte;
    }
    if (localObject != null)
    {
      ((SelectionKey)localObject).selector().close();
      ((SelectionKey)localObject).channel().close();
    }
    return null;
  }
  
  public final void setTimeout(long paramLong)
  {
    if (paramLong > 0L) {
      this.timeout_value = paramLong;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\UdpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */