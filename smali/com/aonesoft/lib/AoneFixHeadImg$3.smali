.class Lcom/aonesoft/lib/AoneFixHeadImg$3;
.super Ljava/lang/Object;
.source "AoneFixHeadImg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneFixHeadImg;->bindDialogEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->ImageScale()V

    .line 136
    return-void
.end method
