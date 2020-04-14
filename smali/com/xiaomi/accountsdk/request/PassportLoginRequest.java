package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.PassportCAConstants;
import com.xiaomi.accountsdk.account.b;
import com.xiaomi.accountsdk.account.data.MetaLoginData;
import com.xiaomi.accountsdk.utils.AccountLog;
import com.xiaomi.accountsdk.utils.EasyMap;
import java.util.UUID;

public abstract class PassportLoginRequest
  extends PassportRequest
{
  private final PassportRequest a;
  
  public PassportLoginRequest(PassportRequestArguments paramPassportRequestArguments)
  {
    PassportSimpleRequest localPassportSimpleRequest = a(paramPassportRequestArguments);
    b localb = b.b();
    Object localObject = str1;
    if (localb != null)
    {
      if (localb.a()) {
        break label68;
      }
      localObject = str1;
    }
    while (localObject == null)
    {
      AccountLog.e("PassportLoginRequest", String.format("CA-Request not ready for login %s, fallback to https way", new Object[] { a() }));
      this.a = localPassportSimpleRequest;
      return;
      label68:
      String str2 = b.a(paramPassportRequestArguments.f);
      localObject = str1;
      if (str2 != null)
      {
        localObject = PassportCAConstants.a;
        paramPassportRequestArguments = paramPassportRequestArguments.a();
        str1 = (String)paramPassportRequestArguments.a.get("sid");
        paramPassportRequestArguments.a(str2);
        paramPassportRequestArguments.a("_ver", (String)localObject);
        paramPassportRequestArguments.a.remove("sid");
        paramPassportRequestArguments.a("_sid", str1);
        paramPassportRequestArguments.d.a("_ver", localObject);
        paramPassportRequestArguments.d.a("_sid", str1);
        paramPassportRequestArguments.b("x-mistats-header", UUID.randomUUID().toString());
        localObject = new d(this, a(localb, paramPassportRequestArguments), localPassportSimpleRequest);
      }
    }
    this.a = ((PassportRequest)localObject);
  }
  
  protected abstract PassportCARequest a(b paramb, PassportRequestArguments paramPassportRequestArguments);
  
  protected abstract PassportSimpleRequest a(PassportRequestArguments paramPassportRequestArguments);
  
  protected abstract String a();
  
  public static class ByPassToken
    extends PassportLoginRequest
  {
    public ByPassToken(PassportRequestArguments paramPassportRequestArguments)
    {
      super();
    }
    
    protected final PassportCARequest a(b paramb, PassportRequestArguments paramPassportRequestArguments)
    {
      return new PassportCARequest(new PassportSimpleRequest.GetAsString(paramPassportRequestArguments), paramb);
    }
    
    protected final PassportSimpleRequest a(PassportRequestArguments paramPassportRequestArguments)
    {
      return new PassportSimpleRequest.GetAsString(paramPassportRequestArguments);
    }
    
    protected final String a()
    {
      return "byPassToken";
    }
  }
  
  public static class ByPassword
    extends PassportLoginRequest
  {
    private final String a;
    private final String b;
    private final MetaLoginData c;
    
    public ByPassword(PassportRequestArguments paramPassportRequestArguments, String paramString1, String paramString2, MetaLoginData paramMetaLoginData)
    {
      super();
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramMetaLoginData;
    }
    
    protected final PassportCARequest a(b paramb, PassportRequestArguments paramPassportRequestArguments)
    {
      return new PassportCARequest(new PassportSimpleRequest.PostAsString(paramPassportRequestArguments), paramb);
    }
    
    protected final PassportSimpleRequest a(PassportRequestArguments paramPassportRequestArguments)
    {
      return new e(this, paramPassportRequestArguments);
    }
    
    protected final String a()
    {
      return "byPassword";
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportLoginRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */