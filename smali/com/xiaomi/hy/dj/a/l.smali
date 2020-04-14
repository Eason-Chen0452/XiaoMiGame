.class final Lcom/xiaomi/hy/dj/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xiaomi/hy/dj/a/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/hy/dj/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/a/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/a/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/hy/dj/a/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/hy/dj/a/l;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/hy/dj/a/l;->e:Lcom/xiaomi/hy/dj/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/l;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->setDevAppId(J)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->setDeviceNo(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    invoke-static {}, Lcom/xiaomi/hy/dj/c/b;->a()Lcom/xiaomi/hy/dj/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/hy/dj/a/l;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/hy/dj/c/b;->a()Lcom/xiaomi/hy/dj/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/a/l;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->build()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/hy/dj/c/b;->a(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp;->parseFrom([B)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printToString(Lcom/google/protobuf/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/hy/dj/a/m;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/hy/dj/a/m;-><init>(Lcom/xiaomi/hy/dj/a/l;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/a/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/a/p;-><init>(Lcom/xiaomi/hy/dj/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/a/n;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/a/n;-><init>(Lcom/xiaomi/hy/dj/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/a/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/a/o;-><init>(Lcom/xiaomi/hy/dj/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/a/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/a/q;-><init>(Lcom/xiaomi/hy/dj/a/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
