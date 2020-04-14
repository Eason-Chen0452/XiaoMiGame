.class public Lcom/xiaomi/hy/dj/f/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "VisitorID"

.field private static volatile b:Lcom/xiaomi/hy/dj/f/o; = null

.field private static c:Ljava/lang/String; = null

.field private static final d:Ljava/lang/String; = ".DataId"

.field private static final e:Ljava/lang/String; = ".DCIM_ID"

.field private static final f:Ljava/lang/String; = "knights_union_id"

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static i:Landroid/content/SharedPreferences;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android"

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DataId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCIM"

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DCIM_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    sput-object v2, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/hy/dj/f/o;->j:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/hy/dj/f/o;
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->b:Lcom/xiaomi/hy/dj/f/o;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call VisitorID.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->b:Lcom/xiaomi/hy/dj/f/o;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->b:Lcom/xiaomi/hy/dj/f/o;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/hy/dj/f/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->b:Lcom/xiaomi/hy/dj/f/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hy/dj/f/o;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/f/o;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->b:Lcom/xiaomi/hy/dj/f/o;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    const-class v1, Lcom/xiaomi/hy/dj/f/o;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const-string v0, "VisitorID"

    const-string v1, "Please call VisitorID.init() first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    const-string v1, "knights_union_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VisitorID"

    const-string v1, "new devices,create only id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "knights_union_id"

    sget-object v2, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "VisitorID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save mUnionId SharePref:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const-string v0, "VisitorID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result mUnionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VisitorID"

    const-string v1, "Android directory was not found in UUID, from the DCIM directory to take out UUID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VisitorID"

    const-string v1, "DCIM directory was not found in UUID, from the Android directory to take out UUID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sget-boolean v0, Lcom/xiaomi/hy/dj/f/o;->j:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/hy/dj/f/o;->j:Z

    goto/16 :goto_2
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->i:Landroid/content/SharedPreferences;

    const-string v2, "knights_union_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/hy/dj/f/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/hy/dj/f/o;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/hy/dj/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
