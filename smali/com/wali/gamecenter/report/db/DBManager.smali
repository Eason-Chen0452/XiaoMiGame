.class public Lcom/wali/gamecenter/report/db/DBManager;
.super Ljava/lang/Object;


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "report2.db"

.field private static sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

.field private static sDaoMaster:Lcom/wali/gamecenter/report/db/DaoMaster;

.field private static sDaoSession:Lcom/wali/gamecenter/report/db/DaoSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaoSession()Lcom/wali/gamecenter/report/db/DaoSession;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDaoSession:Lcom/wali/gamecenter/report/db/DaoSession;

    return-object v0
.end method

.method public static getReadableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getReportDao()Lcom/wali/gamecenter/report/db/ReportDataDao;
    .locals 1

    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getDaoSession()Lcom/wali/gamecenter/report/db/DaoSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getDaoSession()Lcom/wali/gamecenter/report/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/DaoSession;->getReportDataDao()Lcom/wali/gamecenter/report/db/ReportDataDao;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWritableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    const-string v1, "report2.db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDB:Lcom/wali/gamecenter/report/db/DaoMaster$DevOpenHelper;

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/db/DaoMaster;

    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDaoMaster:Lcom/wali/gamecenter/report/db/DaoMaster;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDaoMaster:Lcom/wali/gamecenter/report/db/DaoMaster;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDaoMaster:Lcom/wali/gamecenter/report/db/DaoMaster;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/DaoMaster;->newSession()Lcom/wali/gamecenter/report/db/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/wali/gamecenter/report/db/DBManager;->sDaoSession:Lcom/wali/gamecenter/report/db/DaoSession;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
