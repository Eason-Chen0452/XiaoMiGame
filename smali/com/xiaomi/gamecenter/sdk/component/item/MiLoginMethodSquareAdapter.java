package com.xiaomi.gamecenter.sdk.component.item;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.utils.ArrayAdapter;
import java.util.List;

public class MiLoginMethodSquareAdapter
  extends ArrayAdapter<MiLoginMethodSquareInfo>
{
  public MiLoginMethodSquareAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public final void a(Object[] paramArrayOfObject)
  {
    if (this.b != null) {
      this.b.clear();
    }
    super.a(paramArrayOfObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\component\item\MiLoginMethodSquareAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */