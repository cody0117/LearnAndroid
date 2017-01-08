.class public Lcom/aadhk/restpos/KitchenNoteActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Note;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/aadhk/restpos/b/l;

.field private n:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/KitchenNoteActivity;)Lcom/aadhk/restpos/b/l;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->m:Lcom/aadhk/restpos/b/l;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->m:Lcom/aadhk/restpos/b/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/l;->b(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->l:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ao;

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->l:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/a/ao;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f09027e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->setTitle(I)V

    .line 43
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    new-instance v0, Lcom/aadhk/restpos/b/l;

    iget-object v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->m:Lcom/aadhk/restpos/b/l;

    .line 46
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a()V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 53
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 136
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 137
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->l:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Note;

    .line 130
    new-instance v1, Lcom/aadhk/restpos/c/s;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/s;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Note;)V

    const v2, 0x7f090285

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/s;->b()V

    new-instance v2, Lcom/aadhk/restpos/y;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/y;-><init>(Lcom/aadhk/restpos/KitchenNoteActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/z;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/z;-><init>(Lcom/aadhk/restpos/KitchenNoteActivity;Lcom/aadhk/restpos/bean/Note;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/s;->show()V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/aadhk/restpos/c/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/c/s;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Note;)V

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/s;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/ab;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/ab;-><init>(Lcom/aadhk/restpos/KitchenNoteActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/s;->show()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
