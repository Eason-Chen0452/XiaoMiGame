package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;

public class Cocos2dxBitmap
{
  private static final int HORIZONTALALIGN_CENTER = 3;
  private static final int HORIZONTALALIGN_LEFT = 1;
  private static final int HORIZONTALALIGN_RIGHT = 2;
  private static final int VERTICALALIGN_BOTTOM = 2;
  private static final int VERTICALALIGN_CENTER = 3;
  private static final int VERTICALALIGN_TOP = 1;
  private static Context _context;
  
  private static TextProperty computeTextProperty(String paramString, int paramInt1, int paramInt2, Paint paramPaint)
  {
    Paint.FontMetricsInt localFontMetricsInt = paramPaint.getFontMetricsInt();
    int k = (int)Math.ceil(localFontMetricsInt.bottom - localFontMetricsInt.top);
    int i = 0;
    paramString = splitString(paramString, paramInt1, paramInt2, paramPaint);
    if (paramInt1 != 0)
    {
      i = paramInt1;
      return new TextProperty(i, k, paramString);
    }
    int m = paramString.length;
    paramInt2 = 0;
    for (paramInt1 = i;; paramInt1 = i)
    {
      i = paramInt1;
      if (paramInt2 >= m) {
        break;
      }
      localFontMetricsInt = paramString[paramInt2];
      int j = (int)Math.ceil(paramPaint.measureText(localFontMetricsInt, 0, localFontMetricsInt.length()));
      i = paramInt1;
      if (j > paramInt1) {
        i = j;
      }
      paramInt2 += 1;
    }
  }
  
