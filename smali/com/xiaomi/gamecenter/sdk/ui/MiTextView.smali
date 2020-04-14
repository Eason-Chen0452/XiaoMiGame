.class public Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x808081

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a:I

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0x808081

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a:I

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x808081

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a:I

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x808081

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setEnabled(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()V
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->a:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    return-void
.end method
