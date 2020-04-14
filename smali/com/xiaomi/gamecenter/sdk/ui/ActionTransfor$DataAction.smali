.class public Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

.field public c:Landroid/os/Bundle;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_NONE:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iget v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
