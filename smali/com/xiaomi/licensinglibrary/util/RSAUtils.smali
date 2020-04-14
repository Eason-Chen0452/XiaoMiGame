.class public Lcom/xiaomi/licensinglibrary/util/RSAUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x80

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v1, 0x2

    invoke-virtual {v4, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v5, p0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v3, v2

    :goto_0
    sub-int v0, v5, v3

    if-lez v0, :cond_1

    sub-int v0, v5, v3

    if-le v0, v7, :cond_0

    invoke-virtual {v4, p0, v3, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v3, v0

    invoke-virtual {v6, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit16 v3, v0, 0x80

    move v1, v0

    goto :goto_0

    :cond_0
    sub-int v0, v5, v3

    invoke-virtual {v4, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x75

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v5, p0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v3, v2

    :goto_0
    sub-int v0, v5, v3

    if-lez v0, :cond_1

    sub-int v0, v5, v3

    if-le v0, v7, :cond_0

    invoke-virtual {v4, p0, v3, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v3, v0

    invoke-virtual {v6, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v3, v0, 0x75

    move v1, v0

    goto :goto_0

    :cond_0
    sub-int v0, v5, v3

    invoke-virtual {v4, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0
.end method
