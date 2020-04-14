package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.session.common.StreamUtil.GetAccountAdapter;

class SessionForSimpleChannel$1$1
  implements StreamUtil.GetAccountAdapter
{
  SessionForSimpleChannel$1$1(SessionForSimpleChannel.1 param1) {}
  
  public IAccount getAccount(int paramInt)
  {
    return SessionForSimpleChannel.access$000(this.this$1.this$0).getCurrentAccount();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel$1$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */