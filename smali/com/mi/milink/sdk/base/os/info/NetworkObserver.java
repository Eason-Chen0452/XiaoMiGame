package com.mi.milink.sdk.base.os.info;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.mi.milink.sdk.base.Global;

abstract class NetworkObserver
  extends BroadcastReceiver
{
  private volatile int cellLevel = -1;
  private final boolean cellListenEnabled;
  private PhoneStateListener signalListener;
  
  NetworkObserver()
  {
    if (Build.VERSION.SDK_INT >= 7) {}
    for (boolean bool = true;; bool = false)
    {
      this.cellListenEnabled = bool;
      return;
    }
  }
  
  private int getCdmaLevel(SignalStrength paramSignalStrength)
  {
    int j = 4;
    int i = paramSignalStrength.getCdmaDbm();
    int k = paramSignalStrength.getCdmaEcio();
    if (i >= -75)
    {
      i = 4;
      if (k < -90) {
        break label73;
      }
    }
    for (;;)
    {
      if (i >= j) {
        return j;
      }
      return i;
      if (i >= -85)
      {
        i = 3;
        break;
      }
      if (i >= -95)
      {
        i = 2;
        break;
      }
      if (i >= -100)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      label73:
      if (k >= -110) {
        j = 3;
      } else if (k >= 65406) {
        j = 2;
      } else if (k >= 65386) {
        j = 1;
      } else {
        j = 0;
      }
    }
    return j;
  }
  
  private int getCellLevel(SignalStrength paramSignalStrength)
  {
    int i;
    if (paramSignalStrength == null) {
      i = -1;
    }
    int j;
    int k;
    do
    {
      do
      {
        return i;
        if (paramSignalStrength.isGsm()) {
          return getGsmLevel(paramSignalStrength);
        }
        j = getCdmaLevel(paramSignalStrength);
        k = getEvdoLevel(paramSignalStrength);
        i = j;
      } while (k == 0);
      if (j == 0) {
        break;
      }
      i = j;
    } while (k > j);
    return k;
  }
  
  private int getEvdoLevel(SignalStrength paramSignalStrength)
  {
    int j = 4;
    int i = paramSignalStrength.getEvdoDbm();
    int k = paramSignalStrength.getEvdoSnr();
    if (i >= -65)
    {
      i = 4;
      if (k < 7) {
        break label73;
      }
    }
    for (;;)
    {
      if (i >= j) {
        return j;
      }
      return i;
      if (i >= -75)
      {
        i = 3;
        break;
      }
      if (i >= -90)
      {
        i = 2;
        break;
      }
      if (i >= -105)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      label73:
      if (k >= 5) {
        j = 3;
      } else if (k >= 3) {
        j = 2;
      } else if (k > 0) {
        j = 1;
      } else {
        j = 0;
      }
    }
    return j;
  }
  
  private int getGsmLevel(SignalStrength paramSignalStrength)
  {
    int i = 2;
    int j = paramSignalStrength.getGsmSignalStrength();
    if ((j <= 2) || (j == 99)) {
      i = 0;
    }
    do
    {
      return i;
      if (j >= 12) {
        return 4;
      }
      if (j >= 8) {
        return 3;
      }
    } while (j >= 5);
    return 1;
  }
  
  @SuppressLint({"InlinedApi"})
  private void initSignalListen()
  {
    if (!this.cellListenEnabled) {
      return;
    }
    this.signalListener = new NetworkObserver.1(this);
    TelephonyManager localTelephonyManager = (TelephonyManager)Global.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      localTelephonyManager.listen(this.signalListener, 256);
      return;
    }
    this.signalListener = null;
  }
  
  public int getCellLevel()
  {
    return this.cellLevel;
  }
  
  public abstract void onNetworkChanged();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((this.cellListenEnabled) && (this.signalListener == null)) {}
    try
    {
      if (this.signalListener == null) {
        initSignalListen();
      }
      if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())) {
        onNetworkChanged();
      }
      return;
    }
    finally {}
  }
  
  public void startListen()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    try
    {
      Global.registerReceiver(this, localIntentFilter);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void stopListen()
  {
    Global.unregisterReceiver(this);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\NetworkObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */