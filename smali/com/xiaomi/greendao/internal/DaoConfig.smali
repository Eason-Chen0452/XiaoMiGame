.class public final Lcom/xiaomi/greendao/internal/DaoConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Ljava/lang/String;

.field public final c:[Lcom/xiaomi/greendao/Property;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Lcom/xiaomi/greendao/Property;

.field public final h:Z

.field public final i:Lcom/xiaomi/greendao/internal/TableStatements;

.field private j:Lcom/xiaomi/greendao/identityscope/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/identityscope/a",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->a:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    const-string v0, "TABLENAME"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/greendao/internal/DaoConfig;->a(Ljava/lang/Class;)[Lcom/xiaomi/greendao/Property;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->c:[Lcom/xiaomi/greendao/Property;

    array-length v0, v6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->d:[Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    move-object v1, v4

    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_1

    aget-object v0, v6, v5

    iget-object v9, v0, Lcom/xiaomi/greendao/Property;->e:Ljava/lang/String;

    iget-object v10, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->d:[Ljava/lang/String;

    aput-object v9, v10, v5

    iget-boolean v10, v0, Lcom/xiaomi/greendao/Property;->d:Z

    if-eqz v10, :cond_0

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->f:[Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_3

    :goto_2
    iput-object v1, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->g:Lcom/xiaomi/greendao/Property;

    new-instance v0, Lcom/xiaomi/greendao/internal/TableStatements;

    iget-object v1, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->e:[Ljava/lang/String;

    invoke-direct {v0, p1, v1, v4, v5}, Lcom/xiaomi/greendao/internal/TableStatements;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->i:Lcom/xiaomi/greendao/internal/TableStatements;

    iget-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->g:Lcom/xiaomi/greendao/Property;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->g:Lcom/xiaomi/greendao/Property;

    iget-object v0, v0, Lcom/xiaomi/greendao/Property;->b:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->h:Z

    :goto_4
    return-void

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/greendao/DaoException;

    const-string v2, "Could not init DAOConfig"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/xiaomi/greendao/internal/DaoConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->c:[Lcom/xiaomi/greendao/Property;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->c:[Lcom/xiaomi/greendao/Property;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->d:[Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->e:[Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->f:[Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->g:Lcom/xiaomi/greendao/Property;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->g:Lcom/xiaomi/greendao/Property;

    iget-object v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->i:Lcom/xiaomi/greendao/internal/TableStatements;

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->i:Lcom/xiaomi/greendao/internal/TableStatements;

    iget-boolean v0, p1, Lcom/xiaomi/greendao/internal/DaoConfig;->h:Z

    iput-boolean v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->h:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)[Lcom/xiaomi/greendao/Property;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<**>;>;)[",
            "Lcom/xiaomi/greendao/Property;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/xiaomi/greendao/Property;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/xiaomi/greendao/Property;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/xiaomi/greendao/Property;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/Property;

    iget v3, v0, Lcom/xiaomi/greendao/Property;->a:I

    aget-object v3, v1, v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    const-string v1, "Duplicate property ordinals"

    invoke-direct {v0, v1}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v3, v0, Lcom/xiaomi/greendao/Property;->a:I

    aput-object v0, v1, v3

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/xiaomi/greendao/internal/DaoConfig;
    .locals 1

    new-instance v0, Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-direct {v0, p0}, Lcom/xiaomi/greendao/internal/DaoConfig;-><init>(Lcom/xiaomi/greendao/internal/DaoConfig;)V

    return-object v0
.end method

.method public final a(Lcom/xiaomi/greendao/identityscope/IdentityScopeType;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->None:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->j:Lcom/xiaomi/greendao/identityscope/a;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->Session:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;

    invoke-direct {v0}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->j:Lcom/xiaomi/greendao/identityscope/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeObject;

    invoke-direct {v0}, Lcom/xiaomi/greendao/identityscope/IdentityScopeObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->j:Lcom/xiaomi/greendao/identityscope/a;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/xiaomi/greendao/identityscope/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/identityscope/a",
            "<**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->j:Lcom/xiaomi/greendao/identityscope/a;

    return-void
.end method

.method public final b()Lcom/xiaomi/greendao/identityscope/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/greendao/identityscope/a",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/internal/DaoConfig;->j:Lcom/xiaomi/greendao/identityscope/a;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/greendao/internal/DaoConfig;->a()Lcom/xiaomi/greendao/internal/DaoConfig;

    move-result-object v0

    return-object v0
.end method
