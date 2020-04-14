package com.aonesoft.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Environment;
import android.util.Log;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class GenerateQRCode
{
  public static String EmQRCode(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString3)
    throws FileNotFoundException
  {
    Log.e("Aonesdk", "CenerateQRCode.java begin to emQRCode ... ");
    Log.e("Aonesdk", "path = " + paramString1);
    Log.e("Aonesdk", "content = " + paramString2);
    Log.e("Aonesdk", "x = " + paramInt1 + ", y = " + paramInt2 + ", w = " + paramInt3 + ", h = " + paramInt4);
    if (paramString1.isEmpty())
    {
      Log.e("Aonesdk", "src image path is null");
      return " ";
    }
    if (!new File(paramString1).exists())
    {
      Log.e("Aonesdk", "src image path not exist = " + paramString1);
      return " ";
    }
    Environment.getExternalStorageDirectory().getAbsolutePath();
    paramString3 = paramString3 + "/" + getFileName(paramString1) + "_qrencode.png";
    Log.e("Aonesdk", "dest image path = " + paramString3);
    if (copyFile(paramString1, paramString3) != 0)
    {
      Log.e("Aonesdk", "copy src image fail, dest image path = " + paramString3);
      return " ";
    }
    paramString1 = createQRCode(paramString2, paramInt3, paramInt4);
    if (paramString1 == null)
    {
      Log.e("Aonesdk", "create QRCode fail");
      return " ";
    }
    paramString1 = generateImage(BitmapFactory.decodeFile(paramString3), paramString1, paramInt1, paramInt2);
    Log.e("Aonesdk", "get final image:" + paramString3);
    paramString2 = new FileOutputStream(paramString3);
    if (paramString1.compress(Bitmap.CompressFormat.JPEG, 100, paramString2)) {
      return paramString3;
    }
    return " ";
  }
  
  private static Bitmap bitmapScale(Bitmap paramBitmap, float paramFloat)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramFloat, paramFloat);
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
  }
  
  private static int copyFile(String paramString1, String paramString2)
  {
    try
    {
      if (new File(paramString1).exists())
      {
        paramString1 = new FileInputStream(paramString1);
        paramString2 = new FileOutputStream(paramString2);
        byte[] arrayOfByte = new byte['Ѐ'];
        for (;;)
        {
          int i = paramString1.read(arrayOfByte);
          if (i == -1)
          {
            paramString1.close();
            paramString2.close();
            return 0;
          }
          paramString2.write(arrayOfByte, 0, i);
        }
      }
      return -1;
    }
    catch (Exception paramString1)
    {
      return -1;
    }
  }
  
  private static Bitmap createQRCode(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject;
    int i;
    int j;
    if (paramString != null)
    {
      try
      {
        if ("".equals(paramString)) {
          break label184;
        }
        localObject = new HashMap();
        ((Map)localObject).put(EncodeHintType.CHARACTER_SET, "utf-8");
        ((Map)localObject).put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
        ((Map)localObject).put(EncodeHintType.MARGIN, Integer.valueOf(1));
        localObject = new QRCodeWriter().encode(paramString, BarcodeFormat.QR_CODE, paramInt1, paramInt2, (Map)localObject);
        paramString = new int[paramInt1 * paramInt2];
        i = 0;
        if (i >= paramInt2)
        {
          localObject = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
          ((Bitmap)localObject).setPixels(paramString, 0, paramInt1, 0, 0, paramInt1, paramInt2);
          return (Bitmap)localObject;
        }
      }
      catch (WriterException paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      j = 0;
    }
    for (;;)
    {
      if (j >= paramInt1)
      {
        i += 1;
        break;
      }
      if (((BitMatrix)localObject).get(j, i))
      {
        paramString[(i * paramInt1 + j)] = -16777216;
      }
      else
      {
        paramString[(i * paramInt1 + j)] = -1;
        break label186;
        label184:
        return null;
      }
      label186:
      j += 1;
    }
  }
  
  private static Bitmap generateImage(Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap1.getWidth(), paramBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawBitmap(paramBitmap1, 0.0F, 0.0F, null);
    localCanvas.drawBitmap(paramBitmap2, paramInt1, paramInt2, null);
    localCanvas.save();
    localCanvas.restore();
    return localBitmap;
  }
  
  private static String getFileName(String paramString)
  {
    int i = paramString.lastIndexOf("/");
    int j = paramString.lastIndexOf(".");
    if ((i != -1) && (j != -1)) {
      return paramString.substring(i + 1, j);
    }
    return null;
  }
  
  private String getFileRoot(Context paramContext)
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      File localFile = paramContext.getExternalFilesDir(null);
      if (localFile != null) {
        return localFile.getAbsolutePath();
      }
    }
    return paramContext.getFilesDir().getAbsolutePath();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\GenerateQRCode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */