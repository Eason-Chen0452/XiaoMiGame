package com.xiaomi.gamecenter.sdk;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

final class v
  implements Runnable
{
  v(MiCommplatform paramMiCommplatform) {}
  
  public final void run()
  {
    MiCommplatform.getInstance().setTouch(false);
    Object localObject = new AlertDialog.Builder(MiCommplatform.access$100());
    View localView = LayoutInflater.from(MiCommplatform.access$100()).inflate(ResourceUtils.f(MiCommplatform.access$100(), "mio_dialog_login_error"), null);
    Button localButton1 = (Button)localView.findViewById(ResourceUtils.d(MiCommplatform.access$100(), "btn_close"));
    Button localButton2 = (Button)localView.findViewById(ResourceUtils.d(MiCommplatform.access$100(), "btn"));
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).show();
    ((AlertDialog)localObject).getWindow().setContentView(localView);
    ((AlertDialog)localObject).getWindow().setGravity(17);
    ((AlertDialog)localObject).setCancelable(false);
    ((AlertDialog)localObject).setCanceledOnTouchOutside(false);
    localButton2.setOnClickListener(new w(this));
    localButton1.setOnClickListener(new x(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */