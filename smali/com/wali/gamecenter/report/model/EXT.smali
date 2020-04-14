.class public Lcom/wali/gamecenter/report/model/EXT;
.super Ljava/lang/Object;


# instance fields
.field public account:Ljava/lang/String;

.field public accountapi:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public exStack:Ljava/lang/String;

.field public exname:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public localtime:Ljava/lang/String;

.field public migc:Ljava/lang/String;

.field public misg:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public payInfo:Lcom/wali/gamecenter/report/model/PayInfo;

.field public sext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayInfo()Lcom/wali/gamecenter/report/model/PayInfo;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/EXT;->payInfo:Lcom/wali/gamecenter/report/model/PayInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wali/gamecenter/report/model/PayInfo;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/model/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/EXT;->payInfo:Lcom/wali/gamecenter/report/model/PayInfo;

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/model/EXT;->payInfo:Lcom/wali/gamecenter/report/model/PayInfo;

    return-object v0
.end method
