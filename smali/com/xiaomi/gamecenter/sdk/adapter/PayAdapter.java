package com.xiaomi.gamecenter.sdk.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.entry.PaytypeModel;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.util.List;

public class PayAdapter
  extends ArrayListAdapter<PaytypeModel>
{
  public PayAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) || (paramView.getTag() == null))
    {
      paramView = View.inflate(this.b, ResourceUtils.f(this.b, "mio_item_pay"), null);
      paramViewGroup = new a();
      paramViewGroup.a = ((ImageView)paramView.findViewById(ResourceUtils.d(this.b, "iv_logo")));
      paramViewGroup.b = ((TextView)paramView.findViewById(ResourceUtils.d(this.b, "tv_name")));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      paramViewGroup.a.setImageResource(((PaytypeModel)this.a.get(paramInt)).getLogo());
      paramViewGroup.b.setText(((PaytypeModel)this.a.get(paramInt)).getName());
      return paramView;
      paramViewGroup = (a)paramView.getTag();
    }
  }
  
  static final class a
  {
    ImageView a;
    TextView b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\adapter\PayAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */