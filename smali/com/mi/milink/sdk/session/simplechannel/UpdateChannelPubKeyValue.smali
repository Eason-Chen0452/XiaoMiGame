.class public Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;
.super Ljava/lang/Object;


# instance fields
.field private channelNewPubkey:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

.field private mRequeset:Lcom/mi/milink/sdk/session/common/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelNewPubkey()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->channelNewPubkey:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public getmRequeset()Lcom/mi/milink/sdk/session/common/Request;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    return-object v0
.end method

.method public setChannelNewPubkey(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->channelNewPubkey:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-void
.end method

.method public setmRequeset(Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    return-void
.end method
