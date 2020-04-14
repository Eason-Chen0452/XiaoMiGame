.class public final Lcom/bumptech/glide/request/target/PreloadTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final requestManager:Lcom/bumptech/glide/RequestManager;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/RequestManager;II)V
    .locals 0
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 30
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/request/target/PreloadTarget;
    .locals 1
    .param p0, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/request/target/PreloadTarget",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/bumptech/glide/request/target/PreloadTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;-><init>(Lcom/bumptech/glide/RequestManager;II)V

    return-object v0
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 35
    return-void
.end method
