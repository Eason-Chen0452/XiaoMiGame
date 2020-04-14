package com.aonesoft.lib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

public class ClipView
  extends View
{
  private Paint borderPaint = new Paint();
  private int clipBorderWidth = 1;
  private int clipHeight;
  private int clipLeftMargin = 0;
  private double clipRatio = 1.0D;
  private int clipTopMargin = 0;
  private int clipWidth;
  private int customTopBarHeight = 0;
  private boolean isSetMargin = false;
  private OnDrawListenerComplete listenerComplete;
  private Paint paint = new Paint();
  
  public ClipView(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.clipWidth = (paramInt - 2);
    this.clipHeight = (paramInt - 2);
  }
  
  public ClipView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ClipView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void addOnDrawCompleteListener(OnDrawListenerComplete paramOnDrawListenerComplete)
  {
    this.listenerComplete = paramOnDrawListenerComplete;
  }
  
  public int getClipHeight()
  {
    return this.clipHeight - this.clipBorderWidth;
  }
  
  public int getClipLeftMargin()
  {
    return this.clipLeftMargin + this.clipBorderWidth;
  }
  
  public double getClipRatio()
  {
    return this.clipRatio;
  }
  
  public int getClipTopMargin()
  {
    return this.clipTopMargin + this.clipBorderWidth;
  }
  
  public int getClipWidth()
  {
    return this.clipWidth - this.clipBorderWidth;
  }
  
  public int getCustomTopBarHeight()
  {
    return this.customTopBarHeight;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((this.clipWidth == -1) || (this.clipHeight == -1))
    {
      this.clipWidth = (i - 50);
      this.clipHeight = ((int)(this.clipWidth * this.clipRatio));
      if (i > j)
      {
        this.clipHeight = (j - 50);
        this.clipWidth = ((int)(this.clipHeight / this.clipRatio));
      }
    }
    if (!this.isSetMargin)
    {
      this.clipLeftMargin = ((i - this.clipWidth) / 2);
      this.clipTopMargin = ((j - this.clipHeight) / 2);
    }
    this.paint.setAlpha(100);
    paramCanvas.drawRect(0.0F, this.customTopBarHeight, i, this.clipTopMargin, this.paint);
    paramCanvas.drawRect(0.0F, this.clipTopMargin, this.clipLeftMargin, this.clipTopMargin + this.clipHeight, this.paint);
    paramCanvas.drawRect(this.clipLeftMargin + this.clipWidth, this.clipTopMargin, i, this.clipTopMargin + this.clipHeight, this.paint);
    paramCanvas.drawRect(0.0F, this.clipTopMargin + this.clipHeight, i, j, this.paint);
    this.borderPaint.setStyle(Paint.Style.STROKE);
    this.borderPaint.setColor(-1);
    this.borderPaint.setStrokeWidth(this.clipBorderWidth);
    paramCanvas.drawRect(this.clipLeftMargin, this.clipTopMargin, this.clipLeftMargin + this.clipWidth, this.clipTopMargin + this.clipHeight, this.borderPaint);
    if (this.listenerComplete != null) {
      this.listenerComplete.onDrawCompelete();
    }
  }
  
  public void removeOnDrawCompleteListener()
  {
    this.listenerComplete = null;
  }
  
  public void setClipHeight(int paramInt)
  {
    this.clipHeight = paramInt;
  }
  
  public void setClipLeftMargin(int paramInt)
  {
    this.clipLeftMargin = paramInt;
    this.isSetMargin = true;
  }
  
  public void setClipRatio(double paramDouble)
  {
    this.clipRatio = paramDouble;
  }
  
  public void setClipTopMargin(int paramInt)
  {
    this.clipTopMargin = paramInt;
    this.isSetMargin = true;
  }
  
  public void setClipWidth(int paramInt)
  {
    this.clipWidth = paramInt;
  }
  
  public void setCustomTopBarHeight(int paramInt)
  {
    this.customTopBarHeight = paramInt;
  }
  
  public static abstract interface OnDrawListenerComplete
  {
    public abstract void onDrawCompelete();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\ClipView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */