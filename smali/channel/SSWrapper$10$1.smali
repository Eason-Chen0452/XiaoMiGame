.class Lchannel/SSWrapper$10$1;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$10;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$10;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$10;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$10;

    .prologue
    .line 168
    iput-object p1, p0, Lchannel/SSWrapper$10$1;->this$1:Lchannel/SSWrapper$10;

    iput-object p2, p0, Lchannel/SSWrapper$10$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lchannel/SSWrapper$10$1;->this$1:Lchannel/SSWrapper$10;

    iget-object v0, v0, Lchannel/SSWrapper$10;->this$0:Lchannel/SSWrapper;

    iget-object v1, p0, Lchannel/SSWrapper$10$1;->val$json:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lchannel/SSWrapper;->onEnterServer(Lorg/json/JSONObject;)V

    .line 172
    return-void
.end method
