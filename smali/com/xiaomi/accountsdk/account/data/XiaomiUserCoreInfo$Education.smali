.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field private static final synthetic a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;


# instance fields
.field public final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MIDDLE_SCHOOL"

    const-string v2, "junior"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "PREP_SCHOOL"

    const-string v2, "technical"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "HIGH_SCHOOL"

    const-string v2, "senior"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "VOCATIONAL_SCHOOL"

    const-string v2, "college"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "COLLEGE"

    const-string v2, "bachelor"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MASTER_DEGREE"

    const/4 v2, 0x5

    const-string v3, "master"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "DOCTOR_AND_ABOVE"

    const/4 v2, 0x6

    const-string v3, "doctor"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    return-void
.end method

.method public static getEducationTypeByName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget-object v5, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object v0
.end method
