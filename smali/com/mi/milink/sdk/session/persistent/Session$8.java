package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.session.common.Request.AfterHandleCallBack;

class Session$8
  implements Request.AfterHandleCallBack
{
  Session$8(Session paramSession) {}
  
  public void onCallBack(String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, int paramInt3, int paramInt4, int paramInt5, String paramString3, String paramString4)
  {
    InternalDataMonitor.getInstance(Session.access$700(this.this$0)).trace(paramString1, paramInt1, "milink.firstheartbeat", paramInt2, paramLong1, paramLong2, paramInt3, paramInt4, paramInt5, paramString3, paramString4);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */