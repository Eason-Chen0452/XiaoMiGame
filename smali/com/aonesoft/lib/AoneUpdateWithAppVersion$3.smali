.class Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;
.super Ljava/lang/Object;
.source "AoneUpdateWithAppVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->showUpdateDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$updateText:Ljava/lang/String;

.field private final synthetic val$updateType:I

.field private final synthetic val$updateUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateText:Ljava/lang/String;

    iput-object p2, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateUrl:Ljava/lang/String;

    iput p3, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateType:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 92
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$2(Landroid/app/Dialog;)V

    .line 93
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 94
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout"

    const-string v9, "aonesdk_update_dialog"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$4(Landroid/view/View;)V

    .line 95
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 96
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$5()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 98
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 102
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 103
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 104
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "****************uaeifo"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dimen"

    const-string v9, "aonesdk_update_dialog_width"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(I)V

    .line 106
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v8

    const-string v9, "dimen"

    const-string v10, "aonesdk_update_dialog_width"

    invoke-static {v8, v9, v10}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(I)V

    .line 107
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dimen"

    const-string v9, "aonesdk_update_dialog_height"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(I)V

    .line 108
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dimen"

    const-string v9, "aonesdk_update_dialog_width"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dimen"

    const-string v9, "aonesdk_update_dialog_height"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$3()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$5()Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$1()Landroid/content/Context;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "aonesdk_update_content"

    invoke-static {v7, v8, v9}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, "mTextViewContent":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateUrl:Ljava/lang/String;

    iget v7, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;->val$updateType:I

    invoke-static {v6, v7}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->access$6(Ljava/lang/String;I)V

    .line 118
    return-void
.end method
