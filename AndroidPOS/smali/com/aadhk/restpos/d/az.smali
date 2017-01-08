.class public final Lcom/aadhk/restpos/d/az;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/KitchenNoteActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/LayoutInflater;

.field private l:Lcom/aadhk/restpos/d/bf;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/restpos/bean/KitchenNote;

.field private o:Lcom/aadhk/restpos/g/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 498
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/bean/KitchenNote;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/KitchenNoteActivity;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/az;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    new-instance v0, Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/KitchenNote;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/aadhk/restpos/d/az;->d()V

    .line 131
    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/d/bf;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->l:Lcom/aadhk/restpos/d/bf;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/aadhk/restpos/d/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/d/bf;-><init>(Lcom/aadhk/restpos/d/az;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->l:Lcom/aadhk/restpos/d/bf;

    .line 248
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->l:Lcom/aadhk/restpos/d/bf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    return-void
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/az;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 319
    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    .line 323
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/kitchenNote_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/aadhk/restpos/util/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 332
    invoke-static {v3, v1, v2}, Lcom/aadhk/product/library/c/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 333
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080270

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 337
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/bo;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 338
    const v1, 0x7f080273

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bo;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080272

    invoke-virtual {p0, v4}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 343
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 344
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 347
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 348
    :catch_2
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/az;)Lcom/aadhk/restpos/g/g;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->o:Lcom/aadhk/restpos/g/g;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/az;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/aadhk/restpos/d/az;->c()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    if-eqz v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    .line 426
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :try_start_0
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 282
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 284
    :goto_0
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 285
    array-length v3, v2

    if-ne v3, v6, :cond_0

    .line 286
    new-instance v3, Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {v3}, Lcom/aadhk/restpos/bean/KitchenNote;-><init>()V

    .line 287
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aadhk/restpos/bean/KitchenNote;->setName(Ljava/lang/String;)V

    .line 288
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 301
    const v2, 0x7f080269

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v5

    sget-object v4, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 304
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 305
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 314
    :goto_1
    return-void

    .line 290
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    .line 291
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "import formmat error"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :catch_1
    move-exception v0

    .line 307
    new-instance v1, Lcom/aadhk/restpos/c/bo;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v1, v2}, Lcom/aadhk/restpos/c/bo;-><init>(Landroid/content/Context;)V

    .line 308
    const v2, 0x7f08026a

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "modifier.csv"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bo;->a(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bo;->show()V

    .line 311
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 294
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    .line 296
    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->l:Lcom/aadhk/restpos/d/bf;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bf;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->b()Lcom/aadhk/restpos/g/g;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->o:Lcom/aadhk/restpos/g/g;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/az;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "kitchenNote"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/aadhk/restpos/d/az;->c()V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/KitchenNote;->getListNote()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/aadhk/restpos/d/az;->d()V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/KitchenNoteActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 151
    :sswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    const v3, 0x7f0800ee

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/KitchenNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v3, v0}, Lcom/aadhk/restpos/bean/KitchenNote;->setName(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/KitchenNote;->setName(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/KitchenNote;->setListNote(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/KitchenNote;->getId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/bj;

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/bj;-><init>(Lcom/aadhk/restpos/d/az;Lcom/aadhk/restpos/bean/KitchenNote;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 159
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 161
    :cond_3
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/bh;

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/bh;-><init>(Lcom/aadhk/restpos/d/az;Lcom/aadhk/restpos/bean/KitchenNote;)V

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v2, v3, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 162
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v4}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 168
    :sswitch_1
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v3, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v3}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0802f7

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/d/az;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aadhk/restpos/d/az;->n:Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/KitchenNote;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/aadhk/restpos/d/bb;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bb;-><init>(Lcom/aadhk/restpos/d/az;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 171
    :sswitch_2
    new-instance v0, Lcom/aadhk/restpos/c/s;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v1, v4}, Lcom/aadhk/restpos/c/s;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/KitchenNote;)V

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/s;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/bc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/bc;-><init>(Lcom/aadhk/restpos/d/az;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/s;->show()V

    goto/16 :goto_0

    .line 174
    :sswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->l:Lcom/aadhk/restpos/d/bf;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/bf;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "kitchenNote[\\w\\W]*.csv"

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    new-instance v1, Lcom/aadhk/product/library/b/k;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const v2, 0x7f080285

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    new-instance v2, Lcom/aadhk/restpos/d/ba;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/ba;-><init>(Lcom/aadhk/restpos/d/az;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/product/library/b/k;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    const v3, 0x7f080286

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/KitchenNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 180
    :sswitch_5
    invoke-direct {p0}, Lcom/aadhk/restpos/d/az;->e()V

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090043 -> :sswitch_2
        0x7f090044 -> :sswitch_3
        0x7f090045 -> :sswitch_4
        0x7f090046 -> :sswitch_5
        0x7f09005a -> :sswitch_0
        0x7f0900dc -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/az;->setHasOptionsMenu(Z)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->k:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const v0, 0x7f090301

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 256
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const v0, 0x7f03007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->d:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->c:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->e:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->f:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->g:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->h:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->i:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/az;->j:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->b:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 357
    iget-object v0, p0, Lcom/aadhk/restpos/d/az;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    new-instance v1, Lcom/aadhk/restpos/c/s;

    iget-object v2, p0, Lcom/aadhk/restpos/d/az;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v1, v2, v0}, Lcom/aadhk/restpos/c/s;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/KitchenNote;)V

    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->setTitle(I)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/s;->b()V

    new-instance v2, Lcom/aadhk/restpos/d/bd;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/bd;-><init>(Lcom/aadhk/restpos/d/az;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/f;)V

    new-instance v2, Lcom/aadhk/restpos/d/be;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/be;-><init>(Lcom/aadhk/restpos/d/az;Lcom/aadhk/restpos/bean/KitchenNote;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/s;->a(Lcom/aadhk/product/library/b/g;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/s;->show()V

    .line 358
    return-void
.end method
