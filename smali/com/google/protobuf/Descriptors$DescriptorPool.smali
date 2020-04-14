.class final Lcom/google/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allowUnknownDependencies:Z

.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1817
    const-class v0, Lcom/google/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V
    .locals 6
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p2, "allowUnknownDependencies"    # Z

    .prologue
    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    .line 1861
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    .line 1863
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    .line 1827
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    .line 1828
    iput-boolean p2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    .line 1830
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 1831
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1832
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 1830
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1837
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1838
    :catch_0
    move-exception v1

    .line 1842
    .local v1, "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    sget-boolean v4, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1845
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    .end local v1    # "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    :cond_2
    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$DescriptorPool;

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$DescriptorPool;

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object v0
.end method

.method private importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 3
    .param p1, "file"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 1849
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPublicDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1850
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1851
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    .line 1854
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :cond_1
    return-void
.end method

.method static validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 9
    .param p0, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2167
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2168
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2169
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Missing name."

    invoke-direct {v4, p0, v5, v8}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 2171
    :cond_0
    const/4 v3, 0x1

    .line 2172
    .local v3, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2173
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2176
    .local v0, "c":C
    const/16 v4, 0x80

    if-lt v0, v4, :cond_1

    .line 2177
    const/4 v3, 0x0

    .line 2181
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v1, :cond_3

    .line 2172
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2185
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2188
    .end local v0    # "c":C
    :cond_4
    if-nez v3, :cond_5

    .line 2189
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a valid identifier."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v8}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 2193
    :cond_5
    return-void
.end method


# virtual methods
.method addEnumValueByNumber(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 4
    .param p1, "value"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 2151
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2153
    .local v0, "key":Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 2154
    .local v1, "old":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-eqz v1, :cond_0

    .line 2155
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    :cond_0
    return-void
.end method

.method addFieldByNumber(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 9
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 2132
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2134
    .local v0, "key":Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2135
    .local v1, "old":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    if-eqz v1, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x41

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Field number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has already been used in \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" by field \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 2143
    :cond_0
    return-void
.end method

.method addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 9
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/google/protobuf/Descriptors$FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 2080
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2082
    .local v0, "dotpos":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2083
    move-object v1, p1

    .line 2089
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v4, v1, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 2092
    .local v2, "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_1

    .line 2093
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    instance-of v3, v2, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v3, :cond_1

    .line 2095
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x45

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" is already defined (as something other than a "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "package) in file \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 2085
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 2086
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2100
    .restart local v2    # "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_1
    return-void
.end method

.method addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 10
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2022
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 2024
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, "fullName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2027
    .local v0, "dotpos":I
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 2028
    .local v2, "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 2029
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 2032
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2033
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v9}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 2036
    :cond_0
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" is already defined in \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v9}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 2042
    :cond_1
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x21

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" is already defined in file \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v9}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 2047
    :cond_2
    return-void
.end method

.method findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 1868
    sget-object v0, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    return-object v0
.end method

.method findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 5
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .prologue
    .line 1876
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1877
    .local v2, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 1878
    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v4, :cond_1

    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v3, v2

    .end local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .local v3, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    move-object v4, v2

    .line 1896
    :goto_0
    return-object v4

    .line 1885
    .end local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .restart local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1886
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1300(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    iget-object v4, v4, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1887
    .restart local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_3

    .line 1888
    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v4, :cond_5

    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    sget-object v4, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    move-object v3, v2

    .end local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .restart local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    move-object v4, v2

    .line 1891
    goto :goto_0

    .line 1896
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    .end local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .restart local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_6
    const/4 v4, 0x0

    move-object v3, v2

    .end local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .restart local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    goto :goto_0
.end method

.method isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .prologue
    .line 1907
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .prologue
    .line 1901
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relativeTo"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .param p3, "filter"    # Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1927
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1929
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1930
    .local v3, "fullname":Ljava/lang/String;
    invoke-virtual {p0, v3, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1992
    .local v4, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    if-nez v4, :cond_6

    .line 1993
    iget-boolean v8, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p3, v8, :cond_5

    .line 1994
    invoke-static {}, Lcom/google/protobuf/Descriptors;->access$000()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x57

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "The descriptor for message type \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" can not be found and a placeholder is created for it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2002
    new-instance v4, Lcom/google/protobuf/Descriptors$Descriptor;

    .end local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    invoke-direct {v4, v3}, Lcom/google/protobuf/Descriptors$Descriptor;-><init>(Ljava/lang/String;)V

    .line 2005
    .restart local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    iget-object v8, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    .end local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .local v5, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    move-object v6, v4

    .line 2012
    .end local v5    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .local v6, "result":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 1945
    .end local v3    # "fullname":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Object;
    :cond_0
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1947
    .local v2, "firstPartLength":I
    if-ne v2, v10, :cond_1

    .line 1948
    move-object v1, p1

    .line 1955
    .local v1, "firstPart":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1960
    .local v7, "scopeToTry":Ljava/lang/StringBuilder;
    :goto_3
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1961
    .local v0, "dotpos":I
    if-ne v0, v10, :cond_2

    .line 1962
    move-object v3, p1

    .line 1963
    .restart local v3    # "fullname":Ljava/lang/String;
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1964
    .restart local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    goto :goto_0

    .line 1950
    .end local v0    # "dotpos":I
    .end local v1    # "firstPart":Ljava/lang/String;
    .end local v3    # "fullname":Ljava/lang/String;
    .end local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .end local v7    # "scopeToTry":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "firstPart":Ljava/lang/String;
    goto :goto_2

    .line 1966
    .restart local v0    # "dotpos":I
    .restart local v7    # "scopeToTry":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1969
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, v8, v9}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1973
    .restart local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v4, :cond_4

    .line 1974
    if-eq v2, v10, :cond_3

    .line 1978
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1979
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1982
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1983
    .restart local v3    # "fullname":Ljava/lang/String;
    goto/16 :goto_0

    .line 1987
    .end local v3    # "fullname":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2008
    .end local v0    # "dotpos":I
    .end local v1    # "firstPart":Ljava/lang/String;
    .end local v2    # "firstPartLength":I
    .end local v7    # "scopeToTry":Ljava/lang/StringBuilder;
    .restart local v3    # "fullname":Ljava/lang/String;
    :cond_5
    new-instance v8, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is not defined."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, p2, v9, v10}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v8

    :cond_6
    move-object v5, v4

    .end local v4    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .restart local v5    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    move-object v6, v4

    .line 2012
    .restart local v6    # "result":Ljava/lang/Object;
    goto/16 :goto_1
.end method
