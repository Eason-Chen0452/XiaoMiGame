.class Lmain/GameExt$2$1;
.super Ljava/lang/Object;
.source "GameExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameExt$2;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmain/GameExt$2;


# direct methods
.method constructor <init>(Lmain/GameExt$2;)V
    .locals 0
    .param p1, "this$0"    # Lmain/GameExt$2;

    .prologue
    .line 56
    iput-object p1, p0, Lmain/GameExt$2$1;->this$0:Lmain/GameExt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lchannel/Opensdk;->inst()Lchannel/Opensdk;

    move-result-object v0

    invoke-virtual {v0}, Lchannel/Opensdk;->onExit()V

    .line 60
    return-void
.end method
