package com.mi.milink.sdk.session.common;

import android.text.TextUtils;
import android.util.Base64;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.ChannelAccount;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.MiAccount;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Const;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.proto.DownstreamPacketProto.DownstreamPacket;
import com.mi.milink.sdk.proto.DownstreamPacketProto.ExtraInfo;
import com.mi.milink.sdk.proto.PushPacketProto.SimplePushData;
import com.mi.milink.sdk.proto.UpstreamPacketProto.BusiControl;
import com.mi.milink.sdk.proto.UpstreamPacketProto.BusiControl.Builder;
import com.mi.milink.sdk.proto.UpstreamPacketProto.TokenInfo;
import com.mi.milink.sdk.proto.UpstreamPacketProto.TokenInfo.Builder;
import com.mi.milink.sdk.proto.UpstreamPacketProto.UpstreamPacket;
import com.mi.milink.sdk.proto.UpstreamPacketProto.UpstreamPacket.Builder;
import com.mi.milink.sdk.session.persistent.SessionManager;
import com.mi.milink.sdk.util.compress.CompressionFactory;
import com.mi.milink.sdk.util.compress.ICompression;
import com.mi.milink.sdk.util.crypt.Cryptor;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

public class StreamUtil
{
  private static final String B2K_FOR_HS = "4N9FcL47REBDdCHL";
  private static final String B2_FOR_HS = "bsJ0RccDL4JvKAR660A6wzHXxRKRXWPBMowLR4m7mWg=";
  private static final int BUSI_CONTROL_NO_COMPRESS = 0;
  private static final int BUSI_CONTROL_ZLIB_COMPRESS = 1;
  private static final String CLASSTAG = "StreamUtil";
  private static final int DEFAULT_COMPRESS_LEN = 512;
  private static final int GLOBAL_PUSH_FLAG_MASK = 4096;
  public static final byte[] MNS = { 109, 108, 112, 0 };
  public static final byte MNS_ENCODE_ANONYMOUS_B2_TOKEN = 8;
  public static final byte MNS_ENCODE_ANONYMOUS_FAST_LOGIN = 7;
  public static final byte MNS_ENCODE_B2_TOKEN = 2;
  public static final byte MNS_ENCODE_B2_TOKEN_FOR_HS = 5;
  public static final byte MNS_ENCODE_CHANNEL_B2_TOKEN = 10;
  public static final byte MNS_ENCODE_CHANNEL_FAST_LOGIN = 9;
  public static final byte MNS_ENCODE_FAST_LOGIN = 3;
  public static final byte MNS_ENCODE_NONE = 0;
  private static final int NEED_PUSH_ACK_MASK = 1;
  private static final int NO_NEED_RESPONSE_MASK = 16;
  private static final int PING_MASK = 256;
  private static final String QUA_HEAD = "v1-";
  
