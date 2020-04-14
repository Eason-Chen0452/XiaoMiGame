.class public Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private isMainAcitivity:Z

.field private packageName:Ljava/lang/String;

.field private type:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/e;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/e;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->type:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    return-object v0
.end method

.method public isMainAcitivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->isMainAcitivity:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->activity:Ljava/lang/String;

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public setIsMainAcitivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->isMainAcitivity:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->type:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LifecycleInfo{packageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->type:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMainAcitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->isMainAcitivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->getActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->getType()Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->isMainAcitivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
