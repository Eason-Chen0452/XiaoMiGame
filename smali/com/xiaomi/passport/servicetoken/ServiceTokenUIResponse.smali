.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/c;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/c;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->a:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->a:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->a:Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    invoke-interface {v0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
