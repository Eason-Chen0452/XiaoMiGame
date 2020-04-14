package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import android.widget.TextView;

public class MarqueeTextView
  extends TextView
{
  private static final int FIRST_SCROLL_DELAY_DEFAULT = 1000;
  private static final int ROLLING_INTERVAL_DEFAULT = 20;
  public static final int SCROLL_FOREVER = 0;
  public static final int SCROLL_ONCE = 1;
  private boolean mFirst = true;
  private int mFirstScrollDelay;
  private boolean mPaused = true;
  private int mRollingInterval;
  private int mScrollMode;
  private Scroller mScroller;
  private int mXPaused = 0;
  
  public MarqueeTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MarqueeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public MarqueeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initView(paramContext, paramAttributeSet, paramInt);
  }
  
  private int calculateScrollingLen()
  {
    TextPaint localTextPaint = getPaint();
    Rect localRect = new Rect();
    String str = getText().toString();
    localTextPaint.getTextBounds(str, 0, str.length(), localRect);
    return localRect.width();
  }
  
  private void initView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    int[] arrayOfInt = ResourceUtils.j(paramContext, "MarqueeTextView");
    if (arrayOfInt == null)
    {
      this.mRollingInterval = 20;
      this.mScrollMode = 0;
      this.mFirstScrollDelay = 1000;
    }
    for (;;)
    {
      setSingleLine();
      setEllipsize(null);
      return;
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, arrayOfInt);
      this.mRollingInterval = paramAttributeSet.getInt(ResourceUtils.k(paramContext, "MarqueeTextView_scroll_interval"), 20);
      this.mScrollMode = paramAttributeSet.getInt(ResourceUtils.k(paramContext, "MarqueeTextView_scroll_mode"), 0);
      this.mFirstScrollDelay = paramAttributeSet.getInt(ResourceUtils.k(paramContext, "MarqueeTextView_scroll_first_delay"), 1000);
      paramAttributeSet.recycle();
    }
  }
  
  public void computeScroll()
  {
    super.computeScroll();
    if (this.mScroller == null) {}
    while ((!this.mScroller.isFinished()) || (this.mPaused)) {
      return;
    }
    if (this.mScrollMode == 1)
    {
      stopScroll();
      return;
    }
    this.mPaused = true;
    this.mXPaused = (getWidth() * -1);
    this.mFirst = false;
    resumeScroll();
  }
  
  public int getRndDuration()
  {
    return this.mRollingInterval;
  }
  
  public int getScrollFirstDelay()
  {
    return this.mFirstScrollDelay;
  }
  
  public int getScrollMode()
  {
    return this.mScrollMode;
  }
  
  public boolean isPaused()
  {
    return this.mPaused;
  }
  
  public void pauseScroll()
  {
    if (this.mScroller == null) {}
    while (this.mPaused) {
      return;
    }
    this.mPaused = true;
    this.mXPaused = this.mScroller.getCurrX();
    this.mScroller.abortAnimation();
  }
  
  public void resumeScroll()
  {
    if (!this.mPaused) {
      return;
    }
    setGravity(16);
    setHorizontallyScrolling(true);
    if (this.mScroller == null)
    {
      this.mScroller = new Scroller(getContext(), new LinearInterpolator());
      setScroller(this.mScroller);
    }
    int j = calculateScrollingLen();
    int i = j - this.mXPaused;
    j = Double.valueOf(j * this.mRollingInterval).intValue();
    if (this.mFirst)
    {
      new Handler(Looper.getMainLooper()).postDelayed(new g(this, i, j), this.mFirstScrollDelay);
      return;
    }
    this.mScroller.startScroll(this.mXPaused, 0, i, 0, j);
    invalidate();
    this.mPaused = false;
  }
  
  public void setRndDuration(int paramInt)
  {
    this.mRollingInterval = paramInt;
  }
  
  public void setScrollFirstDelay(int paramInt)
  {
    this.mFirstScrollDelay = paramInt;
  }
  
  public void setScrollMode(int paramInt)
  {
    this.mScrollMode = paramInt;
  }
  
  public void startScroll()
  {
    this.mXPaused = 0;
    this.mPaused = true;
    this.mFirst = true;
    resumeScroll();
  }
  
  public void stopScroll()
  {
    if (this.mScroller == null) {
      return;
    }
    setGravity(17);
    this.mPaused = true;
    this.mScroller.startScroll(0, 0, 0, 0, 0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\MarqueeTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */