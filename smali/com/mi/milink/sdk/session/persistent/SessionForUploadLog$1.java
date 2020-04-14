package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.StreamUtil;
import java.io.IOException;

class SessionForUploadLog$1
  implements ReceiveBuffer.ReceiveBufferSink
{
  SessionForUploadLog$1(SessionForUploadLog paramSessionForUploadLog) {}
  
  public boolean onAddTimeout(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean onRecvDownStream(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return false;
      try
      {
        paramArrayOfByte = StreamUtil.getDownPacket(String.format("[No:%d]", new Object[] { Integer.valueOf(paramInt) }), paramArrayOfByte, new SessionForUploadLog.1.1(this));
        if (paramArrayOfByte == null) {
          continue;
        }
        System.currentTimeMillis();
        if ((this.this$0.request != null) && (paramArrayOfByte != null))
        {
          this.this$0.request.onDataSendSuccess(0, paramArrayOfByte);
          this.this$0.request.addRetryCount();
        }
        return true;
      }
      catch (IOException paramArrayOfByte)
      {
        for (;;)
        {
          MiLinkLog.e("SessionForUploadLog", "decode downstream failed", paramArrayOfByte);
          paramArrayOfByte = null;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionForUploadLog$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */