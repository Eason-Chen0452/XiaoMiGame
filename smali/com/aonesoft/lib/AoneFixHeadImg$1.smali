.class Lcom/aonesoft/lib/AoneFixHeadImg$1;
.super Ljava/lang/Object;
.source "AoneFixHeadImg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneFixHeadImg;->getHeadImage(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$heightPixel:I

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$widthPixel:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$widthPixel:I

    iput p2, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$heightPixel:I

    iput-object p3, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$path:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 68
    const-string v5, "AoneFixHeadImg"

    const-string v6, "getHeadImage start~"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v5, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$widthPixel:I

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$0(I)V

    .line 70
    iget v5, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$heightPixel:I

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$1(I)V

    .line 71
    iget-object v5, p0, Lcom/aonesoft/lib/AoneFixHeadImg$1;->val$path:Ljava/lang/String;

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$2(Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$3()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/huoshouCrop.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$4(Ljava/io/File;)V

    .line 74
    :try_start_0
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$5()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$7(Landroid/app/Dialog;)V

    .line 79
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 80
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout"

    const-string v8, "layout_dialog"

    invoke-static {v6, v7, v8}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$9(Landroid/view/View;)V

    .line 81
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 83
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$10()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 85
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 88
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 92
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$11()I

    move-result v5

    if-nez v5, :cond_0

    .line 95
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$0(I)V

    .line 97
    :cond_0
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$12()I

    move-result v5

    if-nez v5, :cond_1

    .line 98
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$1(I)V

    .line 100
    :cond_1
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$11()I

    move-result v5

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$12()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 101
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$12()I

    move-result v5

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$0(I)V

    .line 105
    :goto_1
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$13()V

    .line 106
    return-void

    .line 75
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_2
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$11()I

    move-result v5

    invoke-static {v5}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$1(I)V

    goto :goto_1
.end method
