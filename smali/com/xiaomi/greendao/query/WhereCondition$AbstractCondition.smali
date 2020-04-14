.class public abstract Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/greendao/query/f;


# instance fields
.field protected final a:Z

.field protected final b:Ljava/lang/Object;

.field protected final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->a:Z

    iput-object v1, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->a:Z

    iput-object p1, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/WhereCondition$AbstractCondition;->c:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
