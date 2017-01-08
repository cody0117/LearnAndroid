.class public final enum Lcom/viewpagerindicator/s;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viewpagerindicator/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viewpagerindicator/s;

.field public static final enum b:Lcom/viewpagerindicator/s;

.field private static final synthetic d:[Lcom/viewpagerindicator/s;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/viewpagerindicator/s;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/s;->a:Lcom/viewpagerindicator/s;

    new-instance v0, Lcom/viewpagerindicator/s;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/s;->b:Lcom/viewpagerindicator/s;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viewpagerindicator/s;

    sget-object v1, Lcom/viewpagerindicator/s;->a:Lcom/viewpagerindicator/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/s;->b:Lcom/viewpagerindicator/s;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viewpagerindicator/s;->d:[Lcom/viewpagerindicator/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/viewpagerindicator/s;->c:I

    .line 105
    return-void
.end method

.method public static a(I)Lcom/viewpagerindicator/s;
    .locals 5
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/viewpagerindicator/s;->values()[Lcom/viewpagerindicator/s;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 113
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 108
    :cond_1
    aget-object v0, v2, v1

    .line 109
    iget v4, v0, Lcom/viewpagerindicator/s;->c:I

    if-eq v4, p0, :cond_0

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/s;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/viewpagerindicator/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/s;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/s;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/viewpagerindicator/s;->d:[Lcom/viewpagerindicator/s;

    array-length v1, v0

    new-array v2, v1, [Lcom/viewpagerindicator/s;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
