.class public abstract Lcom/mi/milink/sdk/client/MiLinkObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/data/Const$Event;
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInternalError(ILjava/lang/String;)V
.end method

.method public abstract onLoginStateUpdate(I)V
.end method

.method public abstract onServerStateUpdate(II)V
.end method

.method public abstract onServiceConnected(J)V
.end method

.method public abstract onSuicideTime(I)V
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "MiLinkObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/os/Message;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Landroid/os/Message;

    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    iget v0, p2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onSuicideTime(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p2, Landroid/os/Message;->arg1:I

    iget v1, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onServerStateUpdate(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onServiceConnected(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event.extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :pswitch_4
    iget v1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onInternalError(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "event.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    iget v0, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onLoginStateUpdate(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
