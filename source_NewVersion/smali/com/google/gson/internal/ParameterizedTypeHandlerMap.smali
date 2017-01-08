.class public final Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private modifiable:Z

.field private final systemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final systemTypeHierarchyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;"
        }
    .end annotation
.end field

.field private final userMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final userTypeHierarchyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->modifiable:Z

    return-void
.end method

.method private appendList(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x1

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 221
    if-eqz v1, :cond_0

    .line 222
    const/4 v2, 0x0

    .line 226
    :goto_1
    iget-object v1, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-direct {p0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, v0, Lcom/google/gson/internal/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 224
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 229
    :cond_1
    return-void
.end method

.method private appendMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x1

    .line 233
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    if-eqz v1, :cond_0

    .line 235
    const/4 v2, 0x0

    .line 239
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-direct {p0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 237
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 242
    :cond_1
    return-void
.end method

.method private getHandlerForTypeHierarchy(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 161
    if-nez p2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 163
    iget-object v1, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, v0, Lcom/google/gson/internal/Pair;->second:Ljava/lang/Object;

    .line 173
    :goto_0
    return-object v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 169
    iget-object v1, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v0, v0, Lcom/google/gson/internal/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIndexOfAnOverriddenHandler(Ljava/lang/Class;Ljava/util/List;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;)I"
        }
    .end annotation

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 81
    iget-object v0, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 85
    :goto_1
    return v0

    .line 79
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getIndexOfSpecificHandlerForTypeHierarchy(Ljava/lang/Class;Ljava/util/List;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;>;)I"
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    iget-object v0, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 187
    :goto_1
    return v0

    .line 182
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized copyOf()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;-><init>()V

    .line 197
    iget-object v1, v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    iget-object v1, v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 199
    iget-object v1, v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    iget-object v2, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v1, v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    iget-object v2, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHandlerFor(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    if-nez p2, :cond_1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 144
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 148
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 149
    if-eq v1, p1, :cond_2

    .line 150
    invoke-virtual {p0, v1, p2}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 156
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getHandlerForTypeHierarchy(Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized makeUnmodifiable()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->modifiable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-object p0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Overriding the existing type handler for {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    .line 96
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized registerForTypeHierarchy(Lcom/google/gson/internal/Pair;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/Pair",
            "<",
            "Ljava/lang/Class",
            "<*>;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    move-object v1, v0

    .line 62
    :goto_0
    iget-object v0, p1, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getIndexOfSpecificHandlerForTypeHierarchy(Ljava/lang/Class;Ljava/util/List;)I

    move-result v0

    .line 63
    if-ltz v0, :cond_1

    .line 64
    sget-object v2, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Overriding the existing type handler for {0}"

    iget-object v5, p1, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    :cond_1
    iget-object v0, p1, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getIndexOfAnOverriddenHandler(Ljava/lang/Class;Ljava/util/List;)I

    move-result v0

    .line 68
    if-ltz v0, :cond_3

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The specified type handler for type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hides the previously registered type hierarchy handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    iget-object v0, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Gson does not allow this."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    move-object v1, v0

    goto :goto_0

    .line 75
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/gson/internal/Pair;

    invoke-direct {v0, p1, p2}, Lcom/google/gson/internal/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Lcom/google/gson/internal/Pair;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerIfAbsent(Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 116
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 117
    iget-object v1, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getIndexOfSpecificHandlerForTypeHierarchy(Ljava/lang/Class;Ljava/util/List;)I

    move-result v1

    .line 118
    if-gez v1, :cond_5

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Lcom/google/gson/internal/Pair;Z)V

    .line 115
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 122
    :cond_6
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_8

    .line 123
    iget-object v0, p1, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Pair;

    .line 124
    iget-object v1, v0, Lcom/google/gson/internal/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getIndexOfSpecificHandlerForTypeHierarchy(Ljava/lang/Class;Ljava/util/List;)I

    move-result v1

    .line 125
    if-gez v1, :cond_7

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Lcom/google/gson/internal/Pair;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    .line 129
    :cond_8
    monitor-exit p0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{userTypeHierarchyList:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userTypeHierarchyList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->appendList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 208
    const-string v1, "},systemTypeHierarchyList:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemTypeHierarchyList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->appendList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 210
    const-string v1, "},userMap:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->userMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->appendMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 212
    const-string v1, "},systemMap:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->systemMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->appendMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 214
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
