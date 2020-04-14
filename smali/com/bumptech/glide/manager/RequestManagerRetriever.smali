.class public Lcom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private static final FRAGMENT_INDEX_KEY:Ljava/lang/String; = "key"

.field private static final FRAGMENT_MANAGER_GET_FRAGMENT_KEY:Ljava/lang/String; = "i"

.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lcom/bumptech/glide/RequestManager;

.field private final factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private final handler:Landroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBundle:Landroid/os/Bundle;

.field private final tempViewToFragment:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    .line 79
    if-eqz p1, :cond_0

    .end local p1    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    .line 81
    return-void

    .line 79
    .restart local p1    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    goto :goto_0
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method private findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 272
    check-cast p1, Landroid/app/Activity;

    .line 276
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-object p1

    .line 273
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 274
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    .line 276
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "result":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/app/Fragment;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    const-string v4, "key"

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "fragment":Landroid/app/Fragment;
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    const-string v4, "i"

    invoke-virtual {p1, v3, v4}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_1
    if-nez v0, :cond_0

    .line 268
    return-void

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    :cond_1
    move v1, v2

    .line 267
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 255
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "topLevelFragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/support/v4/app/Fragment;>;"
    if-nez p0, :cond_1

    .line 195
    :cond_0
    return-void

    .line 188
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 189
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 223
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 224
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "result":Landroid/app/Fragment;
    const v3, 0x1020002

    invoke-virtual {p2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "activityRoot":Landroid/view/View;
    move-object v1, p1

    .line 230
    .local v1, "current":Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/app/Fragment;
    check-cast v2, Landroid/app/Fragment;

    .line 232
    .restart local v2    # "result":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 242
    return-object v2

    .line 235
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "current":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1    # "current":Landroid/view/View;
    goto :goto_0
.end method

.method private findSupportFragment(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 201
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    .line 200
    invoke-static {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "result":Landroid/support/v4/app/Fragment;
    const v3, 0x1020002

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "activityRoot":Landroid/view/View;
    move-object v1, p1

    .line 205
    .local v1, "current":Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/support/v4/app/Fragment;
    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 207
    .restart local v2    # "result":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 218
    return-object v2

    .line 210
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "current":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1    # "current":Landroid/view/View;
    goto :goto_0
.end method

.method private fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "parentHint"    # Landroid/app/Fragment;

    .prologue
    .line 320
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    .line 321
    .local v0, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 322
    .local v2, "requestManager":Lcom/bumptech/glide/RequestManager;
    if-nez v2, :cond_0

    .line 324
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    .line 325
    .local v1, "glide":Lcom/bumptech/glide/Glide;
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 326
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 329
    .end local v1    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    return-object v2
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v1, :cond_1

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v1, :cond_0

    .line 94
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 95
    .local v0, "glide":Lcom/bumptech/glide/Glide;
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/bumptech/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    .line 96
    invoke-interface {v1, v0, v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    .line 98
    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "parentHint"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 351
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    .line 352
    .local v0, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 353
    .local v2, "requestManager":Lcom/bumptech/glide/RequestManager;
    if-nez v2, :cond_0

    .line 355
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    .line 356
    .local v1, "glide":Lcom/bumptech/glide/Glide;
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 357
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 360
    .end local v1    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 147
    .local v0, "fm":Landroid/app/FragmentManager;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_2

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 297
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    .line 108
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 110
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 111
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_0

    .line 112
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 113
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 137
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 121
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 125
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 126
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0

    .line 166
    :cond_1
    instance-of v2, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 167
    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, p1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findSupportFragment(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 168
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_2

    .line 169
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0

    .line 175
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v1

    .line 176
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_4

    .line 177
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0
.end method

.method getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "parentHint"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 304
    const-string v1, "com.bumptech.glide.manager"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 305
    .local v0, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    if-nez v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 307
    .restart local v0    # "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .end local v0    # "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    .line 309
    .restart local v0    # "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setParentFragmentHint(Landroid/app/Fragment;)V

    .line 310
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 312
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 315
    :cond_0
    return-object v0
.end method

.method getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "parentHint"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 334
    const-string v1, "com.bumptech.glide.manager"

    .line 335
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 336
    .local v0, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    if-nez v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 338
    .restart local v0    # "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .end local v0    # "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-direct {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    .line 340
    .restart local v0    # "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setParentFragmentHint(Landroid/support/v4/app/Fragment;)V

    .line 341
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 343
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 365
    const/4 v1, 0x1

    .line 366
    .local v1, "handled":Z
    const/4 v3, 0x0

    .line 367
    .local v3, "removed":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 368
    .local v2, "key":Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 380
    const/4 v1, 0x0

    .line 383
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "removed":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    if-nez v3, :cond_0

    const-string v5, "RMRetriever"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    const-string v5, "RMRetriever"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    return v1

    .line 370
    .restart local v2    # "key":Ljava/lang/Object;
    .restart local v3    # "removed":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    .line 371
    .local v0, "fm":Landroid/app/FragmentManager;
    move-object v2, v0

    .line 372
    .local v2, "key":Landroid/app/FragmentManager;
    iget-object v5, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 373
    goto :goto_0

    .line 375
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .local v2, "key":Ljava/lang/Object;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/app/FragmentManager;

    .line 376
    .local v4, "supportFm":Landroid/support/v4/app/FragmentManager;
    move-object v2, v4

    .line 377
    .local v2, "key":Landroid/support/v4/app/FragmentManager;
    iget-object v5, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 378
    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
