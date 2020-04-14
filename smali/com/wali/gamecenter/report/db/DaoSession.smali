.class public Lcom/wali/gamecenter/report/db/DaoSession;
.super Lcom/xiaomi/greendao/AbstractDaoSession;


# instance fields
.field private final reportDataDao:Lcom/wali/gamecenter/report/db/ReportDataDao;

.field private final reportDataDaoConfig:Lcom/xiaomi/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/xiaomi/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/xiaomi/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;>;",
            "Lcom/xiaomi/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const-class v0, Lcom/wali/gamecenter/report/db/ReportDataDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/internal/DaoConfig;->a()Lcom/xiaomi/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDaoConfig:Lcom/xiaomi/greendao/internal/DaoConfig;

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDaoConfig:Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lcom/xiaomi/greendao/internal/DaoConfig;->a(Lcom/xiaomi/greendao/identityscope/IdentityScopeType;)V

    new-instance v0, Lcom/wali/gamecenter/report/db/ReportDataDao;

    iget-object v1, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDaoConfig:Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/wali/gamecenter/report/db/ReportDataDao;-><init>(Lcom/xiaomi/greendao/internal/DaoConfig;Lcom/wali/gamecenter/report/db/DaoSession;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDao:Lcom/wali/gamecenter/report/db/ReportDataDao;

    const-class v0, Lcom/wali/gamecenter/report/db/ReportData;

    iget-object v1, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDao:Lcom/wali/gamecenter/report/db/ReportDataDao;

    invoke-virtual {p0, v0, v1}, Lcom/wali/gamecenter/report/db/DaoSession;->registerDao(Ljava/lang/Class;Lcom/xiaomi/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDaoConfig:Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/internal/DaoConfig;->b()Lcom/xiaomi/greendao/identityscope/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/greendao/identityscope/a;->a()V

    return-void
.end method

.method public getReportDataDao()Lcom/wali/gamecenter/report/db/ReportDataDao;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/DaoSession;->reportDataDao:Lcom/wali/gamecenter/report/db/ReportDataDao;

    return-object v0
.end method
