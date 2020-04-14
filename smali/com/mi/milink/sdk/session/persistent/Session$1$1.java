package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.StreamUtil.GetAccountAdapter;
import java.util.concurrent.ConcurrentHashMap;

class Session$1$1
  implements StreamUtil.GetAccountAdapter
{
  Session$1$1(Session.1 param1) {}
  
  public IAccount getAccount(int paramInt)
  {
    Request localRequest = (Request)this.this$1.this$0.mRequestMap.get(Integer.valueOf(paramInt));
    if (localRequest == null) {
      return MiAccountManager.getInstance().getCurrentAccount();
    }
    return localRequest.getOwnerAccount();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$1$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */