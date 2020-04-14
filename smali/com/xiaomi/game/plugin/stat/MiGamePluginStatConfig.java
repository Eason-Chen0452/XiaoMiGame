package com.xiaomi.game.plugin.stat;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;

public final class MiGamePluginStatConfig
{
  private final Context a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final ArrayList<String> f;
  private final boolean g;
  private final boolean h;
  
  private MiGamePluginStatConfig(Builder paramBuilder)
  {
    paramBuilder = a(paramBuilder);
    this.b = "2882303761517593007";
    this.c = "5911759359007";
    this.e = Builder.a(paramBuilder);
    this.a = Builder.b(paramBuilder);
    this.d = Builder.c(paramBuilder);
    this.f = Builder.d(paramBuilder);
    this.g = Builder.e(paramBuilder);
    this.h = Builder.f(paramBuilder);
  }
  
  public final Context a()
  {
    return this.a;
  }
  
  final Builder a(Builder paramBuilder)
  {
    if (Builder.b(paramBuilder) == null) {
      throw new IllegalStateException("非法的MiGamePluginStatParam 参数设置");
    }
    if (TextUtils.isEmpty(Builder.a(paramBuilder))) {
      Builder.a(paramBuilder, "default");
    }
    if (TextUtils.isEmpty(Builder.c(paramBuilder))) {
      Builder.b(paramBuilder, "1.0.0");
    }
    return paramBuilder;
  }
  
  public final String b()
  {
    return this.b;
  }
  
  public final String c()
  {
    return this.c;
  }
  
  public final String d()
  {
    return this.d;
  }
  
  public final String e()
  {
    return this.e;
  }
  
  public final ArrayList<String> f()
  {
    return this.f;
  }
  
  public final boolean g()
  {
    return this.g;
  }
  
  public final boolean h()
  {
    return this.h;
  }
  
  public static class Builder
  {
    private Context a;
    private String b;
    private String c;
    private ArrayList<String> d = new ArrayList();
    private boolean e = false;
    private boolean f = true;
    
    public MiGamePluginStatConfig build()
    {
      return new MiGamePluginStatConfig(this, null);
    }
    
    public Builder setChannel(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public Builder setContext(Context paramContext)
    {
      this.a = paramContext;
      return this;
    }
    
    public Builder setIsPromo(boolean paramBoolean)
    {
      this.f = paramBoolean;
      return this;
    }
    
    public Builder setJarVersion(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public Builder setMonitorPkgName(String paramString)
    {
      if (!TextUtils.isEmpty(paramString)) {
        this.d.add(paramString);
      }
      return this;
    }
    
    public Builder setReportDAU(boolean paramBoolean)
    {
      this.e = paramBoolean;
      return this;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\MiGamePluginStatConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */