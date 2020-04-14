.class public Lcom/aonesoft/lib/AoneInstallation;
.super Ljava/lang/Object;
.source "AoneInstallation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static final INSTALLATION_PATH:Ljava/lang/String; = "/AOne"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/aonesoft/lib/AoneInstallation;->sID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-class v5, Lcom/aonesoft/lib/AoneInstallation;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/aonesoft/lib/AoneInstallation;->sID:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "dir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/AOne"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 36
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "INSTALLATION"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .local v3, "installation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    invoke-static {v3}, Lcom/aonesoft/lib/AoneInstallation;->writeInstallationFile(Ljava/io/File;)V

    .line 40
    :cond_1
    invoke-static {v3}, Lcom/aonesoft/lib/AoneInstallation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/aonesoft/lib/AoneInstallation;->sID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "dirFile":Ljava/io/File;
    .end local v3    # "installation":Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v4, Lcom/aonesoft/lib/AoneInstallation;->sID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 41
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v1    # "dirFile":Ljava/io/File;
    .restart local v3    # "installation":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "dirFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "installation":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 50
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 51
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 52
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 3
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 59
    return-void
.end method
