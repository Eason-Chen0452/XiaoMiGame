package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.app.Activity;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.bd;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.MiFloatMenuInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.MiMsgManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.MiFloatPosition;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.l;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.m;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class MiFloatManager
{
  private static MiFloatManager j;
  public final a a = new a();
  private MiFloatView b;
  private View c;
  private FrameLayout d;
  private Activity e;
  private SensorManager f;
  private MiFloatMaskView g;
  private View h;
  private View i;
  private MiFloatHandler k = new MiFloatHandler(Looper.getMainLooper());
  private boolean l = false;
  private SensorEventListener m = new c(this);
  private b n = new s(this);
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;
  private View r;
  private boolean s = false;
  
  private void a(MiFloatView paramMiFloatView, View paramView)
  {
    if ((paramMiFloatView == null) || (paramView == null)) {
      return;
    }
    this.e.runOnUiThread(new n(this, paramMiFloatView, paramView));
  }
  
  public static MiFloatManager b()
  {
    if (j == null) {}
    try
    {
      if (j == null) {
        j = new MiFloatManager();
      }
      return j;
    }
    finally {}
  }
  
  private void c(Activity paramActivity)
  {
    int i2 = m.a(paramActivity);
    int i3 = m.b(paramActivity);
    boolean bool1 = m.f(paramActivity);
    boolean bool2 = m.b(paramActivity);
    boolean bool3 = m.a(paramActivity);
    Logger.a("MiGameSDK.MiFloatManager", "initScreenParams start-----------");
    Logger.a("MiGameSDK.MiFloatManager", " screenWidth " + i2 + ",screenHeight " + i3);
    Logger.a("MiGameSDK.MiFloatManager", "isHideNav " + bool1 + ",isNotchScreen " + bool2 + ",hasStatusBar " + bool3);
    Logger.a("MiGameSDK.MiFloatManager", "ScreenUtils.getStatusBarHeight(activity) " + m.d(paramActivity));
    Logger.a("MiGameSDK.MiFloatManager", "ScreenUtils.getNavigationBarHeight(activity) " + m.c(paramActivity));
    if (this.d != null)
    {
      Logger.a("MiGameSDK.MiFloatManager", "contentView.getMeasuredHeight() " + this.d.getMeasuredHeight());
      Logger.a("MiGameSDK.MiFloatManager", "contentView.getMeasuredWidth() " + this.d.getMeasuredWidth());
    }
    int i1;
    int i4;
    a locala;
    if ((bool2) || (bool3))
    {
      i1 = m.d(paramActivity);
      i4 = m.c(paramActivity);
      this.a.a = i2;
      this.a.b = i3;
      if (!m.e(paramActivity)) {
        break label386;
      }
      locala = this.a;
      locala.a -= i1;
      if (!bool1)
      {
        locala = this.a;
        locala.a -= i4;
      }
    }
    for (;;)
    {
      Logger.a("MiGameSDK.MiFloatManager", "miFloatLayoutParams " + this.a);
      i1 = ResourceUtils.g(paramActivity, "float_window_width");
      i2 = ResourceUtils.g(paramActivity, "float_window_height");
      this.a.c = paramActivity.getResources().getDimensionPixelSize(i1);
      this.a.d = paramActivity.getResources().getDimensionPixelSize(i2);
      Logger.a("MiGameSDK.MiFloatManager", "initScreenParams end-----------");
      return;
      i1 = 0;
      break;
      label386:
      locala = this.a;
      locala.b -= i1;
      locala = this.a;
      locala.b -= i4;
    }
  }
  
  public static void j()
  {
    try
    {
      b().e();
      b().i();
      MiMsgManager.a().b();
      return;
    }
    catch (Throwable localThrowable)
    {
      Logger.a("MiGameSDK.MiFloatManager", "dismissOverlay error", localThrowable);
    }
  }
  
  public final Activity a()
  {
    return this.e;
  }
  
  public final void a(Activity paramActivity)
  {
    this.e = paramActivity;
    b(paramActivity);
    bd.a().a(new r(this));
  }
  
  public final void b(Activity paramActivity)
  {
    c(paramActivity);
    if (this.b != null) {
      com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n.a(this.b);
    }
    this.h = null;
    Object localObject = l.a(this.e);
    this.b = new MiFloatView(paramActivity, ((MiFloatPosition)localObject).a(), ((MiFloatPosition)localObject).b(), this.a, this.n);
    this.g = new MiFloatMaskView(paramActivity);
    this.c = paramActivity.getWindow().getDecorView();
    this.d = ((FrameLayout)this.c.findViewById(16908290));
    this.f = ((SensorManager)this.e.getSystemService("sensor"));
    if (this.f != null)
    {
      localObject = this.f.getSensorList(1);
      if (localObject != null) {
        break label225;
      }
      Logger.d("sensors is null");
    }
    for (;;)
    {
      if (this.i == null)
      {
        this.i = new View(this.e);
        localObject = new ViewGroup.LayoutParams(-1, -1);
        this.i.setLayoutParams((ViewGroup.LayoutParams)localObject);
        this.i.setBackgroundResource(17170445);
      }
      this.i.setOnClickListener(new t(this));
      this.b.a(new u(this, paramActivity));
      return;
      label225:
      if (((List)localObject).size() != 0)
      {
        boolean bool = this.f.registerListener(this.m, (Sensor)((List)localObject).get(0), 2);
        Logger.d("mSensorManager.registerListener " + bool);
      }
      else
      {
        Logger.d("sensors list is empty");
      }
    }
  }
  
  public final void c()
  {
    if (this.f != null) {
      this.f.unregisterListener(this.m);
    }
  }
  
  public final void d()
  {
    if (!k.b().i()) {
      Logger.c("MiGameSDK.MiFloatManager", "This app do not display float.");
    }
    while ((l.c(this.e)) || (this.d == null) || (this.b == null)) {
      return;
    }
    MiFloatPosition localMiFloatPosition = l.a(this.e);
    HyUtils.a().submit(new v(this));
    this.e.runOnUiThread(new w(this, localMiFloatPosition));
  }
  
  public final void e()
  {
    this.e.runOnUiThread(new x(this));
  }
  
  public final void f()
  {
    if (l.c(this.e)) {
      l.b(this.e);
    }
  }
  
  public final void g()
  {
    this.e.runOnUiThread(new y(this));
  }
  
  public final void h()
  {
    this.e.runOnUiThread(new f(this));
  }
  
  public final void i()
  {
    this.e.runOnUiThread(new o(this));
  }
  
  public final void k()
  {
    try
    {
      Logger.a("MiGameSDK.MiFloatManager", "showMiFloat");
      if (!com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(this.e))
      {
        j();
        Logger.a("MiGameSDK.MiFloatManager", "Do not showMiFloat in sdk.");
        return;
      }
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      MiFloatMenuInfo localMiFloatMenuInfo = l.a(localMiAppInfo.getAppId());
      Logger.a("MiGameSDK.MiFloatManager", "menuinfo " + localMiFloatMenuInfo);
      if ((localMiFloatMenuInfo != null) && (localMiFloatMenuInfo.a().size() != 0))
      {
        this.e.runOnUiThread(new p(this, localMiAppInfo, localMiFloatMenuInfo));
        if (com.xiaomi.gamecenter.sdk.utils.c.a(this.e))
        {
          this.e.runOnUiThread(new q(this));
          return;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      Logger.a("MiGameSDK.MiFloatManager", "showMiFloat error", localThrowable);
    }
  }
  
  private class MiFloatHandler
    extends Handler
  {
    public MiFloatHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 1004: 
      case 1005: 
      case 1006: 
      default: 
      case 1000: 
      case 1001: 
      case 1002: 
      case 1007: 
      case 1008: 
      case 1009: 
      case 1010: 
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                } while ((MiFloatManager.c(MiFloatManager.this) == null) || (MiFloatManager.c(MiFloatManager.this).e()));
                MiFloatManager.c(MiFloatManager.this).h();
                if ((MiFloatManager.d(MiFloatManager.this) == null) || (!MiFloatManager.d(MiFloatManager.this).isShown())) {
                  MiFloatManager.e(MiFloatManager.this).sendEmptyMessageDelayed(1003, 3000L);
                }
                Logger.a("MiGameSDK.MiFloatManager", "MSG_MOVE_TO_EDGE");
                return;
              } while ((MiFloatManager.c(MiFloatManager.this) == null) || (MiFloatManager.c(MiFloatManager.this).e()) || (MiFloatManager.f(MiFloatManager.this)));
              if (MiFloatManager.c(MiFloatManager.this).n()) {
                MiFloatManager.c(MiFloatManager.this).k();
              }
              for (;;)
              {
                Logger.a("MiGameSDK.MiFloatManager", "MSG_HIDE_TO_EDGE " + MiFloatManager.c(MiFloatManager.this).a);
                return;
                if (MiFloatManager.c(MiFloatManager.this).o()) {
                  MiFloatManager.c(MiFloatManager.this).l();
                }
              }
              MiFloatManager.c(MiFloatManager.this).m();
              if ((MiFloatManager.d(MiFloatManager.this) == null) || (!MiFloatManager.d(MiFloatManager.this).isShown())) {
                MiFloatManager.e(MiFloatManager.this).sendEmptyMessageDelayed(1003, 3000L);
              }
              Logger.a("MiGameSDK.MiFloatManager", "MSG_APPEAR_FROM_EDGE " + MiFloatManager.c(MiFloatManager.this).a);
              return;
              MiFloatManager.g(MiFloatManager.this);
              Logger.a("MiGameSDK.MiFloatManager", "MSG_SHOW_MASK");
              return;
            } while ((MiFloatManager.c(MiFloatManager.this) == null) || (MiFloatManager.c(MiFloatManager.this).e()));
            MiFloatManager.h(MiFloatManager.this);
            Logger.a("MiGameSDK.MiFloatManager", "MSG_HIDE_MASK");
            return;
          } while ((MiFloatManager.c(MiFloatManager.this) == null) || (MiFloatManager.c(MiFloatManager.this).e()));
          MiFloatManager.c(MiFloatManager.this).f();
          Logger.a("MiGameSDK.MiFloatManager", "MSG_MOVE_TO_LEFT_EDGE");
          return;
        } while ((MiFloatManager.c(MiFloatManager.this) == null) || (MiFloatManager.c(MiFloatManager.this).e()));
        MiFloatManager.c(MiFloatManager.this).g();
        Logger.a("MiGameSDK.MiFloatManager", "MSG_MOVE_TO_RIGHT_EDGE");
        return;
      }
      MiFloatManager.c(MiFloatManager.this).j();
      MiFloatManager.e(MiFloatManager.this).sendEmptyMessageDelayed(1001, 1000L);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\MiFloatManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */