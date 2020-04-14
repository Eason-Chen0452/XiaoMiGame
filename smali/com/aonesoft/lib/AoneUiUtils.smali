.class public Lcom/aonesoft/lib/AoneUiUtils;
.super Ljava/lang/Object;
.source "AoneUiUtils.java"


# static fields
.field public static lastClickTime:J

.field public static loadingDialog:Landroid/app/ProgressDialog;

.field public static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    .line 15
    sput-object v0, Lcom/aonesoft/lib/AoneUiUtils;->toast:Landroid/widget/Toast;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static dismissLoading(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    .line 44
    :cond_0
    return-void
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 86
    .local v5, "r":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 88
    .local v1, "desireClass":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_0

    .line 108
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Class;
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return v6

    .line 89
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v1    # "desireClass":Ljava/lang/Class;
    .restart local v3    # "i":I
    .restart local v5    # "r":Ljava/lang/Class;
    :cond_0
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    aget-object v1, v0, v3

    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    goto :goto_2

    .line 88
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "time":J
    sget-wide v4, Lcom/aonesoft/lib/AoneUiUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 118
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x320

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 119
    sput-wide v0, Lcom/aonesoft/lib/AoneUiUtils;->lastClickTime:J

    .line 120
    const/4 v4, 0x1

    .line 123
    :goto_0
    return v4

    .line 122
    :cond_0
    sput-wide v0, Lcom/aonesoft/lib/AoneUiUtils;->lastClickTime:J

    .line 123
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadImageViewByResId(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 67
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static showLoading(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    const-string v1, "loading..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/aonesoft/lib/AoneUiUtils;->loadingDialog:Landroid/app/ProgressDialog;

    .line 31
    :cond_0
    return-void
.end method

.method public static showLoginSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 51
    const-string v4, "string"

    const-string v5, "aonesdk_welcome"

    invoke-static {p0, v4, v5}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "welcome_toback":Ljava/lang/String;
    const-string v4, "xxx"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 53
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "target_welcome_toback":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/aonesoft/lib/AoneUiUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    sget-object v4, Lcom/aonesoft/lib/AoneUiUtils;->toast:Landroid/widget/Toast;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 61
    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method

.method public static showNetSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneUiUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/aonesoft/lib/AoneUiUtils;->toast:Landroid/widget/Toast;

    .line 20
    sget-object v0, Lcom/aonesoft/lib/AoneUiUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method
