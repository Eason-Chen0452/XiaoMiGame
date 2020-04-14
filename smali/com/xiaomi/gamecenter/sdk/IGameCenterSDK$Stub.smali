.class public abstract Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

.field static final TRANSACTION_ConnService:I = 0x1

.field static final TRANSACTION_ConnServiceNew:I = 0x31

.field static final TRANSACTION_acceptAllMessage:I = 0x15

.field static final TRANSACTION_acceptMessage:I = 0x14

.field static final TRANSACTION_appExit:I = 0x2f

.field static final TRANSACTION_authAccount:I = 0x34

.field static final TRANSACTION_canPayForWX:I = 0x33

.field static final TRANSACTION_checkJoinedUnion:I = 0x26

.field static final TRANSACTION_checkMiTalkStatus:I = 0x24

.field static final TRANSACTION_checkVipIsScubscribed:I = 0x28

.field static final TRANSACTION_deleteMe:I = 0x1c

.field static final TRANSACTION_exchangeInfo:I = 0x36

.field static final TRANSACTION_getDeviceID:I = 0x35

.field static final TRANSACTION_getFuid:I = 0x38

.field static final TRANSACTION_getMilinkProps:I = 0x39

.field static final TRANSACTION_getRemoteViews:I = 0xc

.field static final TRANSACTION_getUnionList:I = 0x2a

.field static final TRANSACTION_getVipList:I = 0x2b

.field static final TRANSACTION_isMiAccountLogin:I = 0x30

.field static final TRANSACTION_joinUnion:I = 0x25

.field static final TRANSACTION_lifecycleCallback:I = 0x37

.field static final TRANSACTION_loadGameFriends:I = 0x10

.field static final TRANSACTION_loadGameInfo:I = 0xe

.field static final TRANSACTION_loadGameMe:I = 0xf

.field static final TRANSACTION_loadGameMessage:I = 0x13

.field static final TRANSACTION_loadLeaderBoard:I = 0x19

.field static final TRANSACTION_loadLotteryPrize:I = 0x1d

.field static final TRANSACTION_messageBlock:I = 0x1a

.field static final TRANSACTION_miCardPay:I = 0x6

.field static final TRANSACTION_miGetAccountInfo:I = 0x7

.field static final TRANSACTION_miLogin:I = 0x2

.field static final TRANSACTION_miLogout:I = 0x3

.field static final TRANSACTION_miPayForWX:I = 0x32

.field static final TRANSACTION_miUniPay:I = 0xd

.field static final TRANSACTION_miUniPayOffline:I = 0x4

.field static final TRANSACTION_miUniPayOnline:I = 0x5

.field static final TRANSACTION_miWindow:I = 0xb

.field static final TRANSACTION_openAppReport:I = 0xa

.field static final TRANSACTION_openAppReportForInit:I = 0x2e

.field static final TRANSACTION_openMiTalkUpdateSite:I = 0x2c

.field static final TRANSACTION_registCallback:I = 0x8

.field static final TRANSACTION_sendGameMessage:I = 0x12

.field static final TRANSACTION_sendInviteMessage:I = 0x1b

.field static final TRANSACTION_sendInviteMessageNew:I = 0x23

.field static final TRANSACTION_sendLogToService:I = 0x1f

.field static final TRANSACTION_sendTextMsgToFriend:I = 0x29

.field static final TRANSACTION_shareToMiTalkForImgAndUrl:I = 0x2d

.field static final TRANSACTION_shareToMiliao:I = 0x1e

.field static final TRANSACTION_shareToMiliaoForLargeImg:I = 0x22

.field static final TRANSACTION_subscribeVip:I = 0x27

.field static final TRANSACTION_syncResult:I = 0x20

.field static final TRANSACTION_syncResults:I = 0x21

.field static final TRANSACTION_unregistCallBack:I = 0x9

.field static final TRANSACTION_updateMe:I = 0x11

.field static final TRANSACTION_updateResult:I = 0x17

.field static final TRANSACTION_updateResults:I = 0x18

.field static final TRANSACTION_useHeart:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->ConnService(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    move v0, v9

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_1

    :cond_1
    move v0, v10

    goto :goto_2

    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miLogout(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    move-object v1, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPayOffline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v5

    goto :goto_4

    :cond_5
    move-object v0, v5

    goto :goto_5

    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    move-object v1, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPayOnline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v5

    goto :goto_6

    :cond_7
    move-object v0, v5

    goto :goto_7

    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    move-object v1, v0

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_9
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miCardPay(Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v5

    goto :goto_8

    :cond_9
    move-object v0, v5

    goto :goto_9

    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miGetAccountInfo(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->registCallback(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->unregistCallBack(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openAppReport(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move-object v0, v5

    goto :goto_a

    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miWindow()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPay(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v5

    goto :goto_b

    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameFriends()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateMe(II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_11

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v2, v9

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendGameMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I[B[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_12
    move v2, v10

    goto :goto_c

    :cond_13
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->acceptMessage(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->acceptAllMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v9

    :goto_d
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->useHeart(IZ)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_18

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_17
    move v0, v10

    goto :goto_d

    :cond_18
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateResult(Ljava/lang/String;II[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_19

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1a

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadLeaderBoard(Ljava/lang/String;II)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v9

    :goto_e
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->messageBlock(Z)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1d

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1c
    move v0, v10

    goto :goto_e

    :cond_1d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    move v2, v9

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-object v5, v0

    :cond_1e
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendInviteMessage(Ljava/lang/String;ZLjava/lang/String;[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_20

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1f
    move v2, v10

    goto :goto_f

    :cond_20
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->deleteMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_21

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadLotteryPrize()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_22

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiliao(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_24

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_23
    move-object v0, v5

    goto :goto_10

    :cond_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendLogToService(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->syncResult(Ljava/lang/String;II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_25

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->syncResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_26

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_11
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiliaoForLargeImg(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_28

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_27
    move-object v0, v5

    goto :goto_11

    :cond_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_12
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendInviteMessageNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2a

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_29
    move-object v0, v5

    goto :goto_12

    :cond_2a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkMiTalkStatus()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2b

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2d

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->subscribeVip(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2e

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2f

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendTextMsgToFriend()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_30

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_30
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getUnionList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_31

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_31
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getVipList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_32

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_32
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openMiTalkUpdateSite()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-object v5, v0

    :cond_33
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiTalkForImgAndUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_34

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_34
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openAppReportForInit(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_35
    move-object v0, v5

    goto :goto_13

    :sswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->appExit()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->isMiAccountLogin()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_36
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->ConnServiceNew(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_37
    move-object v0, v5

    goto :goto_14

    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    :goto_15
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miPayForWX(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_38
    move-object v0, v5

    goto :goto_15

    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_16
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->canPayForWX(Landroid/os/Bundle;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_39

    move v10, v9

    :cond_39
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3a
    move-object v0, v5

    goto :goto_16

    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    move v10, v9

    :cond_3b
    invoke-virtual {p0, v10}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->authAccount(Z)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    :goto_17
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->exchangeInfo(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;)Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3d

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3c
    move-object v0, v5

    goto :goto_17

    :cond_3d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;

    :goto_18
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->lifecycleCallback(Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3e
    move-object v0, v5

    goto :goto_18

    :sswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getFuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getMilinkProps(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3f

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
