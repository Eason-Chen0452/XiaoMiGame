package com.xiaomi.gamecenter.sdk.milink;

public class LoginBaseEvent
{
  public static class DefaultEvent
  {
    private int a;
    private String b;
    private int c = -1;
    
    public DefaultEvent(int paramInt1, String paramString, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramString;
    }
  }
  
  public static class ReportEvent
  {
    private int a;
    private int b;
    private String c;
    private String d;
    
    public ReportEvent(int paramInt1, int paramInt2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
    }
    
    public ReportEvent(int paramInt1, int paramInt2, String paramString1, String paramString2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramString1;
      this.d = paramString2;
    }
  }
  
  public static class ShowTipDialogEvent
  {
    private int a;
    private String b;
    
    public ShowTipDialogEvent(int paramInt, String paramString)
    {
      this.a = paramInt;
      this.b = paramString;
    }
  }
  
  public static class StartLoginEvent
  {
    private int a;
    private boolean b = false;
    
    public StartLoginEvent(int paramInt, boolean paramBoolean)
    {
      this.a = paramInt;
      this.b = paramBoolean;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\LoginBaseEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */