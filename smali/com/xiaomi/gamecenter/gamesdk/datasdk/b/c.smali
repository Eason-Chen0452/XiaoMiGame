.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

.field private static e:I

.field private static f:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->b:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/e;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/e;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->c:Landroid/app/Application;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->c:Landroid/app/Application;

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    return-void
.end method

.method static synthetic b()I
    .locals 2

    sget v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    return v0
.end method

.method static synthetic d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    return-object v0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e:I

    return v0
.end method
