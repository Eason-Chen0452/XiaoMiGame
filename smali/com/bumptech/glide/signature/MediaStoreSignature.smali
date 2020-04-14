.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "dateModified"    # J
    .param p4, "orientation"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 32
    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 42
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 47
    .local v0, "that":Lcom/bumptech/glide/signature/MediaStoreSignature;
    iget-wide v4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v6, v0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget v3, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    iget v4, v0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_5
    iget-object v3, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 54
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 61
    iget-object v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 63
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int v0, v1, v2

    .line 64
    return v0

    .line 61
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .prologue
    .line 69
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 70
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    iget-object v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    sget-object v2, Lcom/bumptech/glide/signature/MediaStoreSignature;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    return-void
.end method
