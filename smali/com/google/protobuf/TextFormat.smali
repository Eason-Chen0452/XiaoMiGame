.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$3;,
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$ByteSequence;,
        Lcom/google/protobuf/TextFormat$Parser;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$Tokenizer;,
        Lcom/google/protobuf/TextFormat$TextGenerator;,
        Lcom/google/protobuf/TextFormat$Printer;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final PARSER:Lcom/google/protobuf/TextFormat$Parser;

.field private static final SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-class v0, Lcom/google/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v2}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    sput-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 63
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v2}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$100(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 65
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v2}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$200(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 1108
    invoke-static {}, Lcom/google/protobuf/TextFormat$Parser;->newBuilder()Lcom/google/protobuf/TextFormat$Parser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Parser$Builder;->build()Lcom/google/protobuf/TextFormat$Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$800(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static digitValue(B)I
    .locals 1
    .param p0, "c"    # B

    .prologue
    .line 1848
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1849
    add-int/lit8 v0, p0, -0x30

    .line 1853
    :goto_0
    return v0

    .line 1850
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1851
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1853
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1685
    new-instance v0, Lcom/google/protobuf/TextFormat$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$1;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/TextFormat$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeBytes(Lcom/google/protobuf/TextFormat$ByteSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Lcom/google/protobuf/TextFormat$ByteSequence;

    .prologue
    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/protobuf/TextFormat$ByteSequence;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1644
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/google/protobuf/TextFormat$ByteSequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1645
    invoke-interface {p0, v2}, Lcom/google/protobuf/TextFormat$ByteSequence;->byteAt(I)B

    move-result v0

    .line 1646
    .local v0, "b":B
    sparse-switch v0, :sswitch_data_0

    .line 1662
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    .line 1663
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1644
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1648
    :sswitch_0
    const-string v3, "\\a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1649
    :sswitch_1
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1650
    :sswitch_2
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1651
    :sswitch_3
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1652
    :sswitch_4
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1653
    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1654
    :sswitch_6
    const-string v3, "\\v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1655
    :sswitch_7
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1656
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1657
    :sswitch_9
    const-string v3, "\\\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1665
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1666
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1667
    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1668
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1673
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1646
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static escapeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 1699
    new-instance v0, Lcom/google/protobuf/TextFormat$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$2;-><init>([B)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/TextFormat$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1818
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1811
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParser()Lcom/google/protobuf/TextFormat$Parser;
    .locals 1

    .prologue
    .line 1115
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    return-object v0
.end method

.method private static isHex(B)Z
    .locals 1
    .param p0, "c"    # B

    .prologue
    .line 1837
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(B)Z
    .locals 1
    .param p0, "c"    # B

    .prologue
    .line 1832
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1160
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1161
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1135
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    .line 1136
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/Readable;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1148
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/Readable;
    .param p1, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V

    .line 1126
    return-void
.end method

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1863
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1883
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isSigned"    # Z
    .param p2, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1901
    const/4 v3, 0x0

    .line 1903
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 1904
    .local v1, "negative":Z
    const-string v5, "-"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1905
    if-nez p1, :cond_1

    .line 1906
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number must be positive: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1908
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1909
    const/4 v1, 0x1

    .line 1912
    :cond_2
    const/16 v4, 0xa

    .line 1913
    .local v4, "radix":I
    const-string v5, "0x"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1914
    add-int/lit8 v3, v3, 0x2

    .line 1915
    const/16 v4, 0x10

    .line 1920
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1922
    .local v2, "numberText":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1923
    .local v6, "result":J
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x10

    if-ge v5, v8, :cond_b

    .line 1925
    invoke-static {v2, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 1926
    if-eqz v1, :cond_4

    .line 1927
    neg-long v6, v6

    .line 1933
    :cond_4
    if-nez p2, :cond_15

    .line 1934
    if-eqz p1, :cond_8

    .line 1935
    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    const-wide/32 v8, -0x80000000

    cmp-long v5, v6, v8

    if-gez v5, :cond_15

    .line 1936
    :cond_5
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 32-bit signed integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1916
    .end local v2    # "numberText":Ljava/lang/String;
    .end local v6    # "result":J
    :cond_6
    const-string v5, "0"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1917
    const/16 v4, 0x8

    goto :goto_1

    .line 1936
    .restart local v2    # "numberText":Ljava/lang/String;
    .restart local v6    # "result":J
    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1940
    :cond_8
    const-wide v8, 0x100000000L

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_15

    .line 1941
    :cond_9
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 32-bit unsigned integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1947
    :cond_b
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1948
    .local v0, "bigValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_c

    .line 1949
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1953
    :cond_c
    if-nez p2, :cond_10

    .line 1954
    if-eqz p1, :cond_e

    .line 1955
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v8, 0x1f

    if-le v5, v8, :cond_14

    .line 1956
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 32-bit signed integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1960
    :cond_e
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v8, 0x20

    if-le v5, v8, :cond_14

    .line 1961
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 32-bit unsigned integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1966
    :cond_10
    if-eqz p1, :cond_12

    .line 1967
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v8, 0x3f

    if-le v5, v8, :cond_14

    .line 1968
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 64-bit signed integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_11
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 1972
    :cond_12
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v8, 0x40

    if-le v5, v8, :cond_14

    .line 1973
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "Number out of range for 64-bit unsigned integer: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-direct {v8, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 1979
    :cond_14
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 1982
    .end local v0    # "bigValue":Ljava/math/BigInteger;
    :cond_15
    return-wide v6
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1874
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1894
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 77
    return-void
.end method

.method public static print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 84
    return-void
.end method

.method public static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$600(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 197
    return-void
.end method

.method public static printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v1, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v1}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 205
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$700(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 225
    return-void
.end method

.method public static printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v1, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 145
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 3
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v1, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 159
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v1, "text":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v3, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v2, p0, v3}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 173
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 5
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "text":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v3, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v2, p0, v3}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 187
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printUnicode(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 94
    return-void
.end method

.method public static printUnicode(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 104
    return-void
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .param p0, "tag"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 268
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    return-void

    .line 253
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Ljava/util/Locale;

    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Ljava/util/Locale;

    const-string v1, "0x%016x"

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 261
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 262
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_5
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    check-cast p1, Lcom/google/protobuf/UnknownFieldSet;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 242
    return-void
.end method

.method public static shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v3, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v2, p0, v3}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 116
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static shortDebugString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 5
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v3, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v2, p0, v3}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 131
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 11
    .param p0, "charString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    .line 1717
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 1725
    .local v3, "input":Lcom/google/protobuf/ByteString;
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    new-array v6, v7, [B

    .line 1726
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 1727
    .local v4, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 1728
    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 1729
    .local v0, "c":B
    if-ne v0, v9, :cond_6

    .line 1730
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1731
    add-int/lit8 v2, v2, 0x1

    .line 1732
    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 1733
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1735
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v1

    .line 1736
    .local v1, "code":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1737
    add-int/lit8 v2, v2, 0x1

    .line 1738
    mul-int/lit8 v7, v1, 0x8

    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v8

    add-int v1, v7, v8

    .line 1740
    :cond_0
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1741
    add-int/lit8 v2, v2, 0x1

    .line 1742
    mul-int/lit8 v7, v1, 0x8

    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v8

    add-int v1, v7, v8

    .line 1745
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .local v5, "pos":I
    int-to-byte v7, v1

    aput-byte v7, v6, v4

    move v4, v5

    .line 1727
    .end local v1    # "code":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1747
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 1777
    new-instance v7, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    int-to-char v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x1d

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Invalid escape sequence: \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1748
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/4 v7, 0x7

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1749
    :sswitch_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x8

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1750
    :sswitch_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xc

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1751
    :sswitch_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xa

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1752
    :sswitch_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xd

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1753
    :sswitch_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x9

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1754
    :sswitch_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xb

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1755
    :sswitch_7
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    aput-byte v9, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1756
    :sswitch_8
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x27

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1757
    :sswitch_9
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x22

    aput-byte v7, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 1761
    :sswitch_a
    const/4 v1, 0x0

    .line 1762
    .restart local v1    # "code":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1763
    add-int/lit8 v2, v2, 0x1

    .line 1764
    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v1

    .line 1769
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1770
    add-int/lit8 v2, v2, 0x1

    .line 1771
    mul-int/lit8 v7, v1, 0x10

    invoke-virtual {v3, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v8

    add-int v1, v7, v8

    .line 1773
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    int-to-byte v7, v1

    aput-byte v7, v6, v4

    move v4, v5

    .line 1774
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_1

    .line 1766
    :cond_4
    new-instance v7, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v8, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v7, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1782
    .end local v1    # "code":I
    :cond_5
    new-instance v7, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v8, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v7, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1786
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    aput-byte v0, v6, v4

    move v4, v5

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_1

    .line 1790
    .end local v0    # "c":B
    :cond_7
    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v7

    return-object v7

    .line 1747
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unsignedToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 489
    if-ltz p0, :cond_0

    .line 490
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unsignedToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 498
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 499
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
