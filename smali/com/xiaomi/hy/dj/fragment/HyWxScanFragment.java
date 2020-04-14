package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.hy.dj.b.a;
import java.lang.reflect.Method;
import java.util.Map;

public class HyWxScanFragment
  extends BaseFragment
{
  public static final String d = "HyWxScanFragment";
  private RelativeLayout e;
  private TextView f;
  private ImageView g;
  private String h;
  
  private void d(String paramString)
  {
    int i = 0;
    if (this.f != null)
    {
      if ((!TextUtils.isEmpty(this.h)) && (!"-1".equals(this.h))) {
        break label90;
      }
      this.f.setText(Html.fromHtml("请使用<font color=\"#fda13c\"> 微信 </font>扫码支付"));
    }
    for (;;)
    {
      if (this.g != null) {}
      try
      {
        Object localObject = Class.forName("com.xiaomi.hy.zxing.QRGenerator");
        Method[] arrayOfMethod = ((Class)localObject).getDeclaredMethods();
        int j = arrayOfMethod.length;
        for (;;)
        {
          if (i < j)
          {
            a.a(arrayOfMethod[i].getName());
            i += 1;
            continue;
            label90:
            localObject = String.format("%.02f", new Object[] { Float.valueOf((float)Long.parseLong(this.h) / 100.0F) });
            this.f.setText(Html.fromHtml("请使用<font color=\"#fda13c\"> 微信 </font>扫码支付<font color=\"#fda13c\">" + (String)localObject + " 元</font>"));
            break;
          }
        }
        paramString = (Bitmap)((Class)localObject).getMethod("create2DCode", new Class[] { String.class, Integer.TYPE }).invoke(localObject, new Object[] { paramString, Integer.valueOf(300) });
        this.g.setImageBitmap(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    this.b.dismiss();
    d(paramString2);
    a(paramString1, 300000L, 3000L);
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.h = ((String)paramMap.get("feeValue"));
    this.a.a("WXNATIVE");
  }
  
  public int b()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    if (i < j) {}
    for (;;)
    {
      return (int)(i / 1536.0F * 32.0F);
      i = j;
    }
  }
  
  public int c(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    if (i < j) {}
    for (;;)
    {
      return (int)(i / 1536.0F * paramInt);
      i = j;
    }
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(177);
      b(177);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.e = new RelativeLayout(getActivity());
    this.e.setBackgroundColor(-1579033);
    this.e.setGravity(17);
    return this.e;
  }
  
  public void onStop()
  {
    super.onStop();
    if (this.c != null)
    {
      this.c.cancel();
      this.c = null;
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    com.xiaomi.hy.dj.e.b.a().a(171);
    paramView = new LinearLayout(getActivity());
    paramView.setGravity(1);
    paramView.setOrientation(1);
    paramBundle = new RelativeLayout.LayoutParams(-1, -2);
    this.e.addView(paramView, paramBundle);
    this.f = new TextView(getActivity());
    this.f.setGravity(17);
    this.f.setTextColor(-16777216);
    this.f.setTextSize(b());
    paramBundle = new LinearLayout.LayoutParams(-1, -2);
    paramView.addView(this.f, paramBundle);
    this.g = new ImageView(getActivity());
    paramBundle = new LinearLayout.LayoutParams(c(800), c(800));
    paramBundle.topMargin = c(100);
    paramView.addView(this.g, paramBundle);
    getView().setFocusableInTouchMode(true);
    getView().requestFocus();
    getView().setOnKeyListener(new t(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyWxScanFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */