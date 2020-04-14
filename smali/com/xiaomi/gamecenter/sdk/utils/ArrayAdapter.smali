.class public abstract Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public a([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    :cond_0
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the data is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t get view at this position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2
.end method
