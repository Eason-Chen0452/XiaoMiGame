.class public Lcom/xiaomi/greendao/query/WhereCondition$StringCondition;
.super Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;


# instance fields
.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/WhereCondition$StringCondition;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/WhereCondition$StringCondition;->d:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/WhereCondition$StringCondition;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$StringCondition;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
