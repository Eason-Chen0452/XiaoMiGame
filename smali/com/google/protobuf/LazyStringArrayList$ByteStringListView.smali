.class Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/google/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


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
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    .line 319
    return-void
.end method


# virtual methods
.method public add(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 346
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 347
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public get(I)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 323
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 324
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 325
    .local v0, "b":Lcom/google/protobuf/ByteString;
    if-eq v0, v1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/google/protobuf/ByteString;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 351
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 353
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 340
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
