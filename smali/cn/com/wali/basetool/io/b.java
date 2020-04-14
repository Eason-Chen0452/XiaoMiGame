package cn.com.wali.basetool.io;

final class b
  extends Thread
{
  b(String paramString) {}
  
  public final void run()
  {
    try
    {
      HttpUtils.a(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\io\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */