.class public final Lcom/xiaomi/greendao/query/d;
.super Lcom/xiaomi/greendao/query/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/query/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final h:Lcom/xiaomi/greendao/query/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/query/k",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaomi/greendao/query/k;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/query/k",
            "<TT;>;",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/greendao/query/i;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/d;->h:Lcom/xiaomi/greendao/query/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/greendao/query/k;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IIB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/greendao/query/d;-><init>(Lcom/xiaomi/greendao/query/k;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/xiaomi/greendao/query/d;
    .locals 1
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
            "Lcom/xiaomi/greendao/query/d",
            "<TT2;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/xiaomi/greendao/query/d;->a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/xiaomi/greendao/query/d;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/xiaomi/greendao/query/d;
    .locals 6
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
            "II)",
            "Lcom/xiaomi/greendao/query/d",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/greendao/query/k;

    invoke-static {p2}, Lcom/xiaomi/greendao/query/d;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/greendao/query/k;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/k;->a()Lcom/xiaomi/greendao/query/g;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/d;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/xiaomi/greendao/query/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/greendao/query/d",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/query/d;->h:Lcom/xiaomi/greendao/query/k;

    invoke-virtual {v0, p0}, Lcom/xiaomi/greendao/query/k;->a(Lcom/xiaomi/greendao/query/g;)Lcom/xiaomi/greendao/query/g;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/d;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/d;->d()V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/d;->a:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/d;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/d;->b:Lcom/xiaomi/greendao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/InternalQueryDaoAccess;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/d;->d()V

    iget-object v0, p0, Lcom/xiaomi/greendao/query/d;->a:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/d;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/d;->b:Lcom/xiaomi/greendao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/InternalQueryDaoAccess;->c(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
