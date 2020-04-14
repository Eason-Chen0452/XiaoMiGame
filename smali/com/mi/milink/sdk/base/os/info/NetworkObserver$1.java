package com.mi.milink.sdk.base.os.info;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;

class NetworkObserver$1
  extends PhoneStateListener
{
  NetworkObserver$1(NetworkObserver paramNetworkObserver) {}
  
  public void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    NetworkObserver.access$002(this.this$0, NetworkObserver.access$100(this.this$0, paramSignalStrength));
    super.onSignalStrengthsChanged(paramSignalStrength);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\NetworkObserver$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */