.class public Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addChannel , param invalid, channel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , destApk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Encrypt(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v1, 0x4d494859    # 2.11060112E8f

    invoke-static {p0, p1, v1, v0}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValue(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addChannel(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;->addChannel(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static addChannel(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0, p0, p1}, Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;->addChannel(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static addChannelToZipComment(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeChannel(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static addChannelToZipComment(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeChannel(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static addV3Channel(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addChannel , param invalid, channel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , destApk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;->putRaw(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteChannelForV2(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x4d494859    # 2.11060112E8f

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->deleteIdValue(Ljava/io/File;I)V

    return-void
.end method

.method public static deleteChannelForV3(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x4d494859    # 2.11060112E8f

    invoke-static {p0, v0, p1}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->remove(Ljava/io/File;IZ)V

    return-void
.end method

.method public static putRaw(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x4d494859    # 2.11060112E8f

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->put(Ljava/io/File;ILjava/lang/String;Z)V

    return-void
.end method
