.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAuthResultEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/c;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/milink/c;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/gamecenter/sdk/utils/AccountType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->g:Z

    iput-object p8, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->h:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->h:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->h:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->g:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->h:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
