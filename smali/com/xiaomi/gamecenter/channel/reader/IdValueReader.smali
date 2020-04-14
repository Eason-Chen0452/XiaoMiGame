.class public Lcom/xiaomi/gamecenter/channel/reader/IdValueReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllIdValueMap(Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSigningBlock(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not have apk signature block"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByteBufferValueById(Ljava/io/File;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/reader/IdValueReader;->getAllIdValueMap(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static getByteValueById(Ljava/io/File;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/reader/IdValueReader;->getByteBufferValueById(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringValueById(Ljava/io/File;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/reader/IdValueReader;->getByteValueById(Ljava/io/File;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    array-length v2, v0

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Decrypt([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
