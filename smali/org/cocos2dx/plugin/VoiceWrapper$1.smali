.class Lorg/cocos2dx/plugin/VoiceWrapper$1;
.super Ljava/lang/Object;
.source "VoiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/VoiceWrapper;->onVoiceEvent(Lorg/cocos2dx/plugin/InterfaceVoice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$code:I

.field private final synthetic val$curAdapter:Lorg/cocos2dx/plugin/InterfaceVoice;

.field private final synthetic val$curType:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/InterfaceVoice;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceVoice;

    iput p2, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$curType:I

    iput p3, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$code:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    iget-object v1, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceVoice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 22
    iget v1, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$curType:I

    iget v2, p0, Lorg/cocos2dx/plugin/VoiceWrapper$1;->val$code:I

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/VoiceWrapper;->access$0(Ljava/lang/String;II)V

    .line 23
    return-void
.end method
