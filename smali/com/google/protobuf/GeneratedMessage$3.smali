.class final Lcom/google/protobuf/GeneratedMessage$3;
.super Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$descriptorOuterClass:Ljava/lang/String;

.field final synthetic val$extensionName:Ljava/lang/String;

.field final synthetic val$singularType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$singularType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$descriptorOuterClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$extensionName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;-><init>(Lcom/google/protobuf/GeneratedMessage$1;)V

    return-void
.end method


# virtual methods
.method protected loadDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 7

    .prologue
    .line 1317
    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$singularType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$descriptorOuterClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1319
    .local v0, "clazz":Ljava/lang/Class;
    const-string v3, "descriptor"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1321
    .local v2, "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$extensionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1322
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :catch_0
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessage$3;->val$descriptorOuterClass:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Cannot load descriptors: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid descriptor class name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
