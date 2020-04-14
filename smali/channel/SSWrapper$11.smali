.class Lchannel/SSWrapper$11;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Lchannel/adapter/IGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper;->registerListeners(Lchannel/adapter/GameAdapter;)V
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
    .line 177
    iput-object p1, p0, Lchannel/SSWrapper$11;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    move-object v0, p2

    .line 181
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lchannel/SSWrapper$11;->this$0:Lchannel/SSWrapper;

    iget-object v1, v1, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v2, Lchannel/SSWrapper$11$1;

    invoke-direct {v2, p0, v0}, Lchannel/SSWrapper$11$1;-><init>(Lchannel/SSWrapper$11;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
