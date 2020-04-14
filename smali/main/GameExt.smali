.class public Lmain/GameExt;
.super Ljava/lang/Object;
.source "GameExt.java"


# static fields
.field protected static activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field static portalayout:Landroid/widget/LinearLayout;

.field static portalview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lmain/GameExt;->delete_(Ljava/io/File;)V

    .line 79
    return-void
.end method

.method public static delete_(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 90
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 95
    aget-object v2, v0, v1

    invoke-static {v2}, Lmain/GameExt;->delete_(Ljava/io/File;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static hideNewsView()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lmain/GameExt$3;

    invoke-direct {v1}, Lmain/GameExt$3;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    sput-object p0, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 30
    invoke-static {}, Lmain/GameExt;->registerListener()V

    .line 32
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    sget-object v1, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public static registerListener()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lchannel/adapter/GameAdapter;->Inst()Lchannel/adapter/GameAdapter;

    move-result-object v0

    const-string v1, "openurl"

    new-instance v2, Lmain/GameExt$1;

    invoke-direct {v2}, Lmain/GameExt$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 52
    invoke-static {}, Lchannel/adapter/GameAdapter;->Inst()Lchannel/adapter/GameAdapter;

    move-result-object v0

    const-string v1, "exit"

    new-instance v2, Lmain/GameExt$2;

    invoke-direct {v2}, Lmain/GameExt$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 64
    return-void
.end method

.method static showNewsView(Ljava/lang/String;II)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 125
    sget-object v0, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lmain/GameExt$4;

    invoke-direct {v1, p1, p2, p0}, Lmain/GameExt$4;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method


# virtual methods
.method public setIsTouches(Z)V
    .locals 0
    .param p1, "isTouch"    # Z

    .prologue
    .line 68
    return-void
.end method
