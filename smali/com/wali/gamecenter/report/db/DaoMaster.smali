.class public Lcom/wali/gamecenter/report/db/DaoMaster;
.super Lcom/xiaomi/greendao/AbstractDaoMaster;


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/greendao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    const-class v0, Lcom/wali/gamecenter/report/db/ReportDataDao;

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wali/gamecenter/report/db/ReportDataDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wali/gamecenter/report/db/ReportDataDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method


# virtual methods
.method public newSession()Lcom/wali/gamecenter/report/db/DaoSession;
    .locals 4

    new-instance v0, Lcom/wali/gamecenter/report/db/DaoSession;

    iget-object v1, p0, Lcom/wali/gamecenter/report/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->Session:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/wali/gamecenter/report/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/wali/gamecenter/report/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/xiaomi/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lcom/xiaomi/greendao/identityscope/IdentityScopeType;)Lcom/wali/gamecenter/report/db/DaoSession;
    .locals 3

    new-instance v0, Lcom/wali/gamecenter/report/db/DaoSession;

    iget-object v1, p0, Lcom/wali/gamecenter/report/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/wali/gamecenter/report/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/wali/gamecenter/report/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/xiaomi/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lcom/xiaomi/greendao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/db/DaoMaster;->newSession()Lcom/wali/gamecenter/report/db/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lcom/xiaomi/greendao/identityscope/IdentityScopeType;)Lcom/xiaomi/greendao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/wali/gamecenter/report/db/DaoMaster;->newSession(Lcom/xiaomi/greendao/identityscope/IdentityScopeType;)Lcom/wali/gamecenter/report/db/DaoSession;

    move-result-object v0

    return-object v0
.end method
