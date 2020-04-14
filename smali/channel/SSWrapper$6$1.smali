.class Lchannel/SSWrapper$6$1;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$6;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$6;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$6;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$6;

    .prologue
    .line 114
    iput-object p1, p0, Lchannel/SSWrapper$6$1;->this$1:Lchannel/SSWrapper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
