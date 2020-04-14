.class public final Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;
    }
.end annotation


# static fields
.field public static a:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->b()V

    return-void
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;

    iget-object v2, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->c:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "noticetaskfile"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;

    invoke-direct {v5, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v5, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->c:Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private c()V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "noticetaskfile"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;

    iget-object v4, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->c:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;

    iget-object v2, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean p3, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->c:Z

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;)V

    iput-object p1, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->b:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper$NoticeTaskInfo;->c:Z

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
