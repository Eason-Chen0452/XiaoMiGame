.class Lchannel/SSWrapper$6;
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
    .line 109
    iput-object p1, p0, Lchannel/SSWrapper$6;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 113
    :try_start_0
    const-string v1, "lang_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lchannel/SSWrapper;->LANG:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lchannel/SSWrapper$6;->this$0:Lchannel/SSWrapper;

    iget-object v1, v1, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v2, Lchannel/SSWrapper$6$1;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$6$1;-><init>(Lchannel/SSWrapper$6;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
