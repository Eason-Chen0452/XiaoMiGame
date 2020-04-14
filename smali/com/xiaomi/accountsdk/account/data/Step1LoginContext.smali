.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

.field private b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/k;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->a()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNotificationLoginContext;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextNoneLoginContext;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
