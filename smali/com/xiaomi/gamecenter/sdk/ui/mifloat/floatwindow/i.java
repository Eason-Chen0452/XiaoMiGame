package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

final class i
  implements Runnable
{
  i(MiFloatManager paramMiFloatManager) {}
  
  public final void run()
  {
    if (MiFloatManager.s(this.a) == null) {
      MiFloatManager.a(this.a, LayoutInflater.from(MiFloatManager.b(this.a)).inflate(ResourceUtils.f(MiFloatManager.b(this.a), "float_window_close"), null));
    }
    n.a(MiFloatManager.s(this.a));
    Object localObject = new View(MiFloatManager.b(this.a));
    ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    ((View)localObject).setBackgroundResource(ResourceUtils.h(MiFloatManager.b(this.a), "text_color_black_40"));
    ((View)localObject).setOnTouchListener(new j(this));
    MiFloatManager.p(this.a).addView((View)localObject);
    MiFloatManager.p(this.a).addView(MiFloatManager.s(this.a));
    int i = ResourceUtils.d(MiFloatManager.b(this.a), "cb_check");
    CheckBox localCheckBox = (CheckBox)MiFloatManager.s(this.a).findViewById(i);
    localCheckBox.setChecked(false);
    localCheckBox.setOnClickListener(new k(this));
    i = ResourceUtils.d(MiFloatManager.b(this.a), "btn_cancel");
    MiFloatManager.s(this.a).findViewById(i).setOnClickListener(new l(this, (View)localObject));
    i = ResourceUtils.d(MiFloatManager.b(this.a), "btn_hide");
    MiFloatManager.s(this.a).findViewById(i).setOnClickListener(new m(this, (View)localObject, localCheckBox));
    localObject = (ImageView)MiFloatManager.s(this.a).findViewById(ResourceUtils.d(MiFloatManager.b(this.a), "animation_shake"));
    ((ImageView)localObject).setImageResource(ResourceUtils.c(MiFloatManager.b(this.a), "animlist_shake"));
    ((AnimationDrawable)((ImageView)localObject).getDrawable()).start();
    MiFloatManager.e(this.a).removeMessages(1000);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */