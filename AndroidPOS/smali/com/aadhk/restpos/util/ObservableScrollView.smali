.class public Lcom/aadhk/restpos/util/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/util/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/util/n;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    .line 26
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/util/ObservableScrollView;->a:Lcom/aadhk/restpos/util/n;

    invoke-interface {v0, p2}, Lcom/aadhk/restpos/util/n;->a(I)V

    .line 34
    :cond_0
    return-void
.end method
