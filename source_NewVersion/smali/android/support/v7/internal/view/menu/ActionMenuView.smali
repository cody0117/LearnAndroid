.class public Landroid/support/v7/internal/view/menu/ActionMenuView;
.super Landroid/support/v7/internal/widget/LinearLayoutICS;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/internal/view/menu/MenuView;


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 61
    const/high16 v1, 0x4260

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 62
    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 64
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 379
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 381
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 382
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 384
    instance-of v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 386
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 389
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 390
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x8000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 392
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 395
    div-int v1, v7, p1

    .line 396
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    .line 397
    add-int/lit8 v1, v1, 0x1

    .line 399
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 404
    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 405
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 407
    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 408
    mul-int v0, v1, p1

    .line 409
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 411
    return v1

    .line 384
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 386
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 33
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 127
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 128
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v8

    add-int v18, v5, v8

    .line 133
    const/high16 v5, 0x4000

    move/from16 v0, v23

    if-ne v0, v5, :cond_0

    sub-int v5, v19, v18

    const/high16 v8, 0x4000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v8, v5

    .line 138
    :goto_0
    sub-int v24, v6, v7

    .line 141
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int v9, v24, v5

    .line 142
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    rem-int v5, v24, v5

    .line 144
    if-nez v9, :cond_1

    .line 146
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 360
    :goto_1
    return-void

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    sub-int v8, v19, v18

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/high16 v8, -0x8000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v8, v5

    goto :goto_0

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int/2addr v5, v9

    add-int v25, v6, v5

    .line 152
    const/16 v16, 0x0

    .line 154
    const/4 v15, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v11, 0x0

    .line 160
    const-wide/16 v12, 0x0

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v26

    .line 163
    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 164
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v14, 0x8

    if-eq v5, v14, :cond_21

    .line 166
    instance-of v0, v7, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    .line 170
    add-int/lit8 v14, v6, 0x1

    .line 172
    if-eqz v20, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v5, v6, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 178
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 179
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 180
    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 181
    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 182
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 183
    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 184
    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 185
    if-eqz v20, :cond_3

    move-object v6, v7

    check-cast v6, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 188
    iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    .line 190
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v7, v0, v6, v8, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    .line 193
    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 194
    iget-boolean v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v6, :cond_20

    .line 195
    add-int/lit8 v6, v10, 0x1

    .line 197
    :goto_5
    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_1f

    .line 198
    const/4 v5, 0x1

    .line 201
    :goto_6
    sub-int v11, v9, v20

    .line 202
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move/from16 v0, v16

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 203
    const/4 v9, 0x1

    move/from16 v0, v20

    if-ne v0, v9, :cond_1e

    .line 204
    const/4 v9, 0x1

    shl-int v9, v9, v17

    int-to-long v9, v9

    or-long/2addr v9, v12

    move v12, v7

    move v13, v11

    move v7, v14

    move v11, v5

    move-wide/from16 v31, v9

    move v9, v15

    move v10, v6

    move-wide/from16 v5, v31

    .line 163
    :goto_7
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v5

    move v6, v7

    goto/16 :goto_2

    .line 185
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move v6, v9

    .line 188
    goto :goto_4

    .line 210
    :cond_5
    if-eqz v11, :cond_6

    const/4 v5, 0x2

    if-ne v6, v5, :cond_6

    const/4 v5, 0x1

    move v7, v5

    .line 215
    :goto_8
    const/16 v17, 0x0

    move-wide/from16 v20, v12

    move/from16 v18, v9

    .line 216
    :goto_9
    if-lez v10, :cond_c

    if-lez v18, :cond_c

    .line 217
    const v14, 0x7fffffff

    .line 218
    const-wide/16 v12, 0x0

    .line 219
    const/4 v9, 0x0

    .line 220
    const/4 v5, 0x0

    move/from16 v22, v5

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 225
    iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1d

    .line 226
    iget v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v14, :cond_7

    .line 231
    iget v9, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 232
    const/4 v5, 0x1

    shl-int v5, v5, v22

    int-to-long v12, v5

    .line 233
    const/4 v5, 0x1

    .line 220
    :goto_b
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v5

    goto :goto_a

    .line 210
    :cond_6
    const/4 v5, 0x0

    move v7, v5

    goto :goto_8

    .line 234
    :cond_7
    iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v5, v14, :cond_1d

    .line 235
    const/4 v5, 0x1

    shl-int v5, v5, v22

    int-to-long v0, v5

    move-wide/from16 v27, v0

    or-long v12, v12, v27

    .line 236
    add-int/lit8 v5, v9, 0x1

    move v9, v14

    goto :goto_b

    .line 241
    :cond_8
    or-long v20, v20, v12

    .line 243
    move/from16 v0, v18

    if-gt v9, v0, :cond_c

    .line 244
    add-int/lit8 v22, v14, 0x1

    .line 250
    const/4 v5, 0x0

    move v14, v5

    move/from16 v9, v18

    move-wide/from16 v17, v20

    :goto_c
    move/from16 v0, v26

    if-ge v14, v0, :cond_b

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 252
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 253
    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v27, v0

    and-long v27, v27, v12

    const-wide/16 v29, 0x0

    cmp-long v21, v27, v29

    if-nez v21, :cond_9

    .line 255
    iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v22

    if-ne v5, v0, :cond_1c

    .line 256
    const/4 v5, 0x1

    shl-int/2addr v5, v14

    int-to-long v0, v5

    move-wide/from16 v20, v0

    or-long v17, v17, v20

    move v5, v9

    .line 250
    :goto_d
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v5

    goto :goto_c

    .line 261
    :cond_9
    if-eqz v7, :cond_a

    iget-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v0

    add-int v21, v21, v25

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    :cond_a
    iget v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 266
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 267
    add-int/lit8 v5, v9, -0x1

    goto :goto_d

    .line 270
    :cond_b
    const/4 v5, 0x1

    move-wide/from16 v20, v17

    move/from16 v17, v5

    move/from16 v18, v9

    .line 271
    goto/16 :goto_9

    :cond_c
    move-wide/from16 v12, v20

    .line 276
    if-nez v11, :cond_10

    const/4 v5, 0x1

    if-ne v6, v5, :cond_10

    const/4 v5, 0x1

    .line 277
    :goto_e
    if-lez v18, :cond_1b

    const-wide/16 v9, 0x0

    cmp-long v7, v12, v9

    if-eqz v7, :cond_1b

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v18

    if-lt v0, v6, :cond_d

    if-nez v5, :cond_d

    const/4 v6, 0x1

    if-le v15, v6, :cond_1b

    .line 279
    :cond_d
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-float v6, v6

    .line 281
    if-nez v5, :cond_1a

    .line 283
    const-wide/16 v9, 0x1

    and-long/2addr v9, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v9, v14

    if-eqz v5, :cond_e

    .line 284
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 285
    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_e

    .line 286
    const/high16 v5, 0x3f00

    sub-float/2addr v6, v5

    .line 289
    :cond_e
    const/4 v5, 0x1

    add-int/lit8 v7, v26, -0x1

    shl-int/2addr v5, v7

    int-to-long v9, v5

    and-long/2addr v9, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v9, v14

    if-eqz v5, :cond_1a

    .line 290
    add-int/lit8 v5, v26, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 291
    iget-boolean v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_1a

    .line 292
    const/high16 v5, 0x3f00

    sub-float v5, v6, v5

    .line 297
    :goto_f
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_11

    mul-int v6, v18, v25

    int-to-float v6, v6

    div-float v5, v6, v5

    float-to-int v5, v5

    move v6, v5

    .line 300
    :goto_10
    const/4 v5, 0x0

    move v9, v5

    move/from16 v7, v17

    :goto_11
    move/from16 v0, v26

    if-ge v9, v0, :cond_16

    .line 301
    const/4 v5, 0x1

    shl-int/2addr v5, v9

    int-to-long v10, v5

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-eqz v5, :cond_15

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 306
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 307
    instance-of v10, v10, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_12

    .line 309
    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 310
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 311
    if-nez v9, :cond_f

    iget-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v7, :cond_f

    .line 314
    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 316
    :cond_f
    const/4 v5, 0x1

    .line 300
    :goto_12
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v5

    goto :goto_11

    .line 276
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 297
    :cond_11
    const/4 v5, 0x0

    move v6, v5

    goto :goto_10

    .line 317
    :cond_12
    iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_13

    .line 318
    iput v6, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 319
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 320
    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 321
    const/4 v5, 0x1

    goto :goto_12

    .line 326
    :cond_13
    if-eqz v9, :cond_14

    .line 327
    div-int/lit8 v10, v6, 0x2

    iput v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 329
    :cond_14
    add-int/lit8 v10, v26, -0x1

    if-eq v9, v10, :cond_15

    .line 330
    div-int/lit8 v10, v6, 0x2

    iput v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_15
    move v5, v7

    goto :goto_12

    .line 335
    :cond_16
    const/4 v5, 0x0

    move v9, v5

    .line 339
    :goto_13
    if-eqz v7, :cond_18

    .line 340
    const/4 v5, 0x0

    move v6, v5

    :goto_14
    move/from16 v0, v26

    if-ge v6, v0, :cond_18

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 342
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 344
    iget-boolean v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-eqz v10, :cond_17

    .line 345
    iget v10, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v10, v10, v25

    iget v5, v5, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v5, v10

    .line 349
    const/high16 v10, 0x4000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v5, v8}, Landroid/view/View;->measure(II)V

    .line 340
    :cond_17
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_14

    .line 354
    :cond_18
    const/high16 v5, 0x4000

    move/from16 v0, v23

    if-eq v0, v5, :cond_19

    .line 358
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 359
    mul-int v5, v9, v25

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1

    :cond_19
    move/from16 v16, v19

    goto :goto_15

    :cond_1a
    move v5, v6

    goto/16 :goto_f

    :cond_1b
    move/from16 v7, v17

    move/from16 v9, v18

    goto :goto_13

    :cond_1c
    move v5, v9

    goto/16 :goto_d

    :cond_1d
    move v5, v9

    move v9, v14

    goto/16 :goto_b

    :cond_1e
    move v10, v6

    move v9, v15

    move-wide/from16 v31, v12

    move v12, v7

    move v13, v11

    move v11, v5

    move v7, v14

    move-wide/from16 v5, v31

    goto/16 :goto_7

    :cond_1f
    move v5, v11

    goto/16 :goto_6

    :cond_20
    move v6, v10

    goto/16 :goto_5

    :cond_21
    move v7, v6

    move-wide v5, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    goto/16 :goto_7
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 534
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 509
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 511
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 512
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 517
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 522
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 524
    iget v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 525
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 529
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 540
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .parameter

    .prologue
    .line 556
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 557
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 558
    const/4 v2, 0x0

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 560
    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    .line 562
    :cond_0
    if-lez p1, :cond_1

    instance-of v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 563
    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    .line 565
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 553
    return-void
.end method

.method public invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 90
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onDetachedFromWindow()V

    .line 496
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 497
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_1

    .line 417
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onLayout(ZIIII)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 422
    add-int v0, p3, p5

    div-int/lit8 v7, v0, 0x2

    .line 423
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getSupportDividerWidth()I

    move-result v8

    .line 424
    const/4 v3, 0x0

    .line 427
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    .line 428
    const/4 v4, 0x0

    .line 429
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_4

    .line 430
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 431
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 432
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 436
    iget-boolean v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 438
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    add-int/2addr v1, v8

    .line 441
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 442
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v0, v10, v0

    .line 443
    sub-int v10, v0, v1

    .line 444
    div-int/lit8 v11, v4, 0x2

    sub-int v11, v7, v11

    .line 445
    add-int/2addr v4, v11

    .line 446
    invoke-virtual {v9, v10, v11, v0, v4}, Landroid/view/View;->layout(IIII)V

    .line 448
    sub-int v0, v2, v1

    .line 449
    const/4 v1, 0x1

    move v2, v1

    move v1, v3

    .line 429
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 452
    sub-int v0, v2, v0

    .line 454
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 455
    add-int/lit8 v1, v3, 0x1

    move v2, v4

    goto :goto_2

    .line 461
    :cond_4
    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    if-nez v4, :cond_5

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 466
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    .line 467
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 468
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    .line 469
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 473
    :cond_5
    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :goto_3
    sub-int v0, v3, v0

    .line 474
    const/4 v1, 0x0

    if-lez v0, :cond_7

    div-int v0, v2, v0

    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 476
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 477
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-ge v2, v6, :cond_0

    .line 478
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 479
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 480
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_8

    iget-boolean v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_8

    .line 481
    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    .line 485
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 486
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 487
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    .line 488
    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 489
    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 477
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    .line 473
    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 474
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v2

    move v1, v3

    move v2, v4

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x4000

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 98
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v3, v0, :cond_0

    .line 99
    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 105
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v3, :cond_1

    .line 106
    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 110
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 122
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    move v1, v2

    .line 115
    :goto_2
    if-ge v1, v3, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    .line 118
    iput v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 120
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 505
    return-void
.end method

.method public setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuView;->mPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 72
    return-void
.end method
