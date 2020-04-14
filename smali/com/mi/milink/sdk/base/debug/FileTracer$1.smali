.class Lcom/mi/milink/sdk/base/debug/FileTracer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/base/debug/FileTracer;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/base/debug/FileTracer;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/debug/FileTracer$1;->this$0:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/debug/FileTracer$1;->this$0:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->cleanWorkFolders()V

    return-void
.end method
