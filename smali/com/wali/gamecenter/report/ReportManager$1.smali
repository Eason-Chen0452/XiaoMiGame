.class Lcom/wali/gamecenter/report/ReportManager$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/wali/gamecenter/report/ReportManager;


# direct methods
.method constructor <init>(Lcom/wali/gamecenter/report/ReportManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/ReportManager$1;->this$0:Lcom/wali/gamecenter/report/ReportManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->access$000()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->forceSendReport()V

    :cond_0
    return-void
.end method
