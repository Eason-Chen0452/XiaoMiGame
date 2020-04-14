.class public Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\d)\\.(\\d{1,2})\\.(\\d{1,2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a:I

    iput p2, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->b:I

    iput p3, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->c:I

    return-void
.end method

.method private a()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->c:I

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->b:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "another == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a()I

    move-result v0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    iget v2, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->b:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->c:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->c:I

    add-int/2addr v0, v1

    return v0
.end method
