.class public final Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "identity"

.field private static final DEFAULT_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private isEncodingDefault:Z

.field private isUserAgentDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 102
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v0, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    sget-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "User-Agent"

    new-instance v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    sget-object v3, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    const-string v1, "Accept-Encoding"

    new-instance v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    const-string v3, "identity"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 125
    sget-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 126
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 127
    iput-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    return-void
.end method

.method private copyHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 228
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    :cond_0
    return-object v1
.end method

.method private copyIfNecessary()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 214
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 216
    :cond_0
    return-void
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .restart local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lcom/bumptech/glide/load/model/LazyHeaderFactory;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v0, :cond_2

    const-string v0, "User-Agent"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object p0

    .line 160
    .end local p0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :goto_0
    return-object p0

    .line 158
    .restart local p0    # "this":Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 159
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/bumptech/glide/load/model/LazyHeaders;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 223
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "factory"    # Lcom/bumptech/glide/load/model/LazyHeaderFactory;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 184
    if-nez p2, :cond_2

    .line 185
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    if-eqz v1, :cond_0

    const-string v1, "Accept-Encoding"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iput-boolean v2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isEncodingDefault:Z

    .line 195
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iput-boolean v2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    .line 199
    :cond_1
    return-object p0

    .line 187
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
