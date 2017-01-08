.class public final Lcom/aadhk/restpos/d/hu;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/ReservationActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/DatePicker;

.field private n:Landroid/widget/TimePicker;

.field private o:Lcom/aadhk/restpos/bean/Reservation;

.field private p:Lcom/aadhk/restpos/g/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 439
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/hu;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/NumberPicker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    if-eqz p1, :cond_2

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    instance-of v3, v0, Landroid/widget/NumberPicker;

    if-eqz v3, :cond_1

    .line 260
    check-cast v0, Landroid/widget/NumberPicker;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 261
    :cond_1
    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 262
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/hu;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 269
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Reservation;->getGuestNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v0

    if-nez v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setCalendarViewShown"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getReservedDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v3, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Reservation;->getReservedDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getReservedDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/util/o;->f(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_3
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 375
    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->n:Landroid/widget/TimePicker;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getReservedTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v3, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Reservation;->getReservedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getReservedTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/util/o;->g(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_2
    :goto_4
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 376
    return-void

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 374
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 375
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/hu;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 243
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x46

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/bean/Reservation;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/ReservationActivity;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/g/x;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->p:Lcom/aadhk/restpos/g/x;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/hu;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/aadhk/restpos/bean/Reservation;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Reservation;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-direct {p0}, Lcom/aadhk/restpos/d/hu;->a()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->a()Lcom/aadhk/restpos/g/x;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->p:Lcom/aadhk/restpos/g/x;

    .line 80
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/hu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "reservation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Reservation;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/aadhk/restpos/bean/Reservation;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Reservation;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hu;->a()V

    .line 88
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReservationActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f080085

    const/4 v4, 0x1

    const/16 v10, 0xa

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 287
    :sswitch_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 288
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_1
    new-instance v1, Lcom/aadhk/restpos/c/di;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v3}, Lcom/aadhk/restpos/ReservationActivity;->a()Lcom/aadhk/restpos/g/x;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/aadhk/restpos/c/di;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/aadhk/restpos/g/x;)V

    .line 291
    const v0, 0x7f0800e0

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/di;->setTitle(I)V

    .line 292
    new-instance v0, Lcom/aadhk/restpos/d/hv;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/d/hv;-><init>(Lcom/aadhk/restpos/d/hu;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/di;->a(Lcom/aadhk/product/library/b/f;)V

    .line 301
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/di;->show()V

    goto :goto_0

    .line 304
    :sswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :sswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 316
    invoke-static {v0}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v0

    .line 317
    if-lez v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 325
    :sswitch_3
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/aadhk/restpos/d/hu;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/d/hu;->f:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/hu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move v1, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v1

    if-lez v1, :cond_c

    .line 327
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/hz;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/hz;-><init>(Lcom/aadhk/restpos/d/hu;B)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-direct {v1, v2, v4, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 328
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 325
    :cond_4
    iget-object v9, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v11}, Lcom/aadhk/restpos/d/hu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Reservation;->getTableId()I

    move-result v9

    if-nez v9, :cond_6

    iget-object v8, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/aadhk/restpos/bean/Reservation;->setTableName(Ljava/lang/String;)V

    :goto_2
    iget-object v8, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v8, v1}, Lcom/aadhk/restpos/bean/Reservation;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Reservation;->setPhone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/Reservation;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1, v6}, Lcom/aadhk/restpos/bean/Reservation;->setNotes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-static {v7}, Lcom/aadhk/product/library/c/h;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/Reservation;->setGuestNumber(I)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v10, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    if-lt v2, v10, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    invoke-virtual {v6}, Landroid/widget/DatePicker;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/bean/Reservation;->setReservedDate(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->n:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v10, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->n:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v10, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/bean/Reservation;->setReservedTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getReservedDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Reservation;->getReservedTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    const v2, 0x7f080245

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/hu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v9, v8}, Lcom/aadhk/restpos/bean/Reservation;->setTableName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_b
    move v1, v4

    goto/16 :goto_1

    .line 330
    :cond_c
    new-instance v1, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/d/hx;

    invoke-direct {v2, p0, v3}, Lcom/aadhk/restpos/d/hx;-><init>(Lcom/aadhk/restpos/d/hu;B)V

    iget-object v4, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-direct {v1, v2, v4, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 331
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 336
    :sswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->o:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080244

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/d/hw;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/hw;-><init>(Lcom/aadhk/restpos/d/hu;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto/16 :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_3
        0x7f0900dc -> :sswitch_4
        0x7f0900f4 -> :sswitch_1
        0x7f0900f5 -> :sswitch_2
        0x7f090270 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/hu;->setHasOptionsMenu(Z)V

    .line 68
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const v0, 0x7f09031c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 382
    const v0, 0x7f090301

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 384
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 385
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const v0, 0x7f03009e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->c:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->d:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->e:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->f:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->g:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f090270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->h:Landroid/widget/ImageButton;

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->i:Landroid/widget/ImageButton;

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->n:Landroid/widget/TimePicker;

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->k:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hu;->l:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->a:Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->m:Landroid/widget/DatePicker;

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/hu;->a(Landroid/widget/FrameLayout;)V

    .line 120
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->n:Landroid/widget/TimePicker;

    invoke-direct {p0, v0}, Lcom/aadhk/restpos/d/hu;->a(Landroid/widget/FrameLayout;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hu;->b:Landroid/view/View;

    return-object v0
.end method