  private static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte paramByte, IAccount paramIAccount)
  {
    switch (paramByte)
    {
    case 0: 
    case 1: 
    case 4: 
    case 6: 
    default: 
    case 3: 
    case 7: 
    case 9: 
      do
      {
        do
        {
          for (;;)
          {
            return paramArrayOfByte1;
            String str1;
            String str2;
            try
            {
              if ((paramIAccount instanceof MiAccount))
              {
                paramIAccount = paramIAccount.getSSecurity();
                paramArrayOfByte2 = paramIAccount.getBytes("utf-8");
                if ((ClientAppInfo.isMiliaoApp()) || (ClientAppInfo.isForumApp()) || (ClientAppInfo.isGameCenterApp()) || (ClientAppInfo.isXiaoMiPushApp()) || (ClientAppInfo.isSupportApp())) {
                  paramArrayOfByte2 = Base64.decode(paramIAccount, 0);
                }
                MiLinkLog.v("StreamUtil", "MNS_ENCODE_FAST_LOGIN ssecurity key " + paramIAccount);
                return Cryptor.decrypt(paramArrayOfByte1, paramArrayOfByte2);
              }
            }
            catch (Exception paramArrayOfByte2) {}
          }
        } while (!(paramIAccount instanceof AnonymousAccount));
        return Cryptor.decrypt(paramArrayOfByte1, paramIAccount.getPrivacyKey().getBytes("utf-8"));
      } while (!(paramIAccount instanceof ChannelAccount));
      return Cryptor.decrypt(paramArrayOfByte1, paramIAccount.getPrivacyKey().getBytes("utf-8"));
    case 2: 
    case 8: 
    case 10: 
      str1 = new String(paramArrayOfByte2, "UTF-8");
      paramArrayOfByte2 = new byte[0];
      str2 = paramIAccount.getOldB2Token();
      if (str1.equals(paramIAccount.getB2Token())) {
        paramArrayOfByte2 = paramIAccount.getB2Security().getBytes("UTF-8");
      }
      for (;;)
      {
        return Cryptor.decrypt(paramArrayOfByte1, paramArrayOfByte2);
        if (str1.equals(str2)) {
          paramArrayOfByte2 = paramIAccount.getOldB2Security().getBytes("UTF-8");
        }
      }
    }
    paramArrayOfByte2 = Cryptor.decrypt(paramArrayOfByte1, "4N9FcL47REBDdCHL".getBytes("UTF-8"));
    return paramArrayOfByte2;
    return paramArrayOfByte1;
  }
  
  private static byte[] encrypt(byte[] paramArrayOfByte, byte paramByte, IAccount paramIAccount)
  {
    switch (paramByte)
    {
    case 0: 
    case 1: 
    case 4: 
    case 6: 
    default: 
    case 3: 
    case 7: 
    case 9: 
      do
      {
        for (;;)
        {
          return paramArrayOfByte;
          try
          {
            if ((paramIAccount instanceof MiAccount))
            {
              String str = paramIAccount.getSSecurity();
              paramIAccount = str.getBytes("utf-8");
              if ((ClientAppInfo.isMiliaoApp()) || (ClientAppInfo.isForumApp()) || (ClientAppInfo.isGameCenterApp()) || (ClientAppInfo.isXiaoMiPushApp()) || (ClientAppInfo.isSupportApp())) {
                paramIAccount = Base64.decode(str, 0);
              }
              return Cryptor.encrypt(paramArrayOfByte, paramIAccount);
            }
          }
          catch (Exception paramIAccount) {}
        }
        if ((paramIAccount instanceof AnonymousAccount)) {
          return Cryptor.encryptRSA(paramArrayOfByte, paramIAccount.getSSecurity());
        }
      } while (!(paramIAccount instanceof ChannelAccount));
      paramIAccount = paramIAccount.getSSecurity();
      MiLinkLog.v("StreamUtil", "ssecurity = " + paramIAccount);
      return Cryptor.encryptRSA(paramArrayOfByte, paramIAccount);
    case 2: 
    case 8: 
    case 10: 
      paramIAccount = paramIAccount.getB2Security();
      MiLinkLog.v("StreamUtil", "b2Security = " + paramIAccount);
      return Cryptor.encrypt(paramArrayOfByte, paramIAccount.getBytes("utf-8"));
    }
    paramIAccount = Cryptor.encrypt(paramArrayOfByte, "4N9FcL47REBDdCHL".getBytes("utf-8"));
    return paramIAccount;
    return paramArrayOfByte;
  }
  
  public static PacketData getDownPacket(String paramString, byte[] paramArrayOfByte, GetAccountAdapter paramGetAccountAdapter)
    throws IOException
  {
    String str = paramString + "StreamUtil";
    if (paramArrayOfByte == null) {
      return null;
    }
    MiLinkLog.v(str, "recv data: len=" + paramArrayOfByte.length);
    Object localObject1 = new ByteArrayInputStream(paramArrayOfByte);
    if (!Convert.compare(Convert.readByte((ByteArrayInputStream)localObject1, 4), MNS)) {
      return null;
    }
    int j = Convert.bytesToInt(Convert.readByte((ByteArrayInputStream)localObject1, 4));
    ((ByteArrayInputStream)localObject1).read();
    byte b = (byte)((ByteArrayInputStream)localObject1).read();
    int k = Convert.bytesToInt(Convert.readByte((ByteArrayInputStream)localObject1, 4));
    Convert.readByte((ByteArrayInputStream)localObject1, 4);
    paramString = new byte[8];
    Convert.readBytes((ByteArrayInputStream)localObject1, paramString, 0, 8);
    Convert.bytesToLong(paramString);
    paramString = new byte[2];
    Convert.readBytes((ByteArrayInputStream)localObject1, paramString, 0, 2);
    int i = Convert.bytesToUshort(paramString);
    paramString = new byte[i];
    Convert.readBytes((ByteArrayInputStream)localObject1, paramString, 0, i);
    Convert.readByte((ByteArrayInputStream)localObject1, 4);
    localObject1 = Convert.readByte((ByteArrayInputStream)localObject1, 4);
    int m = i + 28 + 4 + 4;
    i = Convert.bytesToInt((byte[])localObject1);
    MiLinkLog.v(str, "down stream packet: seq=" + i + ", encodeType=" + b + ", flag=" + k);
    localObject1 = paramGetAccountAdapter.getAccount(i);
    if ((k & 0x100) == 256)
    {
      paramString = new PacketData();
      paramString.setSeqNo(i);
      paramString.setCommand("milink.ping");
      return paramString;
    }
    paramGetAccountAdapter = new byte[j - m];
    System.arraycopy(paramArrayOfByte, m, paramGetAccountAdapter, 0, j - m);
    try
    {
      paramString = decrypt(paramGetAccountAdapter, paramString, b, (IAccount)localObject1);
      if (paramString != null)
      {
        paramArrayOfByte = DownstreamPacketProto.DownstreamPacket.parseFrom(paramString);
      }
      else
      {
        MiLinkLog.w(str, "decrypt error, down == null !!!");
        MiLinkLog.w(str, "decrypt error stream:" + Convert.bytesToHexStr(paramGetAccountAdapter, 2048000));
        paramArrayOfByte = null;
      }
    }
    catch (InvalidProtocolBufferException paramString)
    {
      MiLinkLog.e(str, "parser downstream error", paramString);
      MiLinkLog.e(str, "error stream:" + Convert.bytesToHexStr(paramGetAccountAdapter, 2048000));
      paramArrayOfByte = null;
    }
    label676:
    label708:
    label774:
    label832:
    label858:
    do
    {
      paramGetAccountAdapter = paramArrayOfByte.getServiceCmd();
      MiLinkLog.v(str, "mnscode:" + paramArrayOfByte.getMnsCode() + ", busicode:" + paramArrayOfByte.getBusiCode() + ", cmd=" + paramGetAccountAdapter);
      PacketData localPacketData = new PacketData();
      paramString = DownstreamPacketProto.ExtraInfo.parseFrom(paramArrayOfByte.getExtra());
      Object localObject2;
      if ((paramString != null) && (paramString.hasHasClientInfo()))
      {
        MiLinkLog.v(str, "cmd=" + paramGetAccountAdapter + ", hasClientInfo =" + paramString.getHasClientInfo());
        localPacketData.setHasClientInfo(paramString.getHasClientInfo());
        localObject1 = paramArrayOfByte.getBusiBuff();
        if (!paramArrayOfByte.hasBusiControl()) {
          break label708;
        }
        localObject2 = paramArrayOfByte.getBusiControl();
        m = ((UpstreamPacketProto.BusiControl)localObject2).getCompFlag();
        MiLinkLog.v(str, "hasBusiContro, compFlag= " + m);
        paramString = (String)localObject1;
        if (m == 1)
        {
          paramString = CompressionFactory.createCompression(1).decompress(((ByteString)localObject1).toByteArray());
          MiLinkLog.v(str, "len of decompress is " + paramString.length);
          if (paramString.length != ((UpstreamPacketProto.BusiControl)localObject2).getLenBeforeComp()) {
            break label676;
          }
          paramString = ByteString.copyFrom(paramString);
        }
      }
      for (;;)
      {
        if ("milink.push".equals(paramGetAccountAdapter))
        {
          if (paramString == null)
          {
            return null;
            localPacketData.setHasClientInfo(false);
            break;
            MiLinkLog.v(str, "len of decompress is not equal origin len, origin len=" + ((UpstreamPacketProto.BusiControl)localObject2).getLenBeforeComp());
            paramString = (String)localObject1;
            continue;
            MiLinkLog.v(str, "hasBusiContro = false");
            paramString = (String)localObject1;
            continue;
          }
          try
          {
            localPacketData.setIsPushPacket(true);
            localObject2 = PushPacketProto.SimplePushData.parseFrom(paramString);
            localObject1 = ((PushPacketProto.SimplePushData)localObject2).getPushdata();
            paramString = (String)localObject1;
          }
          catch (InvalidProtocolBufferException localInvalidProtocolBufferException1)
          {
            for (;;)
            {
              MiLinkLog.e(str, "parser pushdata error", localInvalidProtocolBufferException1);
              continue;
              paramString = paramString.toByteArray();
            }
          }
          try
          {
            localObject1 = ((PushPacketProto.SimplePushData)localObject2).getCmd();
            if ((k & 0x1) != 1) {
              break label858;
            }
            paramGetAccountAdapter = (GetAccountAdapter)localObject1;
            k = paramArrayOfByte.getSeq();
            i = k * -1;
          }
          catch (InvalidProtocolBufferException localInvalidProtocolBufferException2)
          {
            break label832;
            break label774;
          }
          paramGetAccountAdapter = (GetAccountAdapter)localObject1;
        }
      }
      for (;;)
      {
        if (paramString == null)
        {
          paramString = null;
          localPacketData.setData(paramString);
          localPacketData.setSeqNo(i);
          localPacketData.setCommand(paramGetAccountAdapter);
          localPacketData.setMnsCode(paramArrayOfByte.getMnsCode());
          localPacketData.setBusiCode(paramArrayOfByte.getBusiCode());
          localPacketData.setResponseSize(j);
          return localPacketData;
        }
      }
    } while (paramArrayOfByte != null);
    return null;
  }
  
  public static String getQua(IAccount paramIAccount)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("v1-");
    localStringBuilder.append(Global.getClientAppInfo(paramIAccount.getAppId()).getPlatformName());
    localStringBuilder.append("-");
    localStringBuilder.append(Global.getClientAppInfo(paramIAccount.getAppId()).getAppName());
    localStringBuilder.append("-");
    localStringBuilder.append(Global.getClientAppInfo(paramIAccount.getAppId()).getVersionName());
    localStringBuilder.append("-");
    localStringBuilder.append(Global.getClientAppInfo(paramIAccount.getAppId()).getReleaseChannel());
    localStringBuilder.append("-");
    localStringBuilder.append(Global.getClientAppInfo(paramIAccount.getAppId()).getLanguageCode());
    return localStringBuilder.toString().toLowerCase();
  }
  
  public static String getRandomString(int paramInt)
  {
    Random localRandom = new Random();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramInt)
    {
      localStringBuffer.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(localRandom.nextInt("abcdefghijklmnopqrstuvwxyz0123456789".length())));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  private static UpstreamPacketProto.UpstreamPacket getUpStream(String paramString, PacketData paramPacketData, int paramInt, IAccount paramIAccount)
  {
    String str = paramString + "StreamUtil";
    UpstreamPacketProto.UpstreamPacket.Builder localBuilder = UpstreamPacketProto.UpstreamPacket.newBuilder();
    localBuilder.setSeq(paramPacketData.getSeqNo());
    localBuilder.setAppId(paramIAccount.getAppId());
    Object localObject;
    if (paramPacketData.needClientInfo())
    {
      paramString = getQua(paramIAccount);
      MiLinkLog.v(str, "send packet, cmd=" + paramPacketData.getCommand() + " seq=" + paramPacketData.getSeqNo() + " qua=" + paramString + " encodeType=" + paramInt);
      if (paramInt != 0) {
        localBuilder.setDeviceInfo(ByteString.copyFromUtf8(DeviceDash.getInstance().getDeviceSimplifiedInfo()));
      }
      localBuilder.setUa(paramString);
      localBuilder.setServiceCmd(paramPacketData.getCommand());
      localObject = paramPacketData.getData();
      paramString = (String)localObject;
      if (!Const.isMnsCmd(paramPacketData.getCommand()))
      {
        paramString = (String)localObject;
        if (localObject != null)
        {
          UpstreamPacketProto.BusiControl.Builder localBuilder1 = UpstreamPacketProto.BusiControl.newBuilder();
          int i = localObject.length;
          MiLinkLog.v(str, "origin busibuff.size=" + i);
          paramString = (String)localObject;
          if (i > 512)
          {
            paramString = CompressionFactory.createCompression(1).compress((byte[])localObject);
            MiLinkLog.v(str, "after zlib compress, busibuff.size=" + paramString.length);
            localBuilder1.setCompFlag(1);
            localBuilder1.setLenBeforeComp(i);
          }
          localBuilder1.setIsSupportComp(true);
          localBuilder.setBusiControl(localBuilder1.build());
        }
      }
      localBuilder.setBusiBuff(ByteString.copyFrom(paramString));
      paramString = paramIAccount.getUserId();
      if (TextUtils.isEmpty(paramString)) {
        break label440;
      }
      localBuilder.setMiUid(paramString);
      localBuilder.setMiUin(Long.parseLong(paramString));
      if ((paramInt != 0) && (paramPacketData.needClientInfo()))
      {
        localObject = UpstreamPacketProto.TokenInfo.newBuilder();
        paramPacketData = paramIAccount.getServiceToken();
        paramString = new byte[0];
      }
    }
    try
    {
      paramPacketData = paramPacketData.getBytes("utf-8");
      paramString = paramPacketData;
    }
    catch (UnsupportedEncodingException paramPacketData)
    {
      for (;;) {}
    }
    ((UpstreamPacketProto.TokenInfo.Builder)localObject).setKey(ByteString.copyFrom(paramString));
    ((UpstreamPacketProto.TokenInfo.Builder)localObject).setType(3);
    localBuilder.setToken(((UpstreamPacketProto.TokenInfo.Builder)localObject).build());
    for (;;)
    {
      return localBuilder.build();
      MiLinkLog.v(str, "send packet don't need qua and deviceInfo, seq=" + paramPacketData.getSeqNo() + ", cmd=" + paramPacketData.getCommand());
      break;
      label440:
      localBuilder.setMiUin(0L);
      localBuilder.setMiUid("0");
    }
  }
  
  public static boolean isNoNeedResponseFlag(int paramInt)
  {
    return (paramInt & 0x10) == 16;
  }
  
  public static boolean isPingFlag(int paramInt)
  {
    return (paramInt & 0x100) == 256;
  }
  
  public static byte[] toUpBytes(String paramString, PacketData paramPacketData, boolean paramBoolean, byte paramByte, IAccount paramIAccount)
  {
    String str = paramString + "StreamUtil";
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    for (;;)
    {
      int j;
      try
      {
        localByteArrayOutputStream.write(MNS);
        localByteArrayOutputStream.write(new byte[] { 0, 0, 0, 0 });
        localByteArrayOutputStream.write(Global.getMiLinkProtocolVersion());
        localByteArrayOutputStream.write(paramByte);
        j = Convert.bytesToInt(new byte[] { 0, 0, 0, 0 });
        i = j;
        if (paramBoolean) {
          i = j | 0x100;
        }
        j = i;
        if (paramPacketData != null)
        {
          j = i;
          if (!paramPacketData.needResponse()) {
            j = i | 0x10;
          }
        }
        if (!SessionManager.getInstance().getGlobalPushFlag()) {
          break label544;
        }
        i = j | 0x1000;
        localByteArrayOutputStream.write(Convert.intToBytes(i));
        localByteArrayOutputStream.write(Convert.intToBytes(paramIAccount.getAppId()));
        long l = 0L;
        if (!TextUtils.isEmpty(paramIAccount.getUserId())) {
          l = Long.parseLong(paramIAccount.getUserId());
        }
        localByteArrayOutputStream.write(Convert.longToBytes(l));
        switch (paramByte)
        {
        case 3: 
          if (localObject == null) {
            break label538;
          }
          localObject = ((String)localObject).getBytes("utf-8");
          if (localObject != null)
          {
            localByteArrayOutputStream.write(Convert.shortToBytes((short)localObject.length));
            localByteArrayOutputStream.write((byte[])localObject);
            localByteArrayOutputStream.write(Convert.intToBytes(0));
            localByteArrayOutputStream.write(Convert.intToBytes(paramPacketData.getSeqNo()));
            if (paramPacketData != null)
            {
              if (paramBoolean) {
                break label523;
              }
              paramString = encrypt(getUpStream(paramString, paramPacketData, paramByte, paramIAccount).toByteArray(), paramByte, paramIAccount);
              if (paramString == null) {
                break label557;
              }
              localByteArrayOutputStream.write(paramString);
            }
            paramString = localByteArrayOutputStream.toByteArray();
            paramIAccount = Convert.intToBytes(paramString.length);
            paramString[4] = paramIAccount[0];
            paramString[5] = paramIAccount[1];
            paramString[6] = paramIAccount[2];
            paramString[7] = paramIAccount[3];
            MiLinkLog.v(str, "up stream packet: seq=" + paramPacketData.getSeqNo() + ", isPing=" + paramBoolean + ", flag=" + i + ", len=" + paramString.length);
            return paramString;
          }
        case 7: 
        case 9: 
          localObject = paramIAccount.getServiceToken();
          break;
        case 2: 
        case 8: 
        case 10: 
          if (!paramPacketData.needClientInfo()) {
            break label551;
          }
          localObject = paramIAccount.getB2Token();
          continue;
          localByteArrayOutputStream.write(Convert.shortToBytes((short)0));
          continue;
          localByteArrayOutputStream.write(getRandomString(4).getBytes());
        }
      }
      catch (IOException paramString)
      {
        MiLinkLog.e(str, "byte error", paramString);
        return null;
      }
      label523:
      continue;
      label538:
      Object localObject = null;
      continue;
      label544:
      int i = j;
      continue;
      label551:
      localObject = null;
      continue;
      label557:
      return null;
      localObject = "bsJ0RccDL4JvKAR660A6wzHXxRKRXWPBMowLR4m7mWg=";
    }
  }
  
  public static abstract interface GetAccountAdapter
  {
    public abstract IAccount getAccount(int paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\StreamUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */