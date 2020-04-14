.class public Lcom/xiaomi/greendao/AbstractDaoSession;
.super Ljava/lang/Object;


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final entityToDao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public callInTxNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/greendao/DaoException;

    const-string v2, "Callable failed"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public getAllDaos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/AbstractDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No DAO registered for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TK;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBuilder(Ljava/lang/Class;)Lcom/xiaomi/greendao/query/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/xiaomi/greendao/query/e",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->queryBuilder()Lcom/xiaomi/greendao/query/e;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method protected registerDao(Ljava/lang/Class;Lcom/xiaomi/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runInTx(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/AbstractDaoSession;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public startAsyncSession()Lcom/xiaomi/greendao/async/AsyncSession;
    .locals 1

    new-instance v0, Lcom/xiaomi/greendao/async/AsyncSession;

    invoke-direct {v0, p0}, Lcom/xiaomi/greendao/async/AsyncSession;-><init>(Lcom/xiaomi/greendao/AbstractDaoSession;)V

    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void
.end method
