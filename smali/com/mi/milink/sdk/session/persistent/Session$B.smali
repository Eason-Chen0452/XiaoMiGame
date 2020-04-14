.class Lcom/mi/milink/sdk/session/persistent/Session$B;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/session/persistent/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "B"
.end annotation


# instance fields
.field public b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$B;->b:Z

    return-void
.end method
