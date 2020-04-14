.class public Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->u:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->u:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->a(Landroid/content/Context;)V

    sput p2, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->b:I

    sput-object p3, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->k:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->e:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->o:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->i:Ljava/lang/String;

    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->j:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getBaseVersion()I

    move-result v0

    if-gez v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->m:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcn/com/wali/basetool/utils/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->h:Ljava/lang/String;

    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcn/com/wali/basetool/utils/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v0}, Lcn/com/wali/basetool/utils/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v4, "resolution"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "androidIdMd5"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serialMd5"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->r:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/r;->a()Lcom/xiaomi/gamecenter/sdk/utils/r;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/r;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->s:Ljava/lang/String;

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->t:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->l:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->f:Ljava/lang/String;

    :cond_6
    :goto_6
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getBaseVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static c()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->u:J

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->b:I

    return v0
.end method

.method public static i()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a:J

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->n:Ljava/lang/String;

    return-object v0
.end method
