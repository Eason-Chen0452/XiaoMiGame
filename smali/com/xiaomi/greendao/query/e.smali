.class public final Lcom/xiaomi/greendao/query/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final c:Lcom/xiaomi/greendao/query/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/query/l",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/StringBuilder;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/greendao/query/Join",
            "<TT;*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/greendao/query/e;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    iput-object p2, p0, Lcom/xiaomi/greendao/query/e;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/e;->f:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/greendao/query/l;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/greendao/query/l;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/e;->c:Lcom/xiaomi/greendao/query/l;

    return-void
.end method

.method public static a(Lcom/xiaomi/greendao/AbstractDao;)Lcom/xiaomi/greendao/query/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT2;*>;)",
            "Lcom/xiaomi/greendao/query/e",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/greendao/query/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/greendao/query/e;-><init>(Lcom/xiaomi/greendao/AbstractDao;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/greendao/query/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Built SQL for query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/greendao/DaoLog;->a(Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/xiaomi/greendao/query/e;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Values for query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/greendao/DaoLog;->a(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/Join;

    const-string v3, " JOIN "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaomi/greendao/query/Join;->b:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v4}, Lcom/xiaomi/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/greendao/query/Join;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/greendao/query/Join;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/greendao/query/Join;->c:Lcom/xiaomi/greendao/Property;

    invoke-static {p1, v3, v4}, Lcom/xiaomi/greendao/internal/SqlUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/xiaomi/greendao/Property;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/greendao/query/Join;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/greendao/query/Join;->d:Lcom/xiaomi/greendao/Property;

    invoke-static {p1, v3, v0}, Lcom/xiaomi/greendao/internal/SqlUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/xiaomi/greendao/Property;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->c:Lcom/xiaomi/greendao/query/l;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/l;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->c:Lcom/xiaomi/greendao/query/l;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v3}, Lcom/xiaomi/greendao/query/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/Join;

    iget-object v4, v0, Lcom/xiaomi/greendao/query/Join;->f:Lcom/xiaomi/greendao/query/l;

    invoke-virtual {v4}, Lcom/xiaomi/greendao/query/l;->a()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_4

    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_3
    iget-object v4, v0, Lcom/xiaomi/greendao/query/Join;->f:Lcom/xiaomi/greendao/query/l;

    iget-object v0, v0, Lcom/xiaomi/greendao/query/Join;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-virtual {v4, p1, v0, v5}, Lcom/xiaomi/greendao/query/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v4, " AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/greendao/query/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/greendao/query/d",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/greendao/query/e;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v3}, Lcom/xiaomi/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaomi/greendao/query/e;->k:Z

    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/greendao/internal/SqlUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->h:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/greendao/query/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " ORDER BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, " LIMIT ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->i:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->j:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->i:Ljava/lang/Integer;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset cannot be set without limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, " OFFSET ?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->j:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/greendao/query/e;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v4, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/xiaomi/greendao/query/d;->a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/xiaomi/greendao/query/d;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b()Lcom/xiaomi/greendao/query/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/greendao/query/b",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/greendao/internal/SqlUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/e;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/greendao/query/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/greendao/query/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/greendao/query/e;->g:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/greendao/query/b;->a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/greendao/query/b;

    move-result-object v0

    return-object v0
.end method
