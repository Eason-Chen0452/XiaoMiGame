.class Lchannel/SSWrapper$13$1;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$13;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$13;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$13;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$13;

    .prologue
    .line 204
    iput-object p1, p0, Lchannel/SSWrapper$13$1;->this$1:Lchannel/SSWrapper$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lchannel/SSWrapper$13$1;->this$1:Lchannel/SSWrapper$13;

    iget-object v0, v0, Lchannel/SSWrapper$13;->this$0:Lchannel/SSWrapper;

    invoke-virtual {v0}, Lchannel/SSWrapper;->onPlayVideos()V

    .line 208
    return-void
.end method
