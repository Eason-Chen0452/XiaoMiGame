.class public final Lcom/xiaomi/gson/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/gson/internal/Excluder;

.field private b:Lcom/xiaomi/gson/LongSerializationPolicy;

.field private c:Lcom/xiaomi/gson/g;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/xiaomi/gson/o",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gson/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gson/u;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gson/internal/Excluder;->a:Lcom/xiaomi/gson/internal/Excluder;

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->a:Lcom/xiaomi/gson/internal/Excluder;

    sget-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->b:Lcom/xiaomi/gson/LongSerializationPolicy;

    sget-object v0, Lcom/xiaomi/gson/FieldNamingPolicy;->IDENTITY:Lcom/xiaomi/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->c:Lcom/xiaomi/gson/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/GsonBuilder;->f:Ljava/util/List;

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->g:Z

    iput v2, p0, Lcom/xiaomi/gson/GsonBuilder;->h:I

    iput v2, p0, Lcom/xiaomi/gson/GsonBuilder;->i:I

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->j:Z

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gson/GsonBuilder;->l:Z

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->m:Z

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->n:Z

    iput-boolean v1, p0, Lcom/xiaomi/gson/GsonBuilder;->o:Z

    return-void
.end method
