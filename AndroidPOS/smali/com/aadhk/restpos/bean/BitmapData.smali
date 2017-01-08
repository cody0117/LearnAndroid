.class public Lcom/aadhk/restpos/bean/BitmapData;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private dots:Ljava/util/BitSet;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDots()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/aadhk/restpos/bean/BitmapData;->dots:Ljava/util/BitSet;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/aadhk/restpos/bean/BitmapData;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/aadhk/restpos/bean/BitmapData;->width:I

    return v0
.end method

.method public setDots(Ljava/util/BitSet;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aadhk/restpos/bean/BitmapData;->dots:Ljava/util/BitSet;

    .line 19
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/aadhk/restpos/bean/BitmapData;->height:I

    .line 27
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/aadhk/restpos/bean/BitmapData;->width:I

    .line 35
    return-void
.end method
