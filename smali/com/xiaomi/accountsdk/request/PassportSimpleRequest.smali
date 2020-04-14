.class public abstract Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;,
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;
    }
.end annotation


# instance fields
.field protected final b:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    return-void
.end method
