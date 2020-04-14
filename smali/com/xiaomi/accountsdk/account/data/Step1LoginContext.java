package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.request.SimpleRequest.StringContent;

public class Step1LoginContext
  implements Parcelable
{
  public static final Parcelable.Creator<Step1LoginContext> CREATOR = new k();
  private NextStep a;
  private a b;
  
  private Step1LoginContext(Parcel paramParcel)
  {
    this.a = NextStep.valueOf(paramParcel.readString());
    if (this.a == NextStep.NOTIFICATION)
    {
      localObject = new NextNotificationLoginContext();
      ((NextNotificationLoginContext)localObject).a = paramParcel.readString();
      ((NextNotificationLoginContext)localObject).b = paramParcel.readString();
      ((NextNotificationLoginContext)localObject).c = new SimpleRequest.StringContent(paramParcel.readString());
      this.b = ((a)localObject);
    }
    do
    {
      return;
      if (this.a == NextStep.VERIFICATION)
      {
        localObject = new NextVerificationLoginContext();
        ((NextVerificationLoginContext)localObject).a = paramParcel.readString();
        ((NextVerificationLoginContext)localObject).b = new MetaLoginData(paramParcel.readString(), paramParcel.readString(), paramParcel.readString());
        ((NextVerificationLoginContext)localObject).c = paramParcel.readString();
        this.b = ((a)localObject);
        return;
      }
    } while (this.a != NextStep.NONE);
    Object localObject = new NextNoneLoginContext();
    ((NextNoneLoginContext)localObject).a = ((AccountInfo)paramParcel.readParcelable(getClass().getClassLoader()));
    this.b = ((a)localObject);
  }
  
  public Step1LoginContext(AccountInfo paramAccountInfo)
  {
    this.a = NextStep.NONE;
    NextNoneLoginContext localNextNoneLoginContext = new NextNoneLoginContext();
    localNextNoneLoginContext.a = paramAccountInfo;
    this.b = localNextNoneLoginContext;
  }
  
  public Step1LoginContext(Exception paramException)
  {
    Object localObject;
    if ((paramException instanceof NeedNotificationException))
    {
      paramException = (NeedNotificationException)paramException;
      this.a = NextStep.NOTIFICATION;
      localObject = new NextNotificationLoginContext();
      ((NextNotificationLoginContext)localObject).a = paramException.b();
      ((NextNotificationLoginContext)localObject).b = paramException.a();
      ((NextNotificationLoginContext)localObject).c = paramException.c();
      this.b = ((a)localObject);
      return;
    }
    if ((paramException instanceof NeedVerificationException))
    {
      paramException = (NeedVerificationException)paramException;
      this.a = NextStep.VERIFICATION;
      localObject = new NextVerificationLoginContext();
      ((NextVerificationLoginContext)localObject).a = paramException.c();
      ((NextVerificationLoginContext)localObject).b = paramException.a();
      ((NextVerificationLoginContext)localObject).c = paramException.b();
      this.b = ((a)localObject);
      return;
    }
    throw new IllegalArgumentException("Exception type " + paramException.getClass().getName() + " not supported. ");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a.name());
    Object localObject;
    if (this.a == NextStep.NOTIFICATION)
    {
      localObject = (NextNotificationLoginContext)this.b;
      paramParcel.writeString(((NextNotificationLoginContext)localObject).a);
      paramParcel.writeString(((NextNotificationLoginContext)localObject).b);
      paramParcel.writeString(((NextNotificationLoginContext)localObject).c.a());
    }
    do
    {
      return;
      if (this.a == NextStep.VERIFICATION)
      {
        localObject = (NextVerificationLoginContext)this.b;
        paramParcel.writeString(((NextVerificationLoginContext)localObject).a);
        paramParcel.writeString(((NextVerificationLoginContext)localObject).b.a);
        paramParcel.writeString(((NextVerificationLoginContext)localObject).b.b);
        paramParcel.writeString(((NextVerificationLoginContext)localObject).b.c);
        paramParcel.writeString(((NextVerificationLoginContext)localObject).c);
        return;
      }
    } while (this.a != NextStep.NONE);
    paramParcel.writeParcelable(((NextNoneLoginContext)this.b).a, paramInt);
  }
  
  public static class NextNoneLoginContext
    implements Step1LoginContext.a
  {
    public AccountInfo a;
  }
  
  public static class NextNotificationLoginContext
    implements Step1LoginContext.a
  {
    public String a;
    public String b;
    public SimpleRequest.StringContent c;
  }
  
  public static enum NextStep
  {
    private NextStep() {}
  }
  
  public static class NextVerificationLoginContext
    implements Step1LoginContext.a
  {
    public String a;
    public MetaLoginData b;
    public String c;
  }
  
  public static abstract interface a {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\Step1LoginContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */