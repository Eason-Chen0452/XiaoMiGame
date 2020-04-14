package com.xiaomi.gamecenter.sdk.component.item;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

public class MiLoginMethodSquareItem
  extends RelativeLayout
{
  private Context a;
  private ImageView b;
  private TextView c;
  private MiLoginMethodSquareInfo d;
  
  public MiLoginMethodSquareItem(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    a();
  }
  
  public MiLoginMethodSquareItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a();
  }
  
  private void a()
  {
    View localView = LayoutInflater.from(this.a).inflate(ResourceUtils.f(getContext(), "mio_login_item_method_square"), null);
    this.c = ((TextView)localView.findViewById(ResourceUtils.d(getContext(), "mio_method_square_item_title")));
    this.b = ((ImageView)localView.findViewById(ResourceUtils.d(getContext(), "mio_method_square_item_icon")));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    addView(localView, localLayoutParams);
  }
  
  public final void a(MiLoginMethodSquareInfo paramMiLoginMethodSquareInfo)
  {
    if (paramMiLoginMethodSquareInfo == null) {
      return;
    }
    this.d = paramMiLoginMethodSquareInfo;
    setTag(paramMiLoginMethodSquareInfo.c());
    this.c.setText(this.d.a());
    this.b.setImageDrawable(getResources().getDrawable(this.d.b()));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\component\item\MiLoginMethodSquareItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */