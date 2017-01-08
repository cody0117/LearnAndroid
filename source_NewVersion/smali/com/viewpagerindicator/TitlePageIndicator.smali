.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "ProGuard"

# interfaces
.implements Lcom/viewpagerindicator/f;


# static fields
.field private static synthetic B:[I


# instance fields
.field private A:Lcom/viewpagerindicator/t;

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:I

.field private d:F

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Paint;

.field private m:Lcom/viewpagerindicator/r;

.field private n:Lcom/viewpagerindicator/s;

.field private final o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    sget v0, Lcom/viewpagerindicator/h;->e:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 122
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    .line 126
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    .line 127
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    .line 128
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    .line 131
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    .line 144
    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 145
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 165
    sget v6, Lcom/viewpagerindicator/j;->h:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 166
    sget v7, Lcom/viewpagerindicator/k;->i:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 167
    sget v8, Lcom/viewpagerindicator/l;->b:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 168
    sget v9, Lcom/viewpagerindicator/k;->g:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 169
    sget v10, Lcom/viewpagerindicator/k;->h:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 170
    sget v11, Lcom/viewpagerindicator/k;->j:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 171
    sget v12, Lcom/viewpagerindicator/l;->c:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 172
    sget v13, Lcom/viewpagerindicator/j;->i:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 173
    sget v14, Lcom/viewpagerindicator/i;->d:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 174
    sget v15, Lcom/viewpagerindicator/j;->j:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 175
    sget v16, Lcom/viewpagerindicator/k;->k:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 176
    sget v17, Lcom/viewpagerindicator/k;->l:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 177
    sget v18, Lcom/viewpagerindicator/k;->f:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 178
    sget v19, Lcom/viewpagerindicator/k;->m:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 181
    sget-object v19, Lcom/viewpagerindicator/m;->d:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 184
    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 185
    const/4 v7, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/r;->a(I)Lcom/viewpagerindicator/r;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/r;

    .line 186
    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    .line 187
    const/16 v7, 0x9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    .line 188
    const/16 v7, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    .line 189
    const/16 v7, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/s;->a(I)Lcom/viewpagerindicator/s;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/s;

    .line 190
    const/16 v7, 0xe

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    .line 191
    const/16 v5, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    .line 192
    const/4 v5, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    .line 193
    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    .line 194
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    .line 195
    const/16 v5, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    .line 197
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 198
    const/4 v7, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 199
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 208
    if-eqz v5, :cond_1

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 215
    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:I

    goto/16 :goto_0
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 864
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 865
    if-nez v0, :cond_0

    .line 866
    const-string v0, ""

    .line 868
    :cond_0
    return-object v0
.end method

.method private a(Landroid/graphics/Rect;FI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 649
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 650
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->B:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viewpagerindicator/r;->values()[Lcom/viewpagerindicator/r;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/viewpagerindicator/r;->a:Lcom/viewpagerindicator/r;

    invoke-virtual {v1}, Lcom/viewpagerindicator/r;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/viewpagerindicator/r;->b:Lcom/viewpagerindicator/r;

    invoke-virtual {v1}, Lcom/viewpagerindicator/r;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/viewpagerindicator/r;->c:Lcom/viewpagerindicator/r;

    invoke-virtual {v1}, Lcom/viewpagerindicator/r;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->B:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 662
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 663
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter

    .prologue
    .line 354
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v16

    .line 360
    if-eqz v16, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v5

    div-int/lit8 v6, v5, 0x2

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_3

    .line 371
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    move/from16 v0, v18

    if-lt v2, v0, :cond_5

    .line 375
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ViewPager has not been bound."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v10, v6

    int-to-float v11, v8

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    sub-int v11, v2, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    sub-float/2addr v11, v12

    int-to-float v12, v5

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v10

    iput v8, v7, Landroid/graphics/Rect;->right:I

    const/4 v8, 0x0

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto/16 :goto_0

    .line 379
    :cond_5
    add-int/lit8 v5, v16, -0x1

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v19, v2, v3

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v20

    .line 382
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float v6, v2, v3

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v21

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v12

    .line 385
    add-int v22, v20, v21

    .line 386
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float v7, v2, v3

    .line 388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 390
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_a

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    move v15, v3

    move v3, v2

    .line 396
    :goto_2
    const/high16 v2, 0x3e80

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_b

    const/4 v2, 0x1

    move v14, v2

    .line 397
    :goto_3
    const v2, 0x3d4ccccd

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_c

    const/4 v2, 0x1

    move v10, v2

    .line 398
    :goto_4
    const/high16 v2, 0x3e80

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e80

    div-float v23, v2, v3

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 402
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 403
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    .line 405
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 407
    :cond_6
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    .line 409
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 413
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez v2, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_5
    if-gez v4, :cond_d

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-ge v2, v5, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_6
    move/from16 v0, v16

    if-lt v4, v0, :cond_f

    .line 452
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    ushr-int/lit8 v24, v2, 0x18

    .line 453
    const/4 v2, 0x0

    move v13, v2

    :goto_7
    move/from16 v0, v16

    if-lt v13, v0, :cond_11

    .line 493
    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/s;

    sget-object v5, Lcom/viewpagerindicator/s;->b:Lcom/viewpagerindicator/s;

    if-ne v4, v5, :cond_19

    .line 496
    const/4 v4, 0x0

    .line 497
    neg-float v3, v3

    .line 498
    neg-float v2, v2

    move/from16 v25, v2

    move v2, v3

    move/from16 v3, v25

    .line 502
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    const/4 v6, 0x0

    int-to-float v7, v4

    const/high16 v8, 0x4000

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v7, v4

    const/high16 v8, 0x4000

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 508
    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 509
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator;->a()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/r;

    invoke-virtual {v5}, Lcom/viewpagerindicator/r;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 511
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v5, v4, v3

    move/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    add-float v5, v19, v3

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v3, v19, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 393
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 394
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    sub-float/2addr v2, v4

    move v15, v3

    move v3, v2

    goto/16 :goto_2

    .line 396
    :cond_b
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_3

    .line 397
    :cond_c
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_4

    .line 415
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    .line 417
    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_e

    .line 418
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v2, v8

    .line 420
    int-to-float v2, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v3, v2, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 422
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 424
    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v9, v11

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_e

    .line 425
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 426
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 414
    :cond_e
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto/16 :goto_5

    .line 434
    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 436
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_10

    .line 437
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    .line 439
    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 441
    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 443
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_10

    .line 444
    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 445
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 433
    :cond_10
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_6

    .line 455
    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 457
    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    if-le v2, v0, :cond_12

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_13

    :cond_12
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    if-le v2, v0, :cond_16

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v2, v0, :cond_16

    .line 458
    :cond_13
    if-ne v13, v15, :cond_17

    const/4 v2, 0x1

    move v11, v2

    .line 459
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    if-eqz v11, :cond_18

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    if-eqz v11, :cond_14

    if-eqz v14, :cond_14

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v4, v4

    sub-int v4, v24, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 472
    :cond_14
    add-int/lit8 v2, v18, -0x1

    if-ge v13, v2, :cond_15

    .line 473
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 475
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15

    .line 476
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 477
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 478
    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 481
    :cond_15
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 484
    if-eqz v11, :cond_16

    if-eqz v14, :cond_16

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 487
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 453
    :cond_16
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_7

    .line 458
    :cond_17
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_9

    .line 462
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 520
    :pswitch_1
    if-eqz v14, :cond_0

    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 521
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 525
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    add-float/2addr v5, v6

    .line 526
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v2, v6

    .line 527
    sub-float v3, v4, v3

    .line 529
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 530
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 531
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_19
    move v4, v12

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto/16 :goto_8

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 797
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 798
    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_1

    .line 800
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 810
    :cond_0
    :goto_0
    float-to-int v0, v0

    .line 812
    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 813
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 804
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 805
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v0, v2

    .line 806
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/r;

    sget-object v3, Lcom/viewpagerindicator/r;->a:Lcom/viewpagerindicator/r;

    if-eq v2, v3, :cond_0

    .line 807
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 755
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 757
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 760
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 765
    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    .line 766
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 768
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 771
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 775
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-nez v0, :cond_0

    .line 776
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 777
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 783
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 817
    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 818
    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 819
    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 820
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 821
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 825
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 826
    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 827
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    .line 828
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 544
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 548
    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 552
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 554
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    goto :goto_0

    .line 559
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 560
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 561
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    sub-float v2, v0, v2

    .line 563
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v3, :cond_4

    .line 564
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 565
    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    .line 569
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-eqz v3, :cond_0

    .line 570
    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 571
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 581
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v3, :cond_8

    .line 582
    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 583
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    .line 584
    int-to-float v5, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    .line 585
    int-to-float v4, v4

    const/high16 v6, 0x40c0

    div-float/2addr v4, v6

    .line 586
    sub-float v6, v5, v4

    .line 587
    add-float/2addr v4, v5

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 590
    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    .line 591
    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez v3, :cond_8

    .line 592
    if-eq v2, v7, :cond_0

    .line 593
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 597
    :cond_6
    cmpl-float v4, v5, v4

    if-lez v4, :cond_7

    .line 598
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_8

    .line 599
    if-eq v2, v7, :cond_0

    .line 600
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 606
    :cond_7
    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/t;

    if-eqz v3, :cond_8

    if-eq v2, v7, :cond_8

    .line 607
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/t;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 612
    :cond_8
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 614
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 619
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 620
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 621
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    goto/16 :goto_0

    .line 626
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 627
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 628
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    if-ne v3, v4, :cond_a

    .line 629
    if-nez v2, :cond_9

    move v0, v1

    .line 630
    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 632
    :cond_a
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    goto/16 :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
