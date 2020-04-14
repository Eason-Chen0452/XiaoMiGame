.class public final Lcom/xiaomi/greendao/query/b;
.super Lcom/xiaomi/greendao/query/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/query/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/xiaomi/greendao/query/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/query/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaomi/greendao/query/j;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/query/j",
            "<TT;>;",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/xiaomi/greendao/query/g;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/b;->f:Lcom/xiaomi/greendao/query/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/greendao/query/j;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/greendao/query/b;-><init>(Lcom/xiaomi/greendao/query/j;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/greendao/query/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/greendao/query/b",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/greendao/query/j;

    invoke-static {p2}, Lcom/xiaomi/greendao/query/b;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaomi/greendao/query/j;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;B)V

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/j;->a()Lcom/xiaomi/greendao/query/g;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/b;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/b;->d()V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/b;->a:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/b;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    const-string v2, "No result for count"

    invoke-direct {v0, v2}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected row count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected column count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2
.end method
