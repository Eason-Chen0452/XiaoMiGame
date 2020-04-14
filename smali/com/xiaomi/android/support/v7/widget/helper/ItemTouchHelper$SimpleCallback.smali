.class public abstract Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.super Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    iput p2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->a:I

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->b:I

    return-void
.end method
