.class public abstract Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

.field static final TRANSACTION_installFromFile:I = 0x2

.field static final TRANSACTION_uploadInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "com.xiaomi.gamecenter.for3thd.migame.IMiGamePluginStat"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/for3thd/IInstallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/for3thd/IInstallCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/gamecenter/sdk/for3thd/migame/IMiGamePluginStat$Stub;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/for3thd/IInstallCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
