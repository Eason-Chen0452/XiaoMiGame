.class Lchannel/SSWrapper$15;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Lchannel/SSWrapper$initCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchannel/SSWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lchannel/SSWrapper;


# direct methods
.method constructor <init>(Lchannel/SSWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lchannel/SSWrapper;

    .prologue
    .line 261
    iput-object p1, p0, Lchannel/SSWrapper$15;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 265
    const-string v1, "init_callback"

    invoke-static {v1, p1}, Lchannel/Opensdk;->JsonWithInfo(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 266
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lchannel/SSWrapper$15;->this$0:Lchannel/SSWrapper;

    invoke-virtual {v1, p1, v0}, Lchannel/SSWrapper;->tgInitCallback(ILorg/json/JSONObject;)V

    .line 267
    return-void
.end method
