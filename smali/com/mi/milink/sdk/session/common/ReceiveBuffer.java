package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ChannelStatusChangeEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ChannelStatusChangeEvent.EventType;
import java.io.UnsupportedEncodingException;
import org.greenrobot.eventbus.EventBus;

public class ReceiveBuffer
{
  private static String CLASSTAG = "ReceiveBuffer";
  private static final int INTEGER_LENGTH = 4;
  private static final int MAX_HTTP_PACKAGE_HEADER_LENGTH = 2048;
  private static final int MIN_TCP_PACKAGE_HEADER_LENGTH = 8;
  public static final int SOCKET_RECV_BUFFER = 1024;
  private String TAG;
  private byte[] mBuffer = null;
  private int mChannelBusy = 0;
  private int mCreatorSessionNO;
  private boolean mIsAssistSession = false;
  private int mPosition = 0;
  private ReceiveBufferSink mSink;
  
  public ReceiveBuffer(ReceiveBufferSink paramReceiveBufferSink, int paramInt, boolean paramBoolean)
  {
    this.mSink = paramReceiveBufferSink;
    try
    {
      this.mBuffer = new byte['Ѐ'];
      this.mCreatorSessionNO = paramInt;
      this.TAG = String.format("[No:%d]%s", new Object[] { Integer.valueOf(paramInt), CLASSTAG });
      this.mIsAssistSession = paramBoolean;
      return;
    }
    catch (OutOfMemoryError paramReceiveBufferSink)
    {
      for (;;)
      {
        MiLinkLog.e(this.TAG, "ReceiveBuffer init failed", paramReceiveBufferSink);
      }
    }
  }
  
