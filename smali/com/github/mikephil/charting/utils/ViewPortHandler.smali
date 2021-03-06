.class public Lcom/github/mikephil/charting/utils/ViewPortHandler;
.super Ljava/lang/Object;
.source "ViewPortHandler.java"


# instance fields
.field protected mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

.field protected mChartHeight:F

.field protected mChartWidth:F

.field protected mContentRect:Landroid/graphics/RectF;

.field protected final mMatrixTouch:Landroid/graphics/Matrix;

.field private mMaxScaleX:F

.field private mMaxScaleY:F

.field private mMinScaleX:F

.field private mMinScaleY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransOffsetX:F

.field private mTransOffsetY:F

.field private mTransX:F

.field private mTransY:F

.field protected final matrixBuffer:[F

.field protected valsBufferForFitScreen:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    .line 26
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 32
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 37
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 42
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 47
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 52
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 57
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 62
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    .line 72
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 77
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 317
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    .line 383
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    .line 412
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    .line 84
    return-void
.end method


# virtual methods
.method public canZoomInMoreX()Z
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomInMoreY()Z
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOutMoreX()Z
    .locals 2

    .prologue
    .line 730
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOutMoreY()Z
    .locals 2

    .prologue
    .line 748
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public centerViewPort([FLandroid/view/View;)V
    .locals 6
    .param p1, "transformedPts"    # [F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 397
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    .line 398
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 399
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 401
    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v4

    sub-float v1, v3, v4

    .line 402
    .local v1, "x":F
    aget v3, p1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v4

    sub-float v2, v3, v4

    .line 404
    .local v2, "y":F
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 406
    invoke-virtual {p0, v0, p2, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 407
    return-void
.end method

.method public contentBottom()F
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public contentHeight()F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public contentLeft()F
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public contentRight()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public contentTop()F
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public contentWidth()F
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public fitScreen()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 326
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->fitScreen(Landroid/graphics/Matrix;)V

    .line 327
    return-object v0
.end method

.method public fitScreen(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 335
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 336
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 338
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 340
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    .line 341
    .local v1, "vals":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 342
    aput v4, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 348
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 349
    const/4 v2, 0x5

    aput v4, v1, v2

    .line 350
    const/4 v2, 0x0

    aput v3, v1, v2

    .line 351
    const/4 v2, 0x4

    aput v3, v1, v2

    .line 353
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 354
    return-void
.end method

.method public getChartHeight()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    return v0
.end method

.method public getChartWidth()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    return v0
.end method

.method public getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMatrixTouch()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxScaleX()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    return v0
.end method

.method public getMaxScaleY()F
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    return v0
.end method

.method public getMinScaleX()F
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    return v0
.end method

.method public getMinScaleY()F
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    return v0
.end method

.method public getSmallestContentExtension()F
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    return v0
.end method

.method public hasChartDimens()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoDragOffset()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOutX()Z
    .locals 2

    .prologue
    .line 692
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOutY()Z
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBounds(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsBottom(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 614
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 615
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsLeft(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 601
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsRight(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 605
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 606
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsTop(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 610
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsX(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsY(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "content"    # Landroid/graphics/RectF;

    .prologue
    .line 441
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 443
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x2

    aget v2, v8, v9

    .line 444
    .local v2, "curTransX":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x0

    aget v0, v8, v9

    .line 446
    .local v0, "curScaleX":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x5

    aget v3, v8, v9

    .line 447
    .local v3, "curTransY":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x4

    aget v1, v8, v9

    .line 450
    .local v1, "curScaleY":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 453
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 455
    const/4 v7, 0x0

    .line 456
    .local v7, "width":F
    const/4 v4, 0x0

    .line 458
    .local v4, "height":F
    if-eqz p2, :cond_0

    .line 459
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 460
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 463
    :cond_0
    neg-float v8, v7

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    mul-float v5, v8, v9

    .line 464
    .local v5, "maxTransX":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    sub-float v8, v5, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    .line 466
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    mul-float v6, v4, v8

    .line 467
    .local v6, "maxTransY":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    add-float/2addr v8, v6

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    neg-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    .line 469
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x2

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    aput v10, v8, v9

    .line 470
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x0

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    aput v10, v8, v9

    .line 472
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x5

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    aput v10, v8, v9

    .line 473
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x4

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    aput v10, v8, v9

    .line 475
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 476
    return-void
.end method

.method public offsetBottom()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetLeft()F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public offsetRight()F
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetTop()F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "newMatrix"    # Landroid/graphics/Matrix;
    .param p2, "chart"    # Landroid/view/View;
    .param p3, "invalidate"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 425
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 427
    if-eqz p3, :cond_0

    .line 428
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 431
    return-object p1
.end method

.method public resetZoom(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 232
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 233
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 234
    return-void
.end method

.method public restrainViewPort(FFFF)V
    .locals 3
    .param p1, "offsetLeft"    # F
    .param p2, "offsetTop"    # F
    .param p3, "offsetRight"    # F
    .param p4, "offsetBottom"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    sub-float/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    return-void
.end method

.method public setChartDimens(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v1

    .line 96
    .local v1, "offsetLeft":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    .line 97
    .local v3, "offsetTop":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v2

    .line 98
    .local v2, "offsetRight":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v0

    .line 100
    .local v0, "offsetBottom":F
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 101
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 103
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 104
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 702
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 703
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 712
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 713
    return-void
.end method

.method public setMaximumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 500
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 501
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 503
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 505
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 506
    return-void
.end method

.method public setMaximumScaleY(F)V
    .locals 2
    .param p1, "yScale"    # F

    .prologue
    .line 550
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 551
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 553
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 555
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 556
    return-void
.end method

.method public setMinMaxScaleX(FF)V
    .locals 2
    .param p1, "minScaleX"    # F
    .param p2, "maxScaleX"    # F

    .prologue
    .line 516
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 517
    const/high16 p1, 0x3f800000    # 1.0f

    .line 519
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 520
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 522
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 523
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 525
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 526
    return-void
.end method

.method public setMinMaxScaleY(FF)V
    .locals 2
    .param p1, "minScaleY"    # F
    .param p2, "maxScaleY"    # F

    .prologue
    .line 560
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 561
    const/high16 p1, 0x3f800000    # 1.0f

    .line 563
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 564
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 566
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 567
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 569
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 570
    return-void
.end method

.method public setMinimumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 485
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 486
    const/high16 p1, 0x3f800000    # 1.0f

    .line 488
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 490
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 491
    return-void
.end method

.method public setMinimumScaleY(F)V
    .locals 2
    .param p1, "yScale"    # F

    .prologue
    .line 535
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 536
    const/high16 p1, 0x3f800000    # 1.0f

    .line 538
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 540
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 541
    return-void
.end method

.method public setZoom(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 287
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 288
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setZoom(FFLandroid/graphics/Matrix;)V

    .line 289
    return-object v0
.end method

.method public setZoom(FFFF)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 309
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 312
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 314
    return-object v0
.end method

.method public setZoom(FFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 293
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 294
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 295
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 296
    return-void
.end method

.method public translate([F)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transformedPts"    # [F

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->translate([FLandroid/graphics/Matrix;)V

    .line 366
    return-object v0
.end method

.method public translate([FLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "transformedPts"    # [F
    .param p2, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 377
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 378
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v3

    sub-float v0, v2, v3

    .line 379
    .local v0, "x":F
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    sub-float v1, v2, v3

    .line 380
    .local v1, "y":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 381
    return-void
.end method

.method public zoom(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 245
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 246
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFLandroid/graphics/Matrix;)V

    .line 247
    return-object v0
.end method

.method public zoom(FFFF)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 267
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "save":Landroid/graphics/Matrix;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 268
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 269
    return-object v5
.end method

.method public zoom(FFFFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 273
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 274
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 275
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 276
    return-void
.end method

.method public zoom(FFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 251
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 252
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 253
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 254
    return-void
.end method

.method public zoomIn(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomIn(FFLandroid/graphics/Matrix;)V

    .line 200
    return-object v0
.end method

.method public zoomIn(FFLandroid/graphics/Matrix;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const v1, 0x3fb33333    # 1.4f

    .line 204
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 206
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 207
    return-void
.end method

.method public zoomOut(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 215
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomOut(FFLandroid/graphics/Matrix;)V

    .line 217
    return-object v0
.end method

.method public zoomOut(FFLandroid/graphics/Matrix;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const v1, 0x3f333333    # 0.7f

    .line 221
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 222
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 223
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 224
    return-void
.end method
