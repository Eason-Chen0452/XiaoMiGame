package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.Request;

public class RecvDataProcessUtil
{
  public static String TAG = "RecvDataProcessUtil";
  private MnsCodeCopeWaysHasListener mHasListenerUtil;
  private boolean mHasSelected = false;
  private MnsCodeCopeWaysNoListener mNoListenerUtil;
  private MnsCodeCopeWaysWithPush mPushUtil;
  private Session mSession;
  private IMnsCodeCopeWays nowUtil;
  
  public RecvDataProcessUtil(Session paramSession)
  {
    this.mSession = paramSession;
  }
  
  public boolean handle()
  {
    if (!this.mHasSelected)
    {
      MiLinkLog.e(TAG, "has not select data process util");
      return false;
    }
    this.nowUtil.handleMnsCode();
    this.mHasSelected = false;
    return true;
  }
  
  public RecvDataProcessUtil selectHandleUtil(PacketData paramPacketData, Request paramRequest)
  {
    if (paramRequest != null) {
      if (paramRequest.hasListenter())
      {
        if (this.mHasListenerUtil == null) {
          this.mHasListenerUtil = new MnsCodeCopeWaysHasListener(this.mSession);
        }
        this.nowUtil = this.mHasListenerUtil;
      }
    }
    for (;;)
    {
      this.nowUtil.setParam(paramPacketData, paramRequest);
      this.mHasSelected = true;
      return this;
      if (this.mNoListenerUtil == null) {
        this.mNoListenerUtil = new MnsCodeCopeWaysNoListener(this.mSession);
      }
      this.nowUtil = this.mNoListenerUtil;
      continue;
      if (this.mPushUtil == null) {
        this.mPushUtil = new MnsCodeCopeWaysWithPush(this.mSession);
      }
      this.nowUtil = this.mPushUtil;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\RecvDataProcessUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */