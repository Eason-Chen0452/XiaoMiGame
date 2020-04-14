.class Lcom/mi/milink/sdk/session/persistent/Session$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$8;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    const-string v4, "milink.firstheartbeat"

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$8;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->access$700(Lcom/mi/milink/sdk/session/persistent/Session;)I

    move-result v0

    invoke-static {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
