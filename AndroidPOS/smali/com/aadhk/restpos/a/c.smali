.class public final Lcom/aadhk/restpos/a/c;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/Boolean;

.field private c:[Ljava/lang/String;

.field private d:Lcom/aadhk/restpos/util/r;

.field private e:Landroid/view/LayoutInflater;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Boolean;[Ljava/lang/String;Lcom/aadhk/restpos/util/r;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            "Lcom/aadhk/restpos/util/r;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/aadhk/restpos/a/c;->a:[Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/aadhk/restpos/a/c;->b:[Ljava/lang/Boolean;

    .line 27
    iput-object p4, p0, Lcom/aadhk/restpos/a/c;->c:[Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/aadhk/restpos/a/c;->d:Lcom/aadhk/restpos/util/r;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/c;->e:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/c;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/c;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/c;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->d:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    if-nez p2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v1, Lcom/aadhk/restpos/a/e;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/e;-><init>(Lcom/aadhk/restpos/a/c;)V

    .line 53
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/e;->a:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f090098

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/a/e;->b:Landroid/widget/CheckBox;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 59
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/a/e;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/a/c;->a:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/a/c;->b:[Ljava/lang/Boolean;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, v0, Lcom/aadhk/restpos/a/e;->b:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    :cond_0
    iget-object v1, v0, Lcom/aadhk/restpos/a/e;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/a/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/aadhk/restpos/a/d;-><init>(Lcom/aadhk/restpos/a/c;ILcom/aadhk/restpos/a/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object p2

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/e;

    goto :goto_0
.end method
