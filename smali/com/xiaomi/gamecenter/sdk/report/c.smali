.class final Lcom/xiaomi/gamecenter/sdk/report/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->a:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->i:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c()V

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;->setId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->setId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->setLoginType(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->setPayType(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->setErrCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->i:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventBack(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/util/List;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the statistic event info is BACK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the statistic event info is VIEW "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "plb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.ReportData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "items "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/report/c;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
