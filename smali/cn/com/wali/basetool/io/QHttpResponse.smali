.class public Lcn/com/wali/basetool/io/QHttpResponse;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpResponse;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/wali/basetool/io/QHttpResponse;->c:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpResponse;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcn/com/wali/basetool/io/QHttpResponse;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcn/com/wali/basetool/io/QHttpResponse;->a:[B

    return-object v0
.end method
