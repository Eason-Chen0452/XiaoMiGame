.class public Lcom/xiaomi/greendao/Property;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/greendao/Property;->a:I

    iput-object p2, p0, Lcom/xiaomi/greendao/Property;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/xiaomi/greendao/Property;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaomi/greendao/Property;->d:Z

    iput-object p5, p0, Lcom/xiaomi/greendao/Property;->e:Ljava/lang/String;

    return-void
.end method