  private long getPacketLen()
    throws InvalidPacketExecption
  {
    MiLinkLog.i(this.TAG, "getPacketLen start, mPosition=" + this.mPosition);
    if (this.mPosition < 8) {
      if (this.mPosition != 0) {
        MiLinkLog.i(this.TAG, "getPacketLen [position = " + this.mPosition + "] < TCP_PACKAGE_HEADER_LENGTH(8)");
      }
    }
    int i;
    do
    {
      return -1L;
      if (!BufferUtil.isHttpHead(this.mBuffer)) {
        break label168;
      }
      MiLinkLog.i(this.TAG, "getPacketLen isHttpHead");
      i = BufferUtil.findHttpHeaderEndFromByte(this.mBuffer);
      if (i > 0) {
        break;
      }
    } while (this.mPosition <= 2048);
    MiLinkLog.i(this.TAG, "HTTP CONTENT : " + Convert.bytesToASCIIString(this.mBuffer, 2048));
    throw new InvalidPacketExecption("wrong packet，cannot find http header end", 4);
    removeToBegin(i - 1);
    label168:
    if (!BufferUtil.isMNSHead(this.mBuffer)) {
      MiLinkLog.i(this.TAG, "no mns head: length=" + this.mBuffer.length + "; " + Convert.bytesToHexStr(this.mBuffer, 2048));
    }
    try
    {
      MiLinkLog.w(this.TAG, "no mns head , try to get string : " + new String(this.mBuffer, "UTF-8"));
      throw new InvalidPacketExecption("wrong packet，no mns head", 1);
      return Convert.bytesToUint(this.mBuffer, 4);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
  }
  
  private boolean parseNormalPacket()
    throws InvalidPacketExecption
  {
    long l = getPacketLen();
    MiLinkLog.i(this.TAG, "parseNormalPacket start, packetLen = " + l + ", mPosition=" + this.mPosition);
    if (l == -1L) {}
    do
    {
      return false;
      if (l < 8L) {
        throw new InvalidPacketExecption("[wrong packetlen = " + l + "]", 2);
      }
      if (l > 2097152L) {
        throw new InvalidPacketExecption("[wrong packetlen = " + l + "]", 3);
      }
      if (l <= this.mPosition) {
        break;
      }
    } while (l <= this.mBuffer.length);
    MiLinkLog.v(this.TAG, "increased mBuffer to " + (l + 5120L));
    int i = (int)(l + 5120L);
    try
    {
      byte[] arrayOfByte1 = new byte[i];
      System.arraycopy(this.mBuffer, 0, arrayOfByte1, 0, this.mPosition);
      this.mBuffer = arrayOfByte1;
      return false;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MiLinkLog.e(this.TAG, "append new byte fail ", localOutOfMemoryError);
      return false;
    }
    MiLinkLog.i(this.TAG, "parseNormalPacket [packetLen = " + l + "]");
    byte[] arrayOfByte2 = new byte[(int)l];
    System.arraycopy(this.mBuffer, 0, arrayOfByte2, 0, (int)l);
    removeToBegin((int)l);
    if (this.mSink != null) {
      this.mSink.onRecvDownStream(this.mCreatorSessionNO, arrayOfByte2);
    }
    return true;
  }
  
  private void parsePacket()
    throws InvalidPacketExecption
  {
    MiLinkLog.v(this.TAG, "parsePacket start");
    while (parseNormalPacket()) {}
    int i = this.mBuffer.length;
    if ((this.mPosition == 0) && (i > 1024))
    {
      MiLinkLog.v(this.TAG, "reset buffer size: " + i);
      this.mBuffer = new byte['Ѐ'];
    }
  }
  
  private void removeToBegin(int paramInt)
  {
    int i = 0;
    if (this.mBuffer == null) {}
    for (;;)
    {
      return;
      int j = this.mPosition;
      this.mPosition = 0;
      while (i < j - paramInt)
      {
        byte[] arrayOfByte = this.mBuffer;
        int k = this.mPosition;
        this.mPosition = (k + 1);
        arrayOfByte[k] = this.mBuffer[(paramInt + i)];
        i += 1;
      }
    }
  }
  
  public void append(byte[] paramArrayOfByte)
    throws InvalidPacketExecption
  {
    if (this.mBuffer == null) {
      return;
    }
    int i = paramArrayOfByte.length;
    int j;
    if (!this.mIsAssistSession)
    {
      if (i < 5000) {
        break label194;
      }
      j = this.mChannelBusy + 1;
      this.mChannelBusy = j;
      if (j > 10)
      {
        EventBus.getDefault().post(new MiLinkEvent.ChannelStatusChangeEvent(MiLinkEvent.ChannelStatusChangeEvent.EventType.channelBusy, null));
        this.mChannelBusy = 0;
      }
    }
    MiLinkLog.v(this.TAG, "now mBuffer.len=" + this.mBuffer.length + ",pos=" + this.mPosition + ",recvLen=" + i);
    if (this.mBuffer.length - this.mPosition < i) {
      MiLinkLog.v(this.TAG, "buffer need to be increased");
    }
    for (;;)
    {
      try
      {
        byte[] arrayOfByte = new byte[this.mPosition + i];
        System.arraycopy(this.mBuffer, 0, arrayOfByte, 0, this.mPosition);
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte, this.mPosition, i);
        this.mBuffer = arrayOfByte;
        this.mPosition = (i + this.mPosition);
        parsePacket();
        return;
        label194:
        if (i >= 1000) {
          break;
        }
        j = this.mChannelBusy - 1;
        this.mChannelBusy = j;
        if (j >= -5) {
          break;
        }
        EventBus.getDefault().post(new MiLinkEvent.ChannelStatusChangeEvent(MiLinkEvent.ChannelStatusChangeEvent.EventType.channelIdle, null));
        this.mChannelBusy = 0;
      }
      catch (OutOfMemoryError paramArrayOfByte)
      {
        MiLinkLog.e(this.TAG, "append new byte fail ", paramArrayOfByte);
        continue;
      }
      System.arraycopy(paramArrayOfByte, 0, this.mBuffer, this.mPosition, i);
      this.mPosition = (i + this.mPosition);
    }
  }
  
  public void reset()
  {
    this.mPosition = 0;
  }
  
  public static abstract interface ReceiveBufferSink
  {
    public abstract boolean onAddTimeout(int paramInt1, int paramInt2);
    
    public abstract boolean onRecvDownStream(int paramInt, byte[] paramArrayOfByte);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\ReceiveBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */