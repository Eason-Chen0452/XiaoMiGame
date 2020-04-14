.class Lchannel/SSWrapper$12;
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
    .line 190
    iput-object p1, p0, Lchannel/SSWrapper$12;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 193
    iget-object v0, p0, Lchannel/SSWrapper$12;->this$0:Lchannel/SSWrapper;

    iget-object v0, v0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$12$1;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$12$1;-><init>(Lchannel/SSWrapper$12;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
