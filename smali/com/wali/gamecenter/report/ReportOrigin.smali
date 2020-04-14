.class public Lcom/wali/gamecenter/report/ReportOrigin;
.super Ljava/lang/Object;


# static fields
.field public static final ORIGIN_CATEGORY:Ljava/lang/String; = "category"

.field public static final ORIGIN_DISCOVERY:Ljava/lang/String; = "discovery"

.field public static final ORIGIN_NEWGAME:Ljava/lang/String; = "new_game"

.field public static final ORIGIN_NEWS:Ljava/lang/String; = "news"

.field public static final ORIGIN_NEW_RECOMMEND:Ljava/lang/String; = "new_home_recommend"

.field public static final ORIGIN_OTHER:Ljava/lang/String; = "other"

.field public static final ORIGIN_PERSONAL:Ljava/lang/String; = "personal"

.field public static final ORIGIN_RANK:Ljava/lang/String; = "rank"

.field public static final ORIGIN_SEARCH:Ljava/lang/String; = "search"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2

    const-string v0, "origin"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getOrigin(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "origin"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "origin"

    const-string v2, "other"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "origin"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
