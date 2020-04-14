.class public interface abstract Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRspOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetAppAccountsRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccounts(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;
.end method

.method public abstract getAccountsCount()I
.end method

.method public abstract getAccountsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountsOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVoOrBuilder;
.end method

.method public abstract getAccountsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultAccountId()J
.end method

.method public abstract getRetCode()I
.end method

.method public abstract hasDefaultAccountId()Z
.end method

.method public abstract hasRetCode()Z
.end method
