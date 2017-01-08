.class public final Lcom/aadhk/restpos/a/bf;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/a/bf;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/a/bf;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/bf;->d:I

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/bf;->b:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 78
    if-nez p4, :cond_1

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 80
    new-instance v1, Lcom/aadhk/restpos/a/bg;

    invoke-direct {v1, p0, v8}, Lcom/aadhk/restpos/a/bg;-><init>(Lcom/aadhk/restpos/a/bf;B)V

    .line 81
    const v0, 0x7f0902e1

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bg;->a:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0902e2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0902e3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 89
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/a/bf;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 90
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/bf;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Report;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Report;->getId()I

    move-result v1

    .line 91
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    if-ne v1, v9, :cond_3

    .line 93
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getId()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 94
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    if-eq v1, v9, :cond_0

    const/16 v0, 0xf

    if-ne v1, v0, :cond_6

    .line 110
    :cond_0
    iget-object v0, v2, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_2
    return-object p4

    .line 86
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/bg;

    move-object v2, v0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/aadhk/restpos/a/bf;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v5

    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_3
    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    .line 99
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    iget v4, p0, Lcom/aadhk/restpos/a/bf;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v5

    iget-object v7, p0, Lcom/aadhk/restpos/a/bf;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_4
    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 102
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 105
    :cond_5
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, v2, Lcom/aadhk/restpos/a/bg;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/aadhk/restpos/a/bf;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v5

    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 112
    :cond_6
    iget-object v0, v2, Lcom/aadhk/restpos/a/bg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 44
    if-nez p3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 46
    new-instance v1, Lcom/aadhk/restpos/a/bh;

    invoke-direct {v1, p0, v4}, Lcom/aadhk/restpos/a/bh;-><init>(Lcom/aadhk/restpos/a/bf;B)V

    .line 47
    const v0, 0x7f090030

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bh;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0902e8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/bh;->b:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0902e7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/aadhk/restpos/a/bh;->c:Landroid/view/View;

    .line 50
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    if-nez p1, :cond_1

    .line 55
    iget-object v0, v1, Lcom/aadhk/restpos/a/bh;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/a/bf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Report;

    .line 60
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, v1, Lcom/aadhk/restpos/a/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_2
    iget-object v2, v1, Lcom/aadhk/restpos/a/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, v1, Lcom/aadhk/restpos/a/bh;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_3
    return-object p3

    .line 52
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/bh;

    move-object v1, v0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/bh;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v2, v1, Lcom/aadhk/restpos/a/bh;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 69
    :cond_3
    iget-object v0, v1, Lcom/aadhk/restpos/a/bh;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
