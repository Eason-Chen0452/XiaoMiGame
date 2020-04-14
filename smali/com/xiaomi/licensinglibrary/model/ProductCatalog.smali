.class public Lcom/xiaomi/licensinglibrary/model/ProductCatalog;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:J

.field f:Ljava/util/Date;

.field g:Ljava/util/Date;

.field h:Ljava/util/Locale;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->e:J

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->c:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->d:I

    iput-wide p5, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->e:J

    iput-object p7, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->f:Ljava/util/Date;

    iput-object p8, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->g:Ljava/util/Date;

    iput-object p9, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->h:Ljava/util/Locale;

    iput-object p10, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->e:J

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->c:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->d:I

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->e:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->f:Ljava/util/Date;

    invoke-virtual {v0, p7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->g:Ljava/util/Date;

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v3, p8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->h:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-object p9, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/xiaomi/licensinglibrary/model/ProductCatalog;->j:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method
