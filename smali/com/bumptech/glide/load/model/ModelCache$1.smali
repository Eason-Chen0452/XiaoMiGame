.class Lcom/bumptech/glide/load/model/ModelCache$1;
.super Lcom/bumptech/glide/util/LruCache;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache",
        "<",
        "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/model/ModelCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/bumptech/glide/load/model/ModelCache;
    .param p2, "size"    # I

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$1;, "Lcom/bumptech/glide/load/model/ModelCache$1;"
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$1;->this$0:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onItemEvicted(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$1;, "Lcom/bumptech/glide/load/model/ModelCache$1;"
    .local p1, "key":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    .local p2, "item":Ljava/lang/Object;, "TB;"
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->release()V

    .line 31
    return-void
.end method

.method protected bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$1;, "Lcom/bumptech/glide/load/model/ModelCache$1;"
    check-cast p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$1;->onItemEvicted(Lcom/bumptech/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V

    return-void
.end method
