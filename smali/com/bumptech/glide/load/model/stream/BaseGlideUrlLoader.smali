.class public abstract Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TModel;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TModel;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 0
    .param p2    # Lcom/bumptech/glide/load/model/ModelCache;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TModel;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TModel;>;"
    .local p1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    .local p2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TModel;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 33
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 34
    return-void
.end method

.method private static getAlternateKeys(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "alternateUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/Key;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "alternate":Ljava/lang/String;
    new-instance v3, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v3, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0    # "alternate":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 8
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TModel;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    const/4 v2, 0x0

    .line 40
    .local v2, "result":Lcom/bumptech/glide/load/model/GlideUrl;
    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v4, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    check-cast v2, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 44
    .restart local v2    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    :cond_0
    if-nez v2, :cond_3

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getUrl(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "stringURL":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    const/4 v1, 0x0

    .line 65
    .end local v3    # "stringURL":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 50
    .restart local v3    # "stringURL":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/model/GlideUrl;

    .end local v2    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getHeaders(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/Headers;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 52
    .restart local v2    # "result":Lcom/bumptech/glide/load/model/GlideUrl;
    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-virtual {v4, p1, p2, p3, v2}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 59
    .end local v3    # "stringURL":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getAlternateUrls(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "alternateUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v4, v2, p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v1

    .line 62
    .local v1, "concreteLoaderData":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<Ljava/io/InputStream;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    new-instance v4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    iget-object v5, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-static {v0}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getAlternateKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/List;Lcom/bumptech/glide/load/data/DataFetcher;)V

    move-object v1, v4

    goto :goto_0
.end method

.method protected getAlternateUrls(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/util/List;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TModel;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaders(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/Headers;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/Headers;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TModel;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    return-object v0
.end method

.method protected abstract getUrl(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
