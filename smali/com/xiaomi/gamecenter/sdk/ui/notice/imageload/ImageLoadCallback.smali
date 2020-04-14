.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->b:Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->c:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    :cond_1
    :goto_1
    return v2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->b:Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 4
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->b:Z

    const-string v0, "MiGameSDK.ImageLoadCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;->a()Z

    move-result v0

    return v0
.end method
