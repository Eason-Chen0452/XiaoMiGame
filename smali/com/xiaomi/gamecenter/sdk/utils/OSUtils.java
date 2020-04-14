package com.xiaomi.gamecenter.sdk.utils;

import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class OSUtils
{
  private static final ROM a = ;
  
  public static ROM a()
  {
    return a;
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  private static ROM b()
  {
    int i = 0;
    ROM localROM6 = ROM.Other;
    Object localObject1 = localROM6;
    boolean bool;
    try
    {
      if (TextUtils.isEmpty(a("ro.miui.ui.version.name")))
      {
        localObject1 = localROM6;
        if (TextUtils.isEmpty(a("ro.miui.ui.version.code"))) {}
      }
      else
      {
        localObject1 = localROM6;
        localROM6 = ROM.MIUI;
        localObject1 = localROM6;
        Object localObject2 = a("ro.miui.ui.version.name");
        localObject1 = localROM6;
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject1 = localROM6;
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            localObject1 = localROM6;
            bool = ((String)localObject2).matches("[Vv]\\d+");
            if (!bool) {}
          }
        }
        try
        {
          localROM6.a(Integer.parseInt(localObject2.split("[Vv]")[1]));
          localObject1 = localROM6;
          str = a("ro.build.version.incremental");
          localObject1 = localROM6;
          localObject2 = localROM6;
          if (TextUtils.isEmpty(str)) {
            break label1900;
          }
          localObject1 = localROM6;
          localObject2 = localROM6;
          if (TextUtils.isEmpty(str)) {
            break label1900;
          }
          localObject1 = localROM6;
          localObject2 = localROM6;
          if (!str.matches("[\\d.]+")) {
            break label1900;
          }
          localObject1 = localROM6;
          localROM6.a(str);
          return localROM6;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            localObject1 = localROM6;
            localException1.printStackTrace();
          }
        }
      }
      localObject1 = localROM6;
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
      return (ROM)localObject1;
    }
    if (TextUtils.isEmpty(a("ro.product.rom.name")))
    {
      localObject1 = localROM6;
      if (!"joyui".equalsIgnoreCase(a("ro.product.rom.name"))) {}
    }
    else
    {
      localObject1 = localROM6;
      localROM1 = ROM.JOYUI;
      localObject1 = localROM1;
      localROM1.a(a("ro.product.rom.verision"));
      localObject1 = localROM1;
      a("ro.build.id");
      return localROM1;
    }
    localObject1 = localROM6;
    if (TextUtils.isEmpty(a("ro.build.version.emui")))
    {
      localObject1 = localROM6;
      if (TextUtils.isEmpty(a("ro.build.hw_emui_api_level")))
      {
        localObject1 = localROM6;
        if (TextUtils.isEmpty(a("ro.confg.hw_systemversion"))) {
          break label407;
        }
      }
    }
    localObject1 = localROM6;
    localROM6 = ROM.EMUI;
    localObject1 = localROM6;
    String str = a("ro.build.version.emui");
    localObject1 = localROM6;
    ROM localROM1 = localROM6;
    label407:
    label710:
    label888:
    label1050:
    label1352:
    label1401:
    Object localObject4;
    if (!TextUtils.isEmpty(str))
    {
      localObject1 = localROM6;
      Matcher localMatcher = Pattern.compile("EmotionUI_([\\d.]+)").matcher(str);
      localObject1 = localROM6;
      localROM1 = localROM6;
      if (!TextUtils.isEmpty(str))
      {
        localObject1 = localROM6;
        bool = localMatcher.find();
        localROM1 = localROM6;
        if (bool)
        {
          try
          {
            localObject1 = localMatcher.group(1);
            localROM6.a((String)localObject1);
            localROM6.a(Integer.parseInt(localObject1.split("\\.")[0]));
            return localROM6;
          }
          catch (Exception localException3)
          {
            localObject1 = localROM6;
            localException3.printStackTrace();
            return localROM6;
          }
          localObject1 = localROM6;
          if (TextUtils.isEmpty(a("ro.meizu.setupwizard.flyme")))
          {
            localObject1 = localROM6;
            if (TextUtils.isEmpty(a("ro.flyme.published"))) {}
          }
          else
          {
            localObject1 = localROM6;
            localROM6 = ROM.Flyme;
            localObject1 = localROM6;
            str = a("ro.build.display.id");
            localObject1 = localROM6;
            ROM localROM2 = localROM6;
            if (TextUtils.isEmpty(str)) {
              break label1900;
            }
            localObject1 = localROM6;
            localMatcher = Pattern.compile("Flyme[^\\d]*([\\d.]+)[^\\d]*").matcher(str);
            localObject1 = localROM6;
            localROM2 = localROM6;
            if (TextUtils.isEmpty(str)) {
              break label1900;
            }
            localObject1 = localROM6;
            bool = localMatcher.find();
            localROM2 = localROM6;
            if (!bool) {
              break label1900;
            }
            try
            {
              localObject1 = localMatcher.group(1);
              localROM6.a((String)localObject1);
              localROM6.a(Integer.parseInt(localObject1.split("\\.")[0]));
              return localROM6;
            }
            catch (Exception localException4)
            {
              localObject1 = localROM6;
              localException4.printStackTrace();
              return localROM6;
            }
          }
          localObject1 = localROM6;
          if (TextUtils.isEmpty(a("ro.oppo.theme.version")))
          {
            localObject1 = localROM6;
            if (TextUtils.isEmpty(a("ro.oppo.version")))
            {
              localObject1 = localROM6;
              if (TextUtils.isEmpty(a("ro.build.version.opporom"))) {
                break label710;
              }
            }
          }
          localObject1 = localROM6;
          str = a("ro.build.version.opporom");
          localObject1 = localROM6;
          localROM6 = ROM.ColorOS;
          localObject1 = localROM6;
          Object localObject3 = localROM6;
          if (!TextUtils.isEmpty(str))
          {
            localObject1 = localROM6;
            localObject3 = Pattern.compile("ColorOS([\\d.]+)").matcher(str);
            localObject1 = localROM6;
            bool = ((Matcher)localObject3).find();
            if (bool) {
              try
              {
                localObject1 = ((Matcher)localObject3).group(1);
                localROM6.a((String)localObject1);
                localROM6.a(Integer.parseInt(localObject1.split("\\.")[0]));
                return localROM6;
              }
              catch (Exception localException5)
              {
                localObject1 = localROM6;
                localException5.printStackTrace();
                return localROM6;
              }
            }
            localObject1 = localROM6;
            localROM6.a(str);
            return localROM6;
            localObject1 = localROM6;
            if (!TextUtils.isEmpty(a("ro.smartisan.version")))
            {
              localObject1 = localROM6;
              localROM3 = ROM.SmartisanOS;
              localObject1 = localROM3;
              localROM3.a(a("ro.smartisan.version"));
              return localROM3;
            }
            localObject1 = localROM6;
            if (TextUtils.isEmpty(a("ro.vivo.os.name")))
            {
              localObject1 = localROM6;
              if (TextUtils.isEmpty(a("ro.vivo.os.version")))
              {
                localObject1 = localROM6;
                if (TextUtils.isEmpty(a("ro.vivo.os.build.display.id"))) {
                  break label888;
                }
              }
            }
            localObject1 = localROM6;
            localROM6 = ROM.FuntouchOS;
            localObject1 = localROM6;
            str = a("ro.vivo.os.version");
            localObject1 = localROM6;
            ROM localROM3 = localROM6;
            if (!TextUtils.isEmpty(str))
            {
              localObject1 = localROM6;
              localROM3 = localROM6;
              if (!TextUtils.isEmpty(str))
              {
                localObject1 = localROM6;
                bool = str.matches("[\\d.]+");
                localROM3 = localROM6;
                if (bool)
                {
                  try
                  {
                    localROM6.a(str);
                    localROM6.a(Integer.parseInt(str.split("\\.")[0]));
                    return localROM6;
                  }
                  catch (Exception localException6)
                  {
                    localObject1 = localROM6;
                    localException6.printStackTrace();
                    return localROM6;
                  }
                  localObject1 = localROM6;
                  if (TextUtils.isEmpty(a("ro.letv.release.version")))
                  {
                    localObject1 = localROM6;
                    if (TextUtils.isEmpty(a("ro.product.letv_name")))
                    {
                      localObject1 = localROM6;
                      if (TextUtils.isEmpty(a("ro.product.letv_model"))) {
                        break label1050;
                      }
                    }
                  }
                  localObject1 = localROM6;
                  localROM6 = ROM.EUI;
                  localObject1 = localROM6;
                  str = a("ro.letv.release.version");
                  localObject1 = localROM6;
                  ROM localROM4 = localROM6;
                  if (!TextUtils.isEmpty(str))
                  {
                    localObject1 = localROM6;
                    localMatcher = Pattern.compile("([\\d.]+)[^\\d]*").matcher(str);
                    localObject1 = localROM6;
                    localROM4 = localROM6;
                    if (!TextUtils.isEmpty(str))
                    {
                      localObject1 = localROM6;
                      bool = localMatcher.find();
                      localROM4 = localROM6;
                      if (bool)
                      {
                        try
                        {
                          localObject1 = localMatcher.group(1);
                          localROM6.a((String)localObject1);
                          localROM6.a(Integer.parseInt(localObject1.split("\\.")[0]));
                          return localROM6;
                        }
                        catch (Exception localException7)
                        {
                          localObject1 = localROM6;
                          localException7.printStackTrace();
                          return localROM6;
                        }
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("ro.gn.gnromvernumber")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.gn.amigo.systemui.support"))) {}
                        }
                        else
                        {
                          localObject1 = localROM6;
                          localROM6 = ROM.AmigoOS;
                          localObject1 = localROM6;
                          str = a("ro.build.display.id");
                          localObject1 = localROM6;
                          ROM localROM5 = localROM6;
                          if (TextUtils.isEmpty(str)) {
                            break label1900;
                          }
                          localObject1 = localROM6;
                          localMatcher = Pattern.compile("amigo([\\d.]+)[a-zA-Z]*").matcher(str);
                          localObject1 = localROM6;
                          localROM5 = localROM6;
                          if (TextUtils.isEmpty(str)) {
                            break label1900;
                          }
                          localObject1 = localROM6;
                          bool = localMatcher.find();
                          localROM5 = localROM6;
                          if (!bool) {
                            break label1900;
                          }
                          try
                          {
                            localObject1 = localMatcher.group(1);
                            localROM6.a((String)localObject1);
                            localROM6.a(Integer.parseInt(localObject1.split("\\.")[0]));
                            return localROM6;
                          }
                          catch (Exception localException8)
                          {
                            localObject1 = localROM6;
                            localException8.printStackTrace();
                            return localROM6;
                          }
                        }
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("ro.sony.irremote.protocol_type")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.sony.fota.encrypteddata"))) {}
                        }
                        else
                        {
                          localObject1 = localROM6;
                          return ROM.Sony;
                        }
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("ro.yulong.version.release")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.yulong.version.tag"))) {}
                        }
                        else
                        {
                          localObject1 = localROM6;
                          return ROM.YuLong;
                        }
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("htc.build.stage")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.htc.bluetooth.sap"))) {}
                        }
                        else
                        {
                          localObject1 = localROM6;
                          return ROM.Sense;
                        }
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("ro.lge.swversion")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.lge.swversion_short")))
                          {
                            localObject1 = localROM6;
                            if (TextUtils.isEmpty(a("ro.lge.factoryversion"))) {
                              break label1352;
                            }
                          }
                        }
                        localObject1 = localROM6;
                        return ROM.LG;
                        localObject1 = localROM6;
                        if (TextUtils.isEmpty(a("ro.lenovo.device")))
                        {
                          localObject1 = localROM6;
                          if (TextUtils.isEmpty(a("ro.lenovo.platform")))
                          {
                            localObject1 = localROM6;
                            if (TextUtils.isEmpty(a("ro.lenovo.adb"))) {
                              break label1401;
                            }
                          }
                        }
                        localObject1 = localROM6;
                        return ROM.Lenovo;
                        localObject1 = localROM6;
                        if (!TextUtils.isEmpty(a("ro.com.google.clientidbase")))
                        {
                          localObject1 = localROM6;
                          localObject4 = a("ro.com.google.clientidbase");
                          localObject1 = localROM6;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    switch (((String)localObject4).hashCode())
    {
    case -811278887: 
      localObject1 = localROM6;
      return ROM.MIUI;
      localObject1 = localROM6;
      if (!((String)localObject4).equals("android-xiaomi")) {
        break;
      }
      break;
    case -1037975490: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-oppo")) {
        i = 1;
      }
      break;
    case -1037773494: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-vivo")) {
        i = 2;
      }
      break;
    case 259783324: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-samsung")) {
        i = 3;
      }
      break;
    case -64814069: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-sonyericsson")) {
        i = 4;
      }
      break;
    case -652932276: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-coolpad")) {
        i = 5;
      }
      break;
    case -380192433: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-htc-rev")) {
        i = 6;
      }
      break;
    case -1158135215: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-lenovo")) {
        i = 7;
      }
      break;
    case -1297558593: 
      localObject1 = localROM6;
      if (((String)localObject4).equals("android-gionee"))
      {
        i = 8;
        break label1904;
        localObject1 = localROM6;
        return ROM.ColorOS;
        localObject1 = localROM6;
        return ROM.FuntouchOS;
        localObject1 = localROM6;
        return ROM.SamSung;
        localObject1 = localROM6;
        return ROM.Sony;
        localObject1 = localROM6;
        return ROM.YuLong;
        localObject1 = localROM6;
        return ROM.Sense;
        localObject1 = localROM6;
        return ROM.Lenovo;
        localObject1 = localROM6;
        return ROM.AmigoOS;
        localObject1 = localROM6;
        if (!TextUtils.isEmpty(a("ro.build.display.id")))
        {
          localObject1 = localROM6;
          str = a("ro.build.display.id");
          localObject1 = localROM6;
          localObject4 = localROM6;
          if (!TextUtils.isEmpty(str))
          {
            localObject1 = localROM6;
            if (str.contains("Flyme"))
            {
              localObject1 = localROM6;
              return ROM.Flyme;
            }
            localObject1 = localROM6;
            localObject4 = localROM6;
            if (str.contains("amigo"))
            {
              localObject1 = localROM6;
              return ROM.AmigoOS;
            }
          }
        }
        else
        {
          localObject1 = localROM6;
          localObject4 = localROM6;
          if (!TextUtils.isEmpty(a("ro.build.version.base_os")))
          {
            localObject1 = localROM6;
            localObject4 = localROM6;
            if (!TextUtils.isEmpty(a("ro.build.version.base_os")))
            {
              localObject1 = localROM6;
              if (!TextUtils.isEmpty(a("OPPO")))
              {
                localObject1 = localROM6;
                return ROM.ColorOS;
              }
              localObject1 = localROM6;
              localObject4 = localROM6;
              if (!TextUtils.isEmpty(a("samsung")))
              {
                localObject1 = localROM6;
                localObject4 = ROM.SamSung;
              }
            }
          }
        }
        label1900:
        return (ROM)localObject4;
      }
      break;
    }
    i = -1;
    label1904:
    switch (i)
    {
    }
    return localROM6;
  }
  
  public static enum ROM
  {
    private int a = -1;
    private String b;
    
    static
    {
      Flyme = new ROM("Flyme", 1);
      EMUI = new ROM("EMUI", 2);
      ColorOS = new ROM("ColorOS", 3);
      FuntouchOS = new ROM("FuntouchOS", 4);
      SmartisanOS = new ROM("SmartisanOS", 5);
      EUI = new ROM("EUI", 6);
      Sense = new ROM("Sense", 7);
      AmigoOS = new ROM("AmigoOS", 8);
      Qiku360OS = new ROM("Qiku360OS", 9);
      NubiaUI = new ROM("NubiaUI", 10);
      H2OS = new ROM("H2OS", 11);
      YunOS = new ROM("YunOS", 12);
      YuLong = new ROM("YuLong", 13);
      SamSung = new ROM("SamSung", 14);
      Sony = new ROM("Sony", 15);
      Lenovo = new ROM("Lenovo", 16);
      LG = new ROM("LG", 17);
    }
    
    private ROM() {}
    
    final void a(int paramInt)
    {
      this.a = paramInt;
    }
    
    final void a(String paramString)
    {
      this.b = paramString;
    }
    
    public final int getBaseVersion()
    {
      return this.a;
    }
    
    public final String getVersion()
    {
      return this.b;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\OSUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */