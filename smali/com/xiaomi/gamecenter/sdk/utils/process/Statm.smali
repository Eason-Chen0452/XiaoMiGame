.class final Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;
.super Lcom/xiaomi/gamecenter/sdk/utils/process/ProcFile;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/process/g;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/utils/process/g;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/process/ProcFile;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;->a:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/process/ProcFile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/process/Statm;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
