.class public Lcom/wali/gamecenter/report/db/ReportDataDao$Properties;
.super Ljava/lang/Object;


# static fields
.field public static final Id:Lcom/xiaomi/greendao/Property;

.field public static final Method:Lcom/xiaomi/greendao/Property;

.field public static final Param:Lcom/xiaomi/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/xiaomi/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/wali/gamecenter/report/db/ReportDataDao$Properties;->Id:Lcom/xiaomi/greendao/Property;

    new-instance v3, Lcom/xiaomi/greendao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "method"

    const-string v8, "METHOD"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/wali/gamecenter/report/db/ReportDataDao$Properties;->Method:Lcom/xiaomi/greendao/Property;

    new-instance v2, Lcom/xiaomi/greendao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "param"

    const-string v7, "PARAM"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/wali/gamecenter/report/db/ReportDataDao$Properties;->Param:Lcom/xiaomi/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
