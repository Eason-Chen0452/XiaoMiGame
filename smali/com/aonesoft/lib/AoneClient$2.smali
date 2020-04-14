.class Lcom/aonesoft/lib/AoneClient$2;
.super Ljava/lang/Object;
.source "AoneClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneClient;->recordDevicePoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$sPoint:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aonesoft/lib/AoneClient$2;->val$sPoint:I

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/aonesoft/lib/AoneClient$2;->val$sPoint:I

    invoke-static {v0}, Lcom/aonesoft/lib/AoneClient;->access$1(I)V

    .line 541
    return-void
.end method