  private static int computeX(String paramString, int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      return 0;
    case 3: 
      return paramInt1 / 2;
    }
    return paramInt1;
  }
  
  private static int computeY(Paint.FontMetricsInt paramFontMetricsInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = -paramFontMetricsInt.top;
    if (paramInt1 > paramInt2) {}
    switch (paramInt3)
    {
    default: 
      return i;
    case 1: 
      return -paramFontMetricsInt.top;
    case 3: 
      return -paramFontMetricsInt.top + (paramInt1 - paramInt2) / 2;
    }
    return -paramFontMetricsInt.top + (paramInt1 - paramInt2);
  }
  
  public static void createTextBitmap(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    createTextBitmapShadowStroke(paramString1, paramString2, paramInt1, 1.0F, 1.0F, 1.0F, paramInt2, paramInt3, paramInt4, false, 0.0F, 0.0F, 0.0F, 0.0F, false, 1.0F, 1.0F, 1.0F, 1.0F);
  }
  
  public static boolean createTextBitmapShadowStroke(String paramString1, String paramString2, int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean2, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11)
  {
    int i = paramInt2 & 0xF;
    int j = paramInt2 >> 4 & 0xF;
    Object localObject1 = refactorString(paramString1);
    paramString1 = newPaint(paramString2, paramInt1, i);
    if ((paramInt3 != 0) && ((int)Math.ceil(paramString1.measureText((String)localObject1, 0, 1)) > paramInt3))
    {
      Log.w("createTextBitmapShadowStroke warning:", "the input width is less than the width of the pString's first word\n");
      return false;
    }
    paramString1.setARGB(255, (int)(255.0D * paramFloat1), (int)(255.0D * paramFloat2), (int)(255.0D * paramFloat3));
    localObject1 = computeTextProperty((String)localObject1, paramInt3, paramInt4, paramString1);
    if (paramInt4 == 0) {}
    for (paramInt2 = ((TextProperty)localObject1).mTotalHeight; (((TextProperty)localObject1).mMaxWidth == 0) || (paramInt2 == 0); paramInt2 = paramInt4)
    {
      Log.w("createTextBitmapShadowStroke warning:", "textProperty MaxWidth is 0 or bitMapTotalHeight is 0\n");
      return false;
    }
    Bitmap localBitmap = Bitmap.createBitmap(((TextProperty)localObject1).mMaxWidth + (int)0.0F, (int)0.0F + paramInt2, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Object localObject2 = paramString1.getFontMetricsInt();
    if (paramBoolean2)
    {
      paramString2 = newPaint(paramString2, paramInt1, i);
      paramString2.setStyle(Paint.Style.STROKE);
      paramString2.setStrokeWidth(paramFloat11);
      paramString2.setARGB(255, (int)(255.0F * paramFloat8), (int)(255.0F * paramFloat9), (int)(255.0F * paramFloat10));
      paramInt2 = computeY((Paint.FontMetricsInt)localObject2, paramInt4, ((TextProperty)localObject1).mTotalHeight, j);
      localObject2 = ((TextProperty)localObject1).mLines;
      paramInt3 = localObject2.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt3)
      {
        String str = localObject2[paramInt1];
        paramInt4 = computeX(str, ((TextProperty)localObject1).mMaxWidth, i);
        localCanvas.drawText(str, paramInt4 + 0.0F, paramInt2 + 0.0F, paramString2);
        localCanvas.drawText(str, paramInt4 + 0.0F, paramInt2 + 0.0F, paramString1);
        paramInt2 += ((TextProperty)localObject1).mHeightPerLine;
        paramInt1 += 1;
      }
    }
    paramInt2 = computeY((Paint.FontMetricsInt)localObject2, paramInt4, ((TextProperty)localObject1).mTotalHeight, j);
    paramString2 = ((TextProperty)localObject1).mLines;
    paramInt3 = paramString2.length;
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      localObject2 = paramString2[paramInt1];
      localCanvas.drawText((String)localObject2, computeX((String)localObject2, ((TextProperty)localObject1).mMaxWidth, i) + 0.0F, paramInt2 + 0.0F, paramString1);
      paramInt2 += ((TextProperty)localObject1).mHeightPerLine;
      paramInt1 += 1;
    }
    initNativeObject(localBitmap);
    return true;
  }
  
  private static LinkedList<String> divideStringWithMaxWidth(String paramString, int paramInt, Paint paramPaint)
  {
    int n = paramString.length();
    int j = 0;
    LinkedList localLinkedList = new LinkedList();
    int i = 1;
    while (i <= n)
    {
      int i1 = (int)Math.ceil(paramPaint.measureText(paramString, j, i));
      int m = i;
      int k = j;
      if (i1 >= paramInt)
      {
        k = paramString.substring(0, i).lastIndexOf(" ");
        if ((k != -1) && (k > j))
        {
          localLinkedList.add(paramString.substring(j, k));
          i = k + 1;
        }
        while ((i < n) && (paramString.charAt(i) == ' '))
        {
          i += 1;
          continue;
          if (i1 > paramInt)
          {
            localLinkedList.add(paramString.substring(j, i - 1));
            i -= 1;
          }
          else
          {
            localLinkedList.add(paramString.substring(j, i));
          }
        }
        k = i;
        m = i;
      }
      i = m + 1;
      j = k;
    }
    if (j < n) {
      localLinkedList.add(paramString.substring(j));
    }
    return localLinkedList;
  }
  
  private static int getFontSizeAccordingHeight(int paramInt)
  {
    Paint localPaint = new Paint();
    Rect localRect = new Rect();
    localPaint.setTypeface(Typeface.DEFAULT);
    int j = 1;
    int i = 0;
    while (i == 0)
    {
      localPaint.setTextSize(j);
      localPaint.getTextBounds("SghMNy", 0, "SghMNy".length(), localRect);
      j += 1;
      if (paramInt - localRect.height() <= 2) {
        i = 1;
      }
      Log.d("font size", "incr size:" + j);
    }
    return j;
  }
  
  private static byte[] getPixels(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      byte[] arrayOfByte = new byte[paramBitmap.getWidth() * paramBitmap.getHeight() * 4];
      ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
      localByteBuffer.order(ByteOrder.nativeOrder());
      paramBitmap.copyPixelsToBuffer(localByteBuffer);
      return arrayOfByte;
    }
    return null;
  }
  
  private static String getStringWithEllipsis(String paramString, float paramFloat1, float paramFloat2)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setTypeface(Typeface.DEFAULT);
    localTextPaint.setTextSize(paramFloat2);
    return TextUtils.ellipsize(paramString, localTextPaint, paramFloat1, TextUtils.TruncateAt.END).toString();
  }
  
  private static void initNativeObject(Bitmap paramBitmap)
  {
    byte[] arrayOfByte = getPixels(paramBitmap);
    if (arrayOfByte == null) {
      return;
    }
    nativeInitBitmapDC(paramBitmap.getWidth(), paramBitmap.getHeight(), arrayOfByte);
  }
  
  private static native void nativeInitBitmapDC(int paramInt1, int paramInt2, byte[] paramArrayOfByte);
  
  private static Paint newPaint(String paramString, int paramInt1, int paramInt2)
  {
    Paint localPaint = new Paint();
    localPaint.setColor(-1);
    localPaint.setTextSize(paramInt1);
    localPaint.setAntiAlias(true);
    if (paramString.endsWith(".ttf")) {}
    for (;;)
    {
      try
      {
        localPaint.setTypeface(Cocos2dxTypefaces.get(_context, paramString));
        switch (paramInt2)
        {
        default: 
          localPaint.setTextAlign(Paint.Align.LEFT);
          return localPaint;
        }
      }
      catch (Exception localException)
      {
        Log.e("Cocos2dxBitmap", "error to create ttf type face: " + paramString);
        localPaint.setTypeface(Typeface.create(paramString, 0));
        continue;
      }
      localPaint.setTypeface(Typeface.create(paramString, 0));
    }
    localPaint.setTextAlign(Paint.Align.CENTER);
    return localPaint;
    localPaint.setTextAlign(Paint.Align.RIGHT);
    return localPaint;
  }
  
  private static String refactorString(String paramString)
  {
    if (paramString.compareTo("") == 0) {
      return " ";
    }
    paramString = new StringBuilder(paramString);
    int i = 0;
    for (int j = paramString.indexOf("\n");; j = paramString.indexOf("\n", i))
    {
      if (j != -1)
      {
        if ((j != 0) && (paramString.charAt(j - 1) != '\n')) {
          break label86;
        }
        paramString.insert(i, " ");
      }
      label86:
      for (i = j + 2; (i > paramString.length()) || (j == paramString.length()); i = j + 1) {
        return paramString.toString();
      }
    }
  }
  
  public static void setContext(Context paramContext)
  {
    _context = paramContext;
  }
  
  private static String[] splitString(String paramString, int paramInt1, int paramInt2, Paint paramPaint)
  {
    paramString = paramString.split("\\n");
    Object localObject = paramPaint.getFontMetricsInt();
    int i = paramInt2 / (int)Math.ceil(((Paint.FontMetricsInt)localObject).bottom - ((Paint.FontMetricsInt)localObject).top);
    if (paramInt1 != 0)
    {
      localObject = new LinkedList();
      int j = paramString.length;
      paramInt2 = 0;
      for (;;)
      {
        String str;
        if (paramInt2 < j)
        {
          str = paramString[paramInt2];
          if ((int)Math.ceil(paramPaint.measureText(str)) <= paramInt1) {
            break label141;
          }
          ((LinkedList)localObject).addAll(divideStringWithMaxWidth(str, paramInt1, paramPaint));
        }
        while ((i > 0) && (((LinkedList)localObject).size() >= i))
        {
          if ((i <= 0) || (((LinkedList)localObject).size() <= i)) {
            break label159;
          }
          while (((LinkedList)localObject).size() > i) {
            ((LinkedList)localObject).removeLast();
          }
          label141:
          ((LinkedList)localObject).add(str);
        }
        paramInt2 += 1;
      }
      label159:
      paramString = new String[((LinkedList)localObject).size()];
      ((LinkedList)localObject).toArray(paramString);
      return paramString;
    }
    if ((paramInt2 != 0) && (paramString.length > i))
    {
      paramPaint = new LinkedList();
      paramInt1 = 0;
      while (paramInt1 < i)
      {
        paramPaint.add(paramString[paramInt1]);
        paramInt1 += 1;
      }
      paramString = new String[paramPaint.size()];
      paramPaint.toArray(paramString);
      return paramString;
    }
    return paramString;
  }
  
  private static class TextProperty
  {
    private final int mHeightPerLine;
    private final String[] mLines;
    private final int mMaxWidth;
    private final int mTotalHeight;
    
    TextProperty(int paramInt1, int paramInt2, String[] paramArrayOfString)
    {
      this.mMaxWidth = paramInt1;
      this.mHeightPerLine = paramInt2;
      this.mTotalHeight = (paramArrayOfString.length * paramInt2);
      this.mLines = paramArrayOfString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxBitmap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */