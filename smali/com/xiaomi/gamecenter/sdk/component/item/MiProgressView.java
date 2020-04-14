package com.xiaomi.gamecenter.sdk.component.item;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;

public class MiProgressView
  extends TextView
{
  private int a = 0;
  private Paint b = new Paint();
  
  public MiProgressView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MiProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void a(int paramInt)
  {
    int i = 100;
    if (paramInt < 0) {
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt > 100) {
        paramInt = i;
      }
      for (;;)
      {
        this.a = paramInt;
        invalidate();
        return;
      }
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f = getWidth() * this.a / 100.0F;
    this.b.setColor(-13984288);
    this.b.setStyle(Paint.Style.FILL_AND_STROKE);
    this.b.setAntiAlias(true);
    paramCanvas.drawRect(new RectF(0.0F, 0.0F, f, getHeight()), this.b);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\component\item\MiProgressView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */