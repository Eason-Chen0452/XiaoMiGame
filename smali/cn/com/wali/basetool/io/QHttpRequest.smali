.class public final Lcn/com/wali/basetool/io/QHttpRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/wali/basetool/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field private i:I


# direct methods
.method private constructor <init>(Ljava/lang/String;[BLcn/com/wali/basetool/io/QHttpRequest$RequestMethod;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->d:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->h:Z

    const/16 v0, 0x4e20

    iput v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->i:I

    iput-object p1, p0, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/wali/basetool/io/QHttpRequest;->d:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    if-eqz p2, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p4, "application/x-www-form-urlencoded"

    :cond_1
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    iget-object v1, p0, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->d:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->d:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    :cond_2
    iput-object p4, p0, Lcn/com/wali/basetool/io/QHttpRequest;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcn/com/wali/basetool/io/QHttpRequest;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;[BLjava/lang/String;Z)Lcn/com/wali/basetool/io/QHttpRequest;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    sget-object v0, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    if-ne p1, v0, :cond_3

    const-string v4, "application/x-www-form-urlencoded"

    :goto_1
    new-instance v0, Lcn/com/wali/basetool/io/QHttpRequest;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/basetool/io/QHttpRequest;-><init>(Ljava/lang/String;[BLcn/com/wali/basetool/io/QHttpRequest$RequestMethod;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v4, p3

    goto :goto_1
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/wali/basetool/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcn/com/wali/basetool/io/QHttpRequest;->i:I

    return v0
.end method
