package com.xiaomi.passport.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import org.json.JSONArray;
import org.json.JSONException;

public class SensorHelper
  implements SensorEventListener
{
  private static HandlerThread e;
  private String a = "SensorHelper";
  private SensorManager b;
  private int c = 50000;
  private Handler d;
  private boolean f = false;
  private JSONArray g = new JSONArray();
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("sensor");
    e = localHandlerThread;
    localHandlerThread.start();
  }
  
  public SensorHelper(Context paramContext)
  {
    this.b = ((SensorManager)paramContext.getApplicationContext().getSystemService("sensor"));
    this.d = new Handler(e.getLooper());
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    this.d.post(new a(this, paramSensorEvent));
  }
  
  private final class a
  {
    private final float[] b;
    private final int c;
    
    a(SensorEvent paramSensorEvent)
    {
      this.b = paramSensorEvent.values;
      this.c = paramSensorEvent.sensor.getType();
    }
    
    private int b()
    {
      switch (this.c)
      {
      case 3: 
      default: 
        return 0;
      case 4: 
        return 1;
      case 1: 
        return 2;
      }
      return 3;
    }
    
    final JSONArray a()
      throws JSONException
    {
      JSONArray localJSONArray = new JSONArray();
      float[] arrayOfFloat = this.b;
      int j = arrayOfFloat.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfFloat[i]);
        i += 1;
      }
      localJSONArray.put(b());
      localJSONArray.put(System.currentTimeMillis());
      return localJSONArray;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      float[] arrayOfFloat = this.b;
      int j = arrayOfFloat.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(arrayOfFloat[i]);
        localStringBuilder.append(",");
        i += 1;
      }
      localStringBuilder.append(b()).append(",").append(System.currentTimeMillis());
      return localStringBuilder.toString();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\utils\SensorHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */