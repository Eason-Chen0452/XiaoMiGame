.class Lchannel/SSWrapper$9$1;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$9;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$9;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$9;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$9;

    .prologue
    .line 155
    iput-object p1, p0, Lchannel/SSWrapper$9$1;->this$1:Lchannel/SSWrapper$9;

    iput-object p2, p0, Lchannel/SSWrapper$9$1;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lchannel/SSWrapper$9$1;->this$1:Lchannel/SSWrapper$9;

    iget-object v0, v0, Lchannel/SSWrapper$9;->this$0:Lchannel/SSWrapper;

    iget-object v1, p0, Lchannel/SSWrapper$9$1;->val$json:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lchannel/SSWrapper;->onRoleLevelUp(Lorg/json/JSONObject;)V

    .line 159
    return-void
.end method
