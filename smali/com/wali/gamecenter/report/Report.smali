.class public Lcom/wali/gamecenter/report/Report;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wali/gamecenter/report/Report;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private adsCv:Ljava/lang/String;

.field private adsId:Ljava/lang/String;

.field private adsType:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private client:Ljava/lang/String;

.field private curPage:Ljava/lang/String;

.field private curPageId:Ljava/lang/String;

.field private curPagePkgName:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private fromId:Ljava/lang/String;

.field private fromLabel:Ljava/lang/String;

.field private gamecenterVersion:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field mHasCallCreate:Z

.field private moduleId:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private pp1:Ljava/lang/String;

.field private pp2:Ljava/lang/String;

.field private tm:Ljava/lang/String;

.field private trace:Ljava/lang/String;

.field private tt:Ljava/lang/String;

.field private type:Lcom/wali/gamecenter/report/ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wali/gamecenter/report/Report$1;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/Report$1;-><init>()V

    sput-object v0, Lcom/wali/gamecenter/report/Report;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/Report;->mHasCallCreate:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/Report;->mHasCallCreate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->level:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/ReportType;->fromInt(I)Lcom/wali/gamecenter/report/ReportType;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->gamecenterVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->pp1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->pp2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->imei:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->tm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/wali/gamecenter/report/ReportParams;)V
    .locals 1

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->action:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "gamecenter"

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->type:Lcom/wali/gamecenter/report/ReportType;

    if-nez v0, :cond_2

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    :goto_1
    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->client:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->from:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->fromId:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->fromLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->curPage:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->curPageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->position:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->tt:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->moduleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->trace:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->trace:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->curPagePkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPagePkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->originManual:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->originManual:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/Report;->mHasCallCreate:Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/wali/gamecenter/report/ReportParams;->type:Lcom/wali/gamecenter/report/ReportType;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    return-object v0
.end method

.method getParamsToJSON(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gamecenter"

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    :cond_0
    const-string v0, "ac"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "type"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "adId"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cv"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/wali/gamecenter/report/ReportOrigin;->getOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "other"

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    :cond_4
    const-string v0, "origin"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "client"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "from"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fromId"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "fromLabel"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    :cond_a
    const-string v0, "curPage"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "curPageId"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "position"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "tt"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "moduleId"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->trace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "trace"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->trace:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPagePkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "curPagePkgName"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPagePkgName:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/ReportBaseParams;->setBaseParamsToJSON(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "cid"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/wali/gamecenter/report/ReportBaseParams;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v3}, Lcom/wali/gamecenter/report/ReportType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/wali/gamecenter/report/utils/ReportUtils;->getSecurityParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v2, v0

    if-lez v2, :cond_13

    const-string v2, "pp1"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pp2"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    const-string v0, "tm"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    :try_start_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    if-nez v0, :cond_15

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    :cond_15
    const-string v0, "type"

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method getParamsToString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gamecenter"

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    :cond_0
    const-string v0, "ac="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "adId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/wali/gamecenter/report/ReportOrigin;->getOrigin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "other"

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    :cond_4
    const-string v0, "origin="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "client="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "from="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fromId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "fromLabel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    :cond_a
    const-string v0, "curPage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "curPageId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "position="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "tt="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "moduleId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->trace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "trace="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->trace:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPagePkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "curPagePkgName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPagePkgName:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/ReportBaseParams;->getBaseParamsString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "cid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/wali/gamecenter/report/ReportBaseParams;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v3}, Lcom/wali/gamecenter/report/ReportType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/wali/gamecenter/report/utils/ReportUtils;->getSecurityParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v2, v0

    if-lez v2, :cond_13

    const-string v2, "pp1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pp2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v0, "tm="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    :try_start_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    if-nez v0, :cond_15

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    :cond_15
    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getType()Lcom/wali/gamecenter/report/ReportType;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    return-object v0
.end method

.method public save()V
    .locals 1

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wali/gamecenter/report/ReportManager;->saveReport(Lcom/wali/gamecenter/report/Report;)V

    return-void
.end method

.method public send()V
    .locals 2

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wali/gamecenter/report/Report;->mHasCallCreate:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "have not call create method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wali/gamecenter/report/ReportManager;->sendReport(Lcom/wali/gamecenter/report/Report;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->level:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->type:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->origin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->client:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->gamecenterVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->pp1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->pp2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->fromLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->curPageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->position:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->tm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->tt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->adsCv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report;->moduleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
