.class public Lcom/xiaomi/accountsdk/request/PassportRequestArguments;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/xiaomi/accountsdk/utils/EasyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->b:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->c:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->e:Z

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/accountsdk/request/PassportRequestArguments;
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->b:Lcom/xiaomi/accountsdk/utils/EasyMap;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->b:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->c:Lcom/xiaomi/accountsdk/utils/EasyMap;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->c:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->f:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->e:Z

    iput-boolean v1, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->e:Z

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->g:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->c:Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    return-void
.end method
