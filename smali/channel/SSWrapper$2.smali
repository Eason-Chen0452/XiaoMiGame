.class Lchannel/SSWrapper$2;
.super Ljava/lang/Object;
.source "SSWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchannel/SSWrapper;->onActivityPause(Z)V
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
    .line 59
    iput-object p1, p0, Lchannel/SSWrapper$2;->this$0:Lchannel/SSWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
