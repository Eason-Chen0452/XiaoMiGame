.class public abstract Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

.field static final TRANSACTION_removeAccount:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;->a()Z

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

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
