.class public abstract Lcom/xiaomi/greendao/test/DbTest;
.super Landroid/test/AndroidTestCase;


# instance fields
.field private a:Landroid/app/Application;

.field protected final f:Ljava/util/Random;

.field protected final g:Z

.field protected h:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/greendao/test/DbTest;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    iput-boolean p1, p0, Lcom/xiaomi/greendao/test/DbTest;->g:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->f:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    iget-boolean v0, p0, Lcom/xiaomi/greendao/test/DbTest;->g:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "greendao-unittest-db.temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/xiaomi/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "greendao-unittest-db.temp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    const-string v0, "Application not yet created"

    iget-object v1, p0, Lcom/xiaomi/greendao/test/DbTest;->a:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/xiaomi/greendao/test/DbTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->a:Landroid/app/Application;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/test/DbTest;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-boolean v0, p0, Lcom/xiaomi/greendao/test/DbTest;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "greendao-unittest-db.temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_1
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    return-void
.end method
