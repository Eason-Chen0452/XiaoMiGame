.class public Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SessionId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j$a;->a()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :cond_0
    const-string v1, "SessionId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j$a;->a()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "SessionConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :cond_0
    return-object v0
.end method
