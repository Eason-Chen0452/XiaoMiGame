.class Lorg/cocos2dx/plugin/IAPMi$1;
.super Ljava/lang/Object;
.source "IAPMi.java"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/plugin/IAPMi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public finishPayProcess(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pay fail,unknown error!,the result code is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/cocos2dx/plugin/IAPMi;->access$0(ILjava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 96
    :sswitch_0
    const/4 v0, 0x0

    const-string v1, "pay Success"

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/IAPMi;->access$0(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay cancel,the result code is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/IAPMi;->access$0(ILjava/lang/String;)V

    goto :goto_0

    .line 104
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pay fail,the result code is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/cocos2dx/plugin/IAPMi;->access$0(ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Operation in Progress,the result code is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/cocos2dx/plugin/IAPMi;->access$0(ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x4656 -> :sswitch_3
        -0x4654 -> :sswitch_1
        -0x4653 -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
