package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.connection.IConnection;
import com.mi.milink.sdk.connection.IConnectionCallback;
import com.mi.milink.sdk.connection.TcpConnection;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.proto.PushPacketProto.MilinkLogReq;
import com.mi.milink.sdk.proto.PushPacketProto.MilinkLogReq.Builder;
import com.mi.milink.sdk.session.common.InvalidPacketExecption;
import com.mi.milink.sdk.session.common.MsgProcessor;
import com.mi.milink.sdk.session.common.ReceiveBuffer;
import com.mi.milink.sdk.session.common.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.util.CommonUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class SessionForUploadLog
  implements IConnectionCallback, MsgProcessor
{
  private static final int CONNECTED_STATE = 2;
  private static final int CONNECTING_STATE = 1;
  private static final int MSG_CONNECT = 1;
  private static final int MSG_DISCONNECT = 4;
  private static final int MSG_HANDLE_REQUEST = 2;
  private static final int NO_CONNECT_STATE = 0;
  private static final String TAG = "SessionForUploadLog";
  private boolean mCanClose = true;
  private IConnection mConn = null;
  private int mCurState = 0;
  public int mFlagForSessionManager;
  private IAccount mIAccount;
  private PushPacketProto.MilinkLogReq mLogReq = null;
  private ReceiveBuffer.ReceiveBufferSink mRecBufSink = new SessionForUploadLog.1(this);
  protected ReceiveBuffer mRecBuffer;
  private ServerProfile mServerProfile = null;
  UploadLogListener mUploadLogListener;
  Request request;
  
  public SessionForUploadLog(PushPacketProto.MilinkLogReq paramMilinkLogReq, IAccount paramIAccount, UploadLogListener paramUploadLogListener)
  {
    this.mLogReq = paramMilinkLogReq;
    if (this.mLogReq == null) {
      this.mLogReq = PushPacketProto.MilinkLogReq.newBuilder().setIp("58.83.160.103:80").setTime(-1).build();
    }
    this.mIAccount = paramIAccount;
    this.mUploadLogListener = paramUploadLogListener;
    this.mRecBuffer = new ReceiveBuffer(this.mRecBufSink, 0, true);
  }
  
  private void onOpenSessionBuildConnectFail(int paramInt)
  {
    this.mCurState = 0;
  }
  
  private void onOpenSessionBuildConnectSuccess()
  {
    this.mCurState = 2;
    uploadLog();
  }
  
  private void onSessionError(int paramInt)
  {
    this.mCurState = 0;
  }
  
  private boolean postMessage(int paramInt1, Object paramObject, int paramInt2)
  {
    boolean bool1 = false;
    if (this.mConn == null) {
      MiLinkLog.e("SessionForUploadLog", "postMessage " + paramInt1 + " mConn == null!!!!");
    }
    for (;;)
    {
      return bool1;
      try
      {
        boolean bool2 = this.mConn.postMessage(paramInt1, paramObject, paramInt2, this);
        bool1 = bool2;
        if (!bool2)
        {
          MiLinkLog.e("SessionForUploadLog", "mMessage must be full ! uMsg = " + paramInt1);
          return bool2;
        }
      }
      catch (NullPointerException paramObject) {}
    }
    return false;
  }
  
  public boolean close()
  {
    if (!this.mCanClose)
    {
      MiLinkLog.i("SessionForUploadLog", "connecting! can not close");
      return false;
    }
    if (this.mConn != null)
    {
      MiLinkLog.w("SessionForUploadLog", "stop begin");
      this.mConn.stop();
      this.mConn = null;
      this.mServerProfile = null;
      this.mCurState = 0;
      MiLinkLog.w("SessionForUploadLog", "stop over");
    }
    return true;
  }
  
  public void disConnect()
  {
    disConnect(-1);
  }
  
  public void disConnect(int paramInt)
  {
    MiLinkLog.i("SessionForUploadLog", "disConnect, errorCallBackErrorCode=" + paramInt);
    postMessage(4, null, paramInt);
  }
  
  public ServerProfile getServerProfile()
  {
    return this.mServerProfile;
  }
  
  public boolean isConnected()
  {
    switch (this.mCurState)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public boolean onConnect(boolean paramBoolean, int paramInt)
  {
    this.mCanClose = true;
    if (paramBoolean)
    {
      onOpenSessionBuildConnectSuccess();
      return true;
    }
    onOpenSessionBuildConnectFail(paramInt);
    return true;
  }
  
  public boolean onDisconnect()
  {
    MiLinkLog.i("SessionForUploadLog", "OnDisconnect");
    this.mRecBuffer.reset();
    return true;
  }
  
  public boolean onError(int paramInt)
  {
    MiLinkLog.e("SessionForUploadLog", "onError socketStatus " + paramInt + ", mCurState=" + this.mCurState);
    switch (this.mCurState)
    {
    default: 
      MiLinkLog.e("SessionForUploadLog", "onError wrong state = " + this.mCurState);
      return true;
    }
    onOpenSessionBuildConnectFail(1);
    return true;
  }
  
  public void onMsgProc(int paramInt1, Object paramObject, int paramInt2)
  {
    MiLinkLog.v("SessionForUploadLog", "onMsgProc, uMsg=" + paramInt1 + ", wParam=" + paramInt2);
    switch (paramInt1)
    {
    case 3: 
    default: 
      MiLinkLog.e("SessionForUploadLog", "OnMsgProc unknow uMsgID = " + paramInt1);
    }
    do
    {
      do
      {
        String str;
        byte[] arrayOfByte;
        do
        {
          do
          {
            return;
            if (!CommonUtils.isLegalIp(this.mServerProfile.getServerIP()))
            {
              paramObject = DomainManager.getInstance().getDomainIP(this.mServerProfile.getServerIP());
              if (paramObject == null)
              {
                onOpenSessionBuildConnectFail(1);
                return;
              }
              this.mServerProfile.setServerIP((String)paramObject);
            }
            for (;;)
            {
              MiLinkLog.e("SessionForUploadLog", "connect to " + this.mServerProfile);
              if (this.mConn == null) {
                break;
              }
              this.mCanClose = false;
              this.mConn.connect((String)paramObject, this.mServerProfile.getServerPort(), this.mServerProfile.getProxyIP(), this.mServerProfile.getPorxyPort(), ConfigManager.getInstance().getConnetionTimeout(), 0);
              return;
              paramObject = this.mServerProfile.getServerIP();
            }
            paramObject = (Request)paramObject;
          } while (paramObject == null);
          if (!((Request)paramObject).isValidNow())
          {
            MiLinkLog.e("SessionForUploadLog", String.format("seq=%d,cmd=%s is invalid", new Object[] { Integer.valueOf(((Request)paramObject).getSeqNo()), ((Request)paramObject).getData().getCommand() }));
            ((Request)paramObject).onDataSendFailed(998, "package is already over the valid time");
            return;
          }
          ((Request)paramObject).setSentTime(System.currentTimeMillis());
          str = ((Request)paramObject).getData().getCommand();
          arrayOfByte = ((Request)paramObject).toBytes();
          if (arrayOfByte == null) {
            break;
          }
          MiLinkLog.v("SessionForUploadLog", "connection send data, seq=" + ((Request)paramObject).getSeqNo());
        } while (!this.mConn.sendData(arrayOfByte, ((Request)paramObject).getSeqNo(), ((Request)paramObject).getTimeOut()));
        TrafficMonitor.getInstance().traffic(str, arrayOfByte.length);
        return;
        ((Request)paramObject).onDataSendFailed(518, "data encryption failed");
        MiLinkLog.w("SessionForUploadLog", "connection send data, but data = null");
      } while (this.mUploadLogListener == null);
      this.mUploadLogListener.failed();
      return;
      if (this.mConn != null) {
        this.mConn.disconnect();
      }
      this.mCurState = 0;
    } while (paramInt2 <= 0);
    onSessionError(paramInt2);
  }
  
  public boolean onRecv(byte[] paramArrayOfByte)
  {
    MiLinkLog.w("SessionForUploadLog", "recv data:" + paramArrayOfByte.length);
    if (this.mRecBuffer != null) {}
    try
    {
      this.mRecBuffer.append(paramArrayOfByte);
      return true;
    }
    catch (InvalidPacketExecption paramArrayOfByte)
    {
      disConnect(517);
    }
    return false;
  }
  
  public boolean onSendBegin(int paramInt)
  {
    MiLinkLog.v("SessionForUploadLog", "send begin: seq=" + paramInt);
    return false;
  }
  
  public boolean onSendEnd(int paramInt)
  {
    MiLinkLog.v("SessionForUploadLog", "send end: seq=" + paramInt);
    return false;
  }
  
  public boolean onStart()
  {
    return false;
  }
  
  public boolean onTimeOut(int paramInt1, int paramInt2)
  {
    MiLinkLog.v("SessionForUploadLog", "send time out: seq=" + paramInt1);
    return false;
  }
  
  public boolean openSession()
  {
    if (this.mLogReq == null) {
      MiLinkLog.v("SessionForUploadLog", "mLogReq is null");
    }
    for (;;)
    {
      return false;
      Object localObject = this.mLogReq.getIp();
      MiLinkLog.v("SessionForUploadLog", "ipAndPortStr" + (String)localObject);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      ServerProfile localServerProfile;
      for (localObject = ((String)localObject).split(":"); (localObject != null) && (localObject.length == 2); localServerProfile = null) {
        try
        {
          localObject = new ServerProfile(localObject[0], Integer.parseInt(localObject[1]), 1, 4);
          if ((localObject == null) || (((ServerProfile)localObject).getProtocol() == 0))
          {
            MiLinkLog.v("SessionForUploadLog", "openSession fail, serverprofile=" + localObject);
            onOpenSessionBuildConnectFail(557);
            return false;
          }
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            localServerProfile = null;
          }
          this.mCurState = 1;
          boolean bool;
          if ((this.mServerProfile == null) || (this.mServerProfile.getProtocol() != localServerProfile.getProtocol()))
          {
            MiLinkLog.v("SessionForUploadLog", "openSession if");
            if (this.mConn != null) {
              this.mConn.stop();
            }
            if (localServerProfile.getProtocol() == 1) {
              this.mConn = new TcpConnection(0, this);
            }
            this.mServerProfile = localServerProfile;
            try
            {
              bool = this.mConn.start();
              if (bool) {
                break label345;
              }
              onOpenSessionBuildConnectFail(562);
              return false;
            }
            catch (Exception localException2)
            {
              for (;;)
              {
                MiLinkLog.e("SessionForUploadLog", "connection start failed", localException2);
                bool = false;
              }
            }
          }
          else
          {
            MiLinkLog.v("SessionForUploadLog", "openSession else");
            if ((this.mConn == null) && (localServerProfile.getProtocol() == 1)) {
              this.mConn = new TcpConnection(0, this);
            }
            if (!this.mConn.isRunning())
            {
              this.mServerProfile = localServerProfile;
              try
              {
                bool = this.mConn.start();
                if (!bool)
                {
                  onOpenSessionBuildConnectFail(562);
                  return false;
                }
              }
              catch (Exception localException3)
              {
                for (;;)
                {
                  MiLinkLog.e("SessionForUploadLog", "connection start failed", localException3);
                  bool = false;
                }
              }
            }
          }
          label345:
          this.mServerProfile = localServerProfile;
          postMessage(1, null, 0);
          return true;
        }
      }
    }
  }
  
  public void uploadLog()
  {
    PacketData localPacketData = new PacketData();
    localPacketData.setSeqNo(Global.getSequence());
    localPacketData.setHasClientInfo(false);
    localPacketData.setCommand("milink.uploadlog");
    File localFile = UploadLogUtils.createTemp(UploadLogUtils.getLogFile(this.mLogReq.getTime()));
    byte[] arrayOfByte = UploadLogUtils.getFileBytes(localFile);
    if (arrayOfByte == null)
    {
      close();
      if (this.mUploadLogListener != null) {
        this.mUploadLogListener.failed();
      }
      return;
    }
    localPacketData.setData(arrayOfByte);
    this.request = new Request(localPacketData, new SessionForUploadLog.2(this), (byte)5, this.mIAccount);
    postMessage(2, this.request, 0);
    if (this.mConn != null) {
      this.mConn.wakeUp();
    }
    localFile.delete();
    System.gc();
  }
  
  public static abstract interface UploadLogListener
  {
    public abstract void failed();
    
    public abstract void success();
  }
  
  static class UploadLogUtils
  {
    public static final int ALL = -1;
    public static final int BEFORE_YEST = 2;
    public static final int TODAY = 0;
    public static final int YESTODAY = 1;
    
    public static File createTemp(File[] paramArrayOfFile)
    {
      localZipOutputStream = null;
      try
      {
        localFile = new File(Global.getClientAppInfo().getLogPath(), "temp.zip");
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          File localFile;
          byte[] arrayOfByte;
          label61:
          int k;
          int m;
          paramArrayOfFile = localZipOutputStream;
          localException1.printStackTrace();
        }
      }
      try
      {
        localZipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(localFile)));
        arrayOfByte = new byte['Ѐ'];
        if (!NetworkDash.isWifi()) {
          break label338;
        }
        j = 83886080;
      }
      catch (Exception localException3)
      {
        paramArrayOfFile = localException1;
        Exception localException2 = localException3;
        break label313;
        i = 0;
        break label155;
        j = 10485760;
        break label61;
        i -= 1;
        i1 = n;
        break label120;
      }
      k = paramArrayOfFile.length - 1;
      m = 0;
      while ((k >= 0) && (m < j))
      {
        BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramArrayOfFile[k]), 1024);
        String str = paramArrayOfFile[k].getAbsolutePath();
        i = str.length() - 1;
        i1 = 0;
        label120:
        if (i < 0) {
          break label333;
        }
        n = i1;
        if (str.charAt(i) != '/') {
          break label344;
        }
        i1 += 1;
        n = i1;
        if (i1 != 3) {
          break label344;
        }
        label155:
        str = str.substring(i + 1, str.length());
        System.out.println(str);
        localZipOutputStream.putNextEntry(new ZipEntry(str));
        i = 0;
        for (;;)
        {
          n = localBufferedInputStream.read(arrayOfByte, 0, 1024);
          if (n == -1) {
            break;
          }
          localZipOutputStream.write(arrayOfByte, 0, n);
          m += n;
          i += n;
        }
        System.out.println("sigleFileSize:" + i);
        localBufferedInputStream.close();
        k -= 1;
      }
      System.out.println("fileTotalSize:" + m);
      localZipOutputStream.close();
      paramArrayOfFile = localFile;
      System.gc();
      return paramArrayOfFile;
    }
    
    static byte[] getFileBytes(File paramFile)
    {
      int k = 0;
      i = 0;
      localObject = null;
      j = k;
      try
      {
        paramFile = new BufferedInputStream(new FileInputStream(paramFile));
        j = k;
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(512000);
        j = k;
        byte[] arrayOfByte = new byte['⠀'];
        for (;;)
        {
          j = i;
          k = paramFile.read(arrayOfByte);
          if (k == -1) {
            break;
          }
          j = i;
          localByteArrayOutputStream.write(arrayOfByte, 0, k);
          i += k;
        }
        j = i;
        paramFile.close();
        j = i;
        paramFile = localByteArrayOutputStream.toByteArray();
      }
      catch (Exception paramFile)
      {
        for (;;)
        {
          paramFile.printStackTrace();
          i = j;
          paramFile = (File)localObject;
        }
      }
      MiLinkLog.d("SessionForUploadLog", "compress file len=" + i);
      return paramFile;
    }
    
    private static void getFileRecursion(File paramFile, List<File> paramList)
    {
      if (!paramFile.isDirectory()) {
        if (paramFile.getName().endsWith(".log")) {
          paramList.add(paramFile);
        }
      }
      for (;;)
      {
        return;
        paramFile = paramFile.listFiles();
        int j = paramFile.length;
        int i = 0;
        while (i < j)
        {
          getFileRecursion(paramFile[i], paramList);
          i += 1;
        }
      }
    }
    
    public static File[] getLogFile(int paramInt)
    {
      Object localObject1 = Global.getClientAppInfo().getLogPath();
      MiLinkLog.v("SessionForUploadLog", "dir:" + (String)localObject1);
      Object localObject2 = new File((String)localObject1);
      if ((((File)localObject2).exists()) && (((File)localObject2).isDirectory()))
      {
        long l2 = System.currentTimeMillis();
        long l1 = l2;
        switch (paramInt)
        {
        default: 
          localObject1 = new LinkedList();
          getFileRecursion((File)localObject2, (List)localObject1);
          localObject2 = new File[((List)localObject1).size()];
          localObject1 = ((List)localObject1).iterator();
          paramInt = 0;
        }
        while (((Iterator)localObject1).hasNext())
        {
          localObject2[paramInt] = ((File)((Iterator)localObject1).next());
          paramInt += 1;
          continue;
          for (l1 = l2 - 86400000L;; l1 = l2 - 172800000L)
          {
            localObject1 = new File((File)localObject2, CommonUtils.createDataFormat("yyyy-MM-dd").format(new Date(l1)));
            if ((!((File)localObject1).exists()) || (!((File)localObject1).isDirectory())) {
              break;
            }
            return ((File)localObject1).listFiles(new SessionForUploadLog.UploadLogUtils.1());
          }
        }
        return (File[])localObject2;
      }
      return null;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionForUploadLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */