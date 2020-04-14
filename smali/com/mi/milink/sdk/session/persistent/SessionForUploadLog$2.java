package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.session.common.ResponseListener;

class SessionForUploadLog$2
  implements ResponseListener
{
  SessionForUploadLog$2(SessionForUploadLog paramSessionForUploadLog) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if (this.this$0.mUploadLogListener != null) {
      this.this$0.mUploadLogListener.failed();
    }
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (this.this$0.mUploadLogListener != null) {
      this.this$0.mUploadLogListener.success();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionForUploadLog$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */