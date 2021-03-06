.class public final Lcom/google/gson/Gson;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy; = null

.field private static final DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy; = null

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy; = null

.field static final DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy2; = null

.field static final DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy; = null

.field static final EMPTY_MAP:Lcom/google/gson/internal/ParameterizedTypeHandlerMap; = null

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final miniGson:Lcom/google/gson/internal/bind/MiniGson;

.field private final prettyPrinting:Z

.field private final serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final serializeNulls:Z

.field private final serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->makeUnmodifiable()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/Gson;->EMPTY_MAP:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 110
    new-instance v0, Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    .line 112
    new-instance v0, Lcom/google/gson/SyntheticFieldExclusionStrategy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/gson/SyntheticFieldExclusionStrategy;-><init>(Z)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    .line 114
    new-instance v0, Lcom/google/gson/ModifierBasedExclusionStrategy;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/google/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 116
    new-instance v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    new-instance v1, Lcom/google/gson/JavaFieldNamingPolicy;

    invoke-direct {v1}, Lcom/google/gson/JavaFieldNamingPolicy;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/google/gson/FieldNamingStrategy2;)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy2;

    .line 119
    invoke-static {}, Lcom/google/gson/Gson;->createExclusionStrategy()Lcom/google/gson/ExclusionStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    return-void

    .line 114
    :array_0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 176
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    sget-object v2, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    sget-object v3, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy2;

    sget-object v4, Lcom/google/gson/Gson;->EMPTY_MAP:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    sget-object v6, Lcom/google/gson/Gson;->EMPTY_MAP:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    sget-object v7, Lcom/google/gson/Gson;->EMPTY_MAP:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    const/4 v10, 0x1

    sget-object v13, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object v0, p0

    move v8, v5

    move v9, v5

    move v11, v5

    move v12, v5

    invoke-direct/range {v0 .. v14}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZLcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZLcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ExclusionStrategy;",
            "Lcom/google/gson/ExclusionStrategy;",
            "Lcom/google/gson/FieldNamingStrategy2;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;Z",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;ZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/bind/TypeAdapter$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/google/gson/Gson;->deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 193
    iput-object p2, p0, Lcom/google/gson/Gson;->serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 194
    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p4}, Lcom/google/gson/internal/ConstructorConstructor;-><init>(Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V

    iput-object v1, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 195
    iput-boolean p5, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 196
    iput-object p6, p0, Lcom/google/gson/Gson;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 197
    iput-object p7, p0, Lcom/google/gson/Gson;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 198
    iput-boolean p9, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    .line 199
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    .line 200
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    .line 209
    new-instance v2, Lcom/google/gson/Gson$1;

    iget-object v1, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v2, p0, v1, p3}, Lcom/google/gson/Gson$1;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy2;)V

    .line 230
    new-instance v1, Lcom/google/gson/internal/bind/MiniGson$Builder;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/MiniGson$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/internal/bind/MiniGson$Builder;->withoutDefaultFactories()Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->doubleAdapter(Z)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->floatAdapter(Z)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    new-instance v3, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;

    invoke-direct {v3, p2, p1}, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;)V

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    const-class v3, Ljava/math/BigDecimal;

    new-instance v4, Lcom/google/gson/internal/bind/BigDecimalTypeAdapter;

    invoke-direct {v4}, Lcom/google/gson/internal/bind/BigDecimalTypeAdapter;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->typeAdapter(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    const-class v3, Ljava/math/BigInteger;

    new-instance v4, Lcom/google/gson/internal/bind/BigIntegerTypeAdapter;

    invoke-direct {v4}, Lcom/google/gson/internal/bind/BigIntegerTypeAdapter;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->typeAdapter(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v3

    .line 254
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    .line 255
    invoke-virtual {v3, v1}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

    invoke-direct {v1, p0, p6, p7}, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V

    invoke-virtual {v3, v1}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    new-instance v4, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v5, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v4, v5}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    new-instance v4, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v5, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v4, v5, p8}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    invoke-virtual {v1, v4}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/internal/bind/MiniGson$Builder;->factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;

    .line 277
    invoke-virtual {v3}, Lcom/google/gson/internal/bind/MiniGson$Builder;->build()Lcom/google/gson/internal/bind/MiniGson;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/Gson;->miniGson:Lcom/google/gson/internal/bind/MiniGson;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/Gson;)Lcom/google/gson/ExclusionStrategy;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gson/Gson;->serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gson/Gson;)Lcom/google/gson/ExclusionStrategy;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gson/Gson;->deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/gson/Gson;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 693
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 694
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 698
    :catch_1
    move-exception v0

    .line 699
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 700
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .parameter

    .prologue
    .line 329
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialDoubleValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    return-void
.end method

.method private static createExclusionStrategy()Lcom/google/gson/ExclusionStrategy;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 360
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v1, v0}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private doubleAdapter(Z)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$2;-><init>(Lcom/google/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$3;-><init>(Lcom/google/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 338
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .parameter

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    .line 558
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    :cond_0
    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 561
    iget-boolean v1, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 562
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 564
    :cond_1
    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 565
    return-object v0
.end method


# virtual methods
.method public final fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 758
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/bind/JsonElementReader;

    invoke-direct {v0, p1}, Lcom/google/gson/internal/bind/JsonElementReader;-><init>(Lcom/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 713
    .line 714
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 715
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 717
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 718
    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/google/gson/Gson;->miniGson:Lcom/google/gson/internal/bind/MiniGson;

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    .line 720
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 736
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    :goto_0
    return-object v0

    .line 721
    :catch_0
    move-exception v0

    .line 726
    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_0

    .line 729
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    .line 730
    :catch_1
    move-exception v0

    .line 731
    :try_start_2
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 732
    :catch_2
    move-exception v0

    .line 734
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 660
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 661
    invoke-static {v1, v0}, Lcom/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 662
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 686
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 687
    invoke-static {v1, v0}, Lcom/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 688
    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 609
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 637
    :goto_0
    return-object v0

    .line 635
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 530
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 531
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 532
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 445
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 446
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 447
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 575
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 576
    iget-boolean v0, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 577
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 578
    iget-boolean v0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 580
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 585
    invoke-virtual {p2, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 586
    invoke-virtual {p2, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 587
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 585
    invoke-virtual {p2, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 586
    invoke-virtual {p2, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 545
    :try_start_0
    invoke-static {p2}, Lcom/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 546
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/gson/Gson;->miniGson:Lcom/google/gson/internal/bind/MiniGson;

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    .line 505
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 506
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 507
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 508
    iget-boolean v3, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 509
    invoke-virtual {p3}, Lcom/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 510
    iget-boolean v4, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 512
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    invoke-virtual {p3, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 517
    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 518
    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 519
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 517
    invoke-virtual {p3, v2}, Lcom/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 518
    invoke-virtual {p3, v3}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    :try_start_0
    invoke-static {p3}, Lcom/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 491
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 383
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    new-instance v0, Lcom/google/gson/internal/bind/JsonElementWriter;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonElementWriter;-><init>()V

    .line 405
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 406
    invoke-virtual {v0}, Lcom/google/gson/internal/bind/JsonElementWriter;->get()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deserializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
