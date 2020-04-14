package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Handler;

final class c
  implements SensorEventListener
{
  c(MiFloatManager paramMiFloatManager) {}
  
  public final void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (paramSensorEvent.sensor.getType() == 1)
    {
      paramSensorEvent = paramSensorEvent.values;
      float f1 = paramSensorEvent[0];
      float f2 = paramSensorEvent[1];
      float f3 = paramSensorEvent[2];
      if (((Math.abs(f1) > 19.0F) || (Math.abs(f2) > 19.0F) || (Math.abs(f3) > 19.0F)) && (!MiFloatManager.a(this.a)))
      {
        MiFloatManager.a(this.a, true);
        if (MiFloatManager.b(this.a) != null) {
          MiFloatManager.b(this.a).runOnUiThread(new d(this));
        }
        new Handler().postDelayed(new e(this), 5000L);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */