.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameSignature"
.end annotation


# instance fields
.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>(Ljava/util/UUID;)V

    .line 312
    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    .line 317
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 321
    instance-of v1, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 322
    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    .line 323
    .local v0, "other":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 325
    .end local v0    # "other":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .prologue
    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
