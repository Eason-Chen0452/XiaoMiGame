.class Lcom/aonesoft/lib/AoneClient$1;
.super Ljava/lang/Object;
.source "AoneClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneClient;->queryPaynoStatus(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cpId:I

.field private final synthetic val$order:Ljava/lang/String;

.field private final synthetic val$resultListener:Lcom/aonesoft/lib/AoneResultListener;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aonesoft/lib/AoneClient$1;->val$cpId:I

    iput-object p2, p0, Lcom/aonesoft/lib/AoneClient$1;->val$order:Ljava/lang/String;

    iput-object p3, p0, Lcom/aonesoft/lib/AoneClient$1;->val$resultListener:Lcom/aonesoft/lib/AoneResultListener;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget v0, p0, Lcom/aonesoft/lib/AoneClient$1;->val$cpId:I

    iget-object v1, p0, Lcom/aonesoft/lib/AoneClient$1;->val$order:Ljava/lang/String;

    iget-object v2, p0, Lcom/aonesoft/lib/AoneClient$1;->val$resultListener:Lcom/aonesoft/lib/AoneResultListener;

    invoke-static {v0, v1, v2}, Lcom/aonesoft/lib/AoneClient;->access$0(ILjava/lang/String;Lcom/aonesoft/lib/AoneResultListener;)V

    .line 531
    return-void
.end method
