.class public final enum Lcom/viewpagerindicator/r;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viewpagerindicator/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viewpagerindicator/r;

.field public static final enum b:Lcom/viewpagerindicator/r;

.field public static final enum c:Lcom/viewpagerindicator/r;

.field private static final synthetic e:[Lcom/viewpagerindicator/r;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/viewpagerindicator/r;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/r;->a:Lcom/viewpagerindicator/r;

    new-instance v0, Lcom/viewpagerindicator/r;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/r;->b:Lcom/viewpagerindicator/r;

    new-instance v0, Lcom/viewpagerindicator/r;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/viewpagerindicator/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/r;->c:Lcom/viewpagerindicator/r;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viewpagerindicator/r;

    sget-object v1, Lcom/viewpagerindicator/r;->a:Lcom/viewpagerindicator/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/r;->b:Lcom/viewpagerindicator/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viewpagerindicator/r;->c:Lcom/viewpagerindicator/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viewpagerindicator/r;->e:[Lcom/viewpagerindicator/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/viewpagerindicator/r;->d:I

    .line 86
    return-void
.end method

.method public static a(I)Lcom/viewpagerindicator/r;
    .locals 5
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/viewpagerindicator/r;->values()[Lcom/viewpagerindicator/r;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 94
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 89
    :cond_1
    aget-object v0, v2, v1

    .line 90
    iget v4, v0, Lcom/viewpagerindicator/r;->d:I

    if-eq v4, p0, :cond_0

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/r;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/viewpagerindicator/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/r;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/r;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/viewpagerindicator/r;->e:[Lcom/viewpagerindicator/r;

    array-length v1, v0

    new-array v2, v1, [Lcom/viewpagerindicator/r;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
