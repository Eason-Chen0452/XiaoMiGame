.class public Lcom/wali/gamecenter/report/db/ReportData;
.super Ljava/lang/Object;


# instance fields
.field private id:Ljava/lang/Long;

.field private method:Ljava/lang/String;

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wali/gamecenter/report/db/ReportData;->id:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wali/gamecenter/report/db/ReportData;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/wali/gamecenter/report/db/ReportData;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/wali/gamecenter/report/db/ReportData;->param:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/ReportData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/ReportData;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/db/ReportData;->param:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/db/ReportData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/db/ReportData;->method:Ljava/lang/String;

    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/db/ReportData;->param:Ljava/lang/String;

    return-void
.end method
