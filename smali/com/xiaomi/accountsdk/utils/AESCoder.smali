.class public Lcom/xiaomi/accountsdk/utils/AESCoder;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/utils/AESCoder;-><init>([B)V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "aes key is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const-string v0, "AESCoder"

    const-string v1, "aesKey is invalid"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESCoder;->a:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
