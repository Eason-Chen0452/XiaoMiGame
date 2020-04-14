.class public Lcom/bumptech/glide/load/MultiTransformation;
.super Ljava/lang/Object;
.source "MultiTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final transformations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p1, "transformationList":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/bumptech/glide/load/Transformation<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 32
    return-void
.end method

.method public varargs constructor <init>([Lcom/bumptech/glide/load/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    instance-of v1, p1, Lcom/bumptech/glide/load/MultiTransformation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/bumptech/glide/load/MultiTransformation;

    .line 53
    .local v0, "other":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<*>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    iget-object v2, v0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    .end local v0    # "other":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v0, p2

    .line 39
    .local v0, "previous":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    .line 40
    .local v1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v1, p1, v0, p3, p4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 41
    .local v2, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 44
    :cond_0
    move-object v0, v2

    .line 45
    goto :goto_0

    .line 46
    .end local v1    # "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    .end local v2    # "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_1
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .prologue
    .line 65
    .local p0, "this":Lcom/bumptech/glide/load/MultiTransformation;, "Lcom/bumptech/glide/load/MultiTransformation<TT;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    .line 66
    .local v0, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    goto :goto_0

    .line 68
    .end local v0    # "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    :cond_0
    return-void
.end method
