.class public Lcom/aonesoft/lib/AoneMD5;
.super Ljava/lang/Object;
.source "AoneMD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 7
    const/16 v10, 0x10

    new-array v2, v10, [C

    fill-array-data v2, :array_0

    .line 9
    .local v2, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 10
    .local v4, "in":[B
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 11
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 13
    .local v8, "out":[B
    array-length v7, v8

    .line 14
    .local v7, "len":I
    mul-int/lit8 v10, v7, 0x2

    new-array v9, v10, [C

    .line 15
    .local v9, "str1":[C
    const/4 v5, 0x0

    .line 16
    .local v5, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 20
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    .line 24
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    .end local v4    # "in":[B
    .end local v6    # "index":I
    .end local v7    # "len":I
    .end local v8    # "out":[B
    .end local v9    # "str1":[C
    :goto_1
    return-object v10

    .line 17
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "i":I
    .restart local v4    # "in":[B
    .restart local v6    # "index":I
    .restart local v7    # "len":I
    .restart local v8    # "out":[B
    .restart local v9    # "str1":[C
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    aget-byte v10, v8, v3

    ushr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v2, v10

    aput-char v10, v9, v6

    .line 18
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    aget-byte v10, v8, v3

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v2, v10

    aput-char v10, v9, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    .end local v4    # "in":[B
    .end local v6    # "index":I
    .end local v7    # "len":I
    .end local v8    # "out":[B
    .end local v9    # "str1":[C
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const/4 v10, 0x0

    goto :goto_1

    .line 7
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static md5_bytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 31
    .local v2, "in":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 32
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 36
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "in":[B
    :goto_0
    return-object v3

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static md5_bytes([B)[B
    .locals 3
    .param p0, "in"    # [B

    .prologue
    .line 42
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method
