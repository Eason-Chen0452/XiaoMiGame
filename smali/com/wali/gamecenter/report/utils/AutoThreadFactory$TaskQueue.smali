.class public Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;
.super Ljava/lang/Object;


# static fields
.field private static final DEF_MAX_WAIT_TIME:I = 0xea60


# instance fields
.field private contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

.field private name:Ljava/lang/String;

.field private priority:I

.field private wait_time:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->wait_time:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    return-void
.end method

.method constructor <init>(JILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x3

    const-wide/32 v2, 0xea60

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->wait_time:J

    iput v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    if-lez p3, :cond_0

    const/16 v0, 0xa

    if-le p3, v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    :goto_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    iput-wide v2, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->wait_time:J

    :goto_1
    iput-object p4, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->name:Ljava/lang/String;

    return-void

    :cond_1
    iput p3, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->wait_time:J

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)J
    .locals 2

    iget-wide v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->wait_time:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    return-object p1
.end method

.method private checkThreadStatus()V
    .locals 2

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    if-nez v0, :cond_2

    new-instance v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-direct {v0, p0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;-><init>(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->setPriority(I)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->access$000(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    new-instance v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-direct {v0, p0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;-><init>(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->setName(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    iget v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->priority:I

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->setPriority(I)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->start()V

    goto :goto_0
.end method


# virtual methods
.method public appendTask(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->checkThreadStatus()V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-virtual {v0, p1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->append(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public appendTask([Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->checkThreadStatus()V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-virtual {v0, p1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->append([Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->access$100(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public terminat()V
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->contoller:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->cancel()V

    :cond_0
    return-void
.end method
