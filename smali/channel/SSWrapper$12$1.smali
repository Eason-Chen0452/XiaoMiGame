.class Lchannel/SSWrapper$12$1;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper$12;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lchannel/SSWrapper$12;


# direct methods
.method constructor <init>(Lchannel/SSWrapper$12;)V
    .locals 0
    .param p1, "this$1"    # Lchannel/SSWrapper$12;

    .prologue
    .line 193
    iput-object p1, p0, Lchannel/SSWrapper$12$1;->this$1:Lchannel/SSWrapper$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method
