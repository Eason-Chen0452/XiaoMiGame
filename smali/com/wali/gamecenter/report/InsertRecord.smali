.class public Lcom/wali/gamecenter/report/InsertRecord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private method:I

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    iput p2, p0, Lcom/wali/gamecenter/report/InsertRecord;->method:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0xc8

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iget v1, p0, Lcom/wali/gamecenter/report/InsertRecord;->method:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->reportLog()Lcom/wali/gamecenter/report/log/ReportLog;

    move-result-object v1

    const-string v2, "ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/wali/gamecenter/report/log/ReportLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "https://data.game.xiaomi.com/p.do"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send post data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/wali/gamecenter/report/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ReportManager"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ReportManager"

    const-string v2, "send post data success"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ReportManager"

    const-string v2, "send post data fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-static {v0}, Lcom/wali/gamecenter/report/ReportManager;->spiltReportToJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v3

    const-string v4, "post"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->reportLog()Lcom/wali/gamecenter/report/log/ReportLog;

    move-result-object v2

    const-string v3, "ReportManager"

    const-string v4, "report post error"

    invoke-virtual {v2, v3, v4, v0}, Lcom/wali/gamecenter/report/log/ReportLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-static {v0}, Lcom/wali/gamecenter/report/ReportManager;->spiltReportToJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v3

    const-string v4, "post"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :cond_9
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/wali/gamecenter/report/InsertRecord;->method:I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->reportLog()Lcom/wali/gamecenter/report/log/ReportLog;

    move-result-object v1

    const-string v2, "ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://data.game.xiaomi.com/1px.gif?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/wali/gamecenter/report/log/ReportLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send get data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://data.game.xiaomi.com/1px.gif?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_4
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "ReportManager"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d
    if-ne v2, v5, :cond_f

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ReportManager"

    const-string v2, "send get data success"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportManager;->reportLog()Lcom/wali/gamecenter/report/log/ReportLog;

    move-result-object v2

    const-string v3, "ReportManager"

    const-string v4, "report get error"

    invoke-virtual {v2, v3, v4, v0}, Lcom/wali/gamecenter/report/log/ReportLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v2

    const-string v3, "get"

    iget-object v4, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_7
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/ReportManager;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    throw v0

    :cond_f
    :try_start_8
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    const-string v2, "get"

    iget-object v3, p0, Lcom/wali/gamecenter/report/InsertRecord;->param:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method
