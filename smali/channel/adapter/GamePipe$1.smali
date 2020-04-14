.class final Lchannel/adapter/GamePipe$1;
.super Ljava/lang/Object;
.source "GamePipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/adapter/GamePipe;->PushToGameWithEidAndCode(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code_:I

.field final synthetic val$eid_:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lchannel/adapter/GamePipe$1;->val$eid_:Ljava/lang/String;

    iput p2, p0, Lchannel/adapter/GamePipe$1;->val$code_:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lchannel/adapter/GamePipe$1;->val$eid_:Ljava/lang/String;

    iget v1, p0, Lchannel/adapter/GamePipe$1;->val$code_:I

    invoke-static {v0, v1}, Lchannel/adapter/GamePipe;->JsonWithEidAndCode(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lchannel/adapter/GamePipe;->ToGame(Lorg/json/JSONObject;)V

    .line 31
    return-void
.end method
