.class public Lcom/google/protobuf/LazyStringArrayList;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;,
        Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/LazyStringList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/protobuf/LazyStringArrayList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/LazyStringList;)V
    .locals 2
    .param p1, "from"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static asByteArray(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 236
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 237
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    .line 241
    :goto_0
    return-object p0

    .line 238
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 239
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 241
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, Lcom/google/protobuf/ByteString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    goto :goto_0
.end method

.method private static asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 226
    instance-of v0, p0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 227
    check-cast p0, Lcom/google/protobuf/ByteString;

    .line 231
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 228
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 229
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 231
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0
.end method

.method private static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 216
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    check-cast p0, Ljava/lang/String;

    .line 221
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 218
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 219
    check-cast p0, Lcom/google/protobuf/ByteString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 221
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 123
    return-void
.end method

.method public add(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "element"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 176
    return-void
.end method

.method public add([B)V
    .locals 1
    .param p1, "element"    # [B

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 182
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    instance-of v2, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/google/protobuf/LazyStringList;

    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 141
    .local v1, "ret":Z
    iget v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 142
    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "ret":Z
    .restart local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    .line 138
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAllByteArray(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 155
    .local v0, "ret":Z
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 156
    return v0
.end method

.method public addAllByteString(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/protobuf/ByteString;>;"
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 148
    .local v0, "ret":Z
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 149
    return v0
.end method

.method public asByteArrayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;

    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public asByteStringList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;

    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 170
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 90
    check-cast v2, Ljava/lang/String;

    .end local v2    # "o":Ljava/lang/Object;
    move-object v3, v2

    .line 104
    :cond_0
    :goto_0
    return-object v3

    .line 91
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 92
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 93
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 100
    .local v0, "ba":[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .line 198
    .local v0, "b":[B
    if-eq v0, v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-object v0
.end method

.method public getByteString(I)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 186
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 188
    .local v0, "b":Lcom/google/protobuf/ByteString;
    if-eq v0, v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    return-object v0
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Lcom/google/protobuf/LazyStringList;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/LazyStringList;)V
    .locals 5
    .param p1, "other"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 252
    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 253
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    .line 254
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 257
    .local v0, "b":[B
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "b":[B
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 163
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public set(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
