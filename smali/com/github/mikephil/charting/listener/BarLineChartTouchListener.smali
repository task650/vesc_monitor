.class public Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;
.super Lcom/github/mikephil/charting/listener/ChartTouchListener;
.source "BarLineChartTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/listener/ChartTouchListener",
        "<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<+",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private mClosestDataSetToTouch:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

.field private mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mDecelerationLastTime:J

.field private mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mDragTriggerDist:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMinScalePointerDistance:F

.field private mSavedDist:F

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSavedXDist:F

.field private mSavedYDist:F

.field private mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 3
    .param p2, "touchMatrix"    # Landroid/graphics/Matrix;
    .param p3, "dragTriggerDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase",
            "<+",
            "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
            "<+",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    .prologue
    .local p1, "chart":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<+Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<+Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<+Lcom/github/mikephil/charting/data/Entry;>;>;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    .line 45
    invoke-static {v2, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 50
    invoke-static {v2, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 52
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    .line 53
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    .line 54
    iput v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 64
    invoke-static {v2, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 65
    invoke-static {v2, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 88
    iput-object p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 90
    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDragTriggerDist:F

    .line 92
    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMinScalePointerDistance:F

    .line 93
    return-void
.end method

.method private static getXDist(Landroid/view/MotionEvent;)F
    .locals 3
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 492
    .local v0, "x":F
    return v0
.end method

.method private static getYDist(Landroid/view/MotionEvent;)F
    .locals 3
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 503
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 504
    .local v0, "y":F
    return v0
.end method

.method private inverted()Z
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isAnyAxisInverted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 540
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    .line 540
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static midPoint(Lcom/github/mikephil/charting/utils/MPPointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p0, "point"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 465
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 466
    .local v0, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 467
    .local v1, "y":F
    div-float v2, v0, v4

    iput v2, p0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 468
    div-float v2, v1, v4

    iput v2, p0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 469
    return-void
.end method

.method private performDrag(Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "distanceX"    # F
    .param p3, "distanceY"    # F

    .prologue
    .line 317
    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 319
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 321
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 324
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->inverted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v1, v1, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    if-eqz v1, :cond_2

    .line 328
    neg-float p2, p2

    .line 334
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 336
    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, p1, p2, p3}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartTranslate(Landroid/view/MotionEvent;FF)V

    .line 338
    :cond_1
    return-void

    .line 330
    :cond_2
    neg-float p3, p3

    goto :goto_0
.end method

.method private performHighlightDrag(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 446
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 448
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 450
    :cond_0
    return-void
.end method

.method private performZoom(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v5

    .line 352
    .local v5, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v10

    .line 354
    .local v10, "totalDist":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMinScalePointerDistance:F

    cmpl-float v13, v10, v13

    if-lez v13, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v13, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v14, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v9

    .line 358
    .local v9, "t":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v3

    .line 361
    .local v3, "h":Lcom/github/mikephil/charting/utils/ViewPortHandler;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    .line 363
    sget-object v13, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->PINCH_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 365
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    div-float v6, v10, v13

    .line 367
    .local v6, "scale":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v6, v13

    if-gez v13, :cond_3

    const/4 v4, 0x1

    .line 369
    .local v4, "isZoomingOut":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 370
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreX()Z

    move-result v1

    .line 373
    .local v1, "canZoomMoreX":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 374
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreY()Z

    move-result v2

    .line 377
    .local v2, "canZoomMoreY":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    move v7, v6

    .line 378
    .local v7, "scaleX":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    move v8, v6

    .line 380
    .local v8, "scaleY":F
    :goto_4
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget v14, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v15, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v13, v7, v8, v14, v15}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 385
    if-eqz v5, :cond_1

    .line 386
    move-object/from16 v0, p1

    invoke-interface {v5, v0, v7, v8}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    .line 432
    .end local v1    # "canZoomMoreX":Z
    .end local v2    # "canZoomMoreY":Z
    .end local v4    # "isZoomingOut":Z
    .end local v6    # "scale":F
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    :cond_1
    :goto_5
    invoke-static {v9}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 435
    .end local v3    # "h":Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .end local v5    # "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .end local v9    # "t":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v10    # "totalDist":F
    :cond_2
    return-void

    .line 367
    .restart local v3    # "h":Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .restart local v5    # "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .restart local v6    # "scale":F
    .restart local v9    # "t":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v10    # "totalDist":F
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 371
    .restart local v4    # "isZoomingOut":Z
    :cond_4
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreX()Z

    move-result v1

    goto :goto_1

    .line 375
    .restart local v1    # "canZoomMoreX":Z
    :cond_5
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreY()Z

    move-result v2

    goto :goto_2

    .line 377
    .restart local v2    # "canZoomMoreY":Z
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    .line 378
    .restart local v7    # "scaleX":F
    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4

    .line 389
    .end local v1    # "canZoomMoreX":Z
    .end local v2    # "canZoomMoreY":Z
    .end local v4    # "isZoomingOut":Z
    .end local v6    # "scale":F
    .end local v7    # "scaleX":F
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 391
    sget-object v13, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->X_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 393
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getXDist(Landroid/view/MotionEvent;)F

    move-result v11

    .line 394
    .local v11, "xDist":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    div-float v7, v11, v13

    .line 396
    .restart local v7    # "scaleX":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v7, v13

    if-gez v13, :cond_9

    const/4 v4, 0x1

    .line 397
    .restart local v4    # "isZoomingOut":Z
    :goto_6
    if-eqz v4, :cond_a

    .line 398
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreX()Z

    move-result v1

    .line 401
    .restart local v1    # "canZoomMoreX":Z
    :goto_7
    if-eqz v1, :cond_1

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x3f800000    # 1.0f

    iget v15, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v7, v14, v15, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 406
    if-eqz v5, :cond_1

    .line 407
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v7, v13}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    goto :goto_5

    .line 396
    .end local v1    # "canZoomMoreX":Z
    .end local v4    # "isZoomingOut":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    .line 399
    .restart local v4    # "isZoomingOut":Z
    :cond_a
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreX()Z

    move-result v1

    goto :goto_7

    .line 410
    .end local v4    # "isZoomingOut":Z
    .end local v7    # "scaleX":F
    .end local v11    # "xDist":F
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v13, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 412
    sget-object v13, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->Y_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 414
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getYDist(Landroid/view/MotionEvent;)F

    move-result v12

    .line 415
    .local v12, "yDist":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    div-float v8, v12, v13

    .line 417
    .restart local v8    # "scaleY":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v8, v13

    if-gez v13, :cond_c

    const/4 v4, 0x1

    .line 418
    .restart local v4    # "isZoomingOut":Z
    :goto_8
    if-eqz v4, :cond_d

    .line 419
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomOutMoreY()Z

    move-result v2

    .line 422
    .restart local v2    # "canZoomMoreY":Z
    :goto_9
    if-eqz v2, :cond_1

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x3f800000    # 1.0f

    iget v15, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v8, v15, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 427
    if-eqz v5, :cond_1

    .line 428
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v13, v8}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartScale(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_5

    .line 417
    .end local v2    # "canZoomMoreY":Z
    .end local v4    # "isZoomingOut":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_8

    .line 420
    .restart local v4    # "isZoomingOut":Z
    :cond_d
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->canZoomInMoreY()Z

    move-result v2

    goto :goto_9
.end method

.method private saveTouchStart(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 305
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 307
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDataSetByTouchPoint(FF)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 308
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 479
    .local v0, "x":F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 480
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public computeScroll()V
    .locals 14

    .prologue
    .line 650
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 655
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v4, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 656
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v4, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 658
    iget-wide v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v13, v2, v3

    .line 660
    .local v13, "timeInterval":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v8, v2, v13

    .line 661
    .local v8, "distanceX":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v9, v2, v13

    .line 663
    .local v9, "distanceY":F
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v8

    iput v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 664
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v3, v9

    iput v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 666
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 669
    .local v12, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragXEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v3, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v10, v2, v3

    .line 670
    .local v10, "dragDistanceX":F
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragYEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v3, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v11, v2, v3

    .line 672
    .local v11, "dragDistanceY":F
    :goto_2
    invoke-direct {p0, v12, v10, v11}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(Landroid/view/MotionEvent;FF)V

    .line 674
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 675
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 677
    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 679
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    .line 680
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 669
    .end local v10    # "dragDistanceX":F
    .end local v11    # "dragDistanceY":F
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 670
    .restart local v10    # "dragDistanceX":F
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 685
    .restart local v11    # "dragDistanceY":F
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 686
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 688
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    goto/16 :goto_0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 518
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    .line 520
    .local v0, "vph":Lcom/github/mikephil/charting/utils/ViewPortHandler;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v3

    sub-float v1, p1, v3

    .line 521
    .local v1, "xTrans":F
    const/4 v2, 0x0

    .line 524
    .local v2, "yTrans":F
    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->inverted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    sub-float v3, p2, v3

    neg-float v2, v3

    .line 530
    :goto_0
    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v3

    return-object v3

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v2, v3

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x3fb33333    # 1.4f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 570
    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DOUBLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 572
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 574
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartDoubleTapped(Landroid/view/MotionEvent;)V

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDoubleTapToZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 583
    .local v1, "trans":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v5

    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget v3, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->zoom(FFFF)V

    .line 585
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    const-string v2, "BarlineChartTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Double-Tap, Zooming In, x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 592
    .end local v1    # "trans":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_2
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .restart local v1    # "trans":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_3
    move v4, v6

    .line 583
    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 632
    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->FLING:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 634
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 636
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 637
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 640
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 598
    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->LONG_PRESS:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 600
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 602
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 604
    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartLongPressed(Landroid/view/MotionEvent;)V

    .line 606
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 611
    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->SINGLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 613
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v1

    .line 615
    .local v1, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v1, :cond_0

    .line 616
    invoke-interface {v1, p1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartSingleTapped(Landroid/view/MotionEvent;)V

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isHighlightPerTapEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    const/4 v2, 0x0

    .line 626
    :goto_0
    return v2

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 624
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {p0, v0, p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/view/MotionEvent;)V

    .line 626
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    .line 100
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    :cond_0
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 105
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 106
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 107
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    :cond_1
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-nez v9, :cond_2

    .line 112
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    :cond_2
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 116
    const/4 v9, 0x1

    .line 288
    :goto_0
    return v9

    .line 119
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    .line 286
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v9

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 288
    const/4 v9, 0x1

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->startAction(Landroid/view/MotionEvent;)V

    .line 125
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    .line 127
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 133
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_4

    .line 135
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 137
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    .line 140
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getXDist(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    .line 143
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getYDist(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    .line 146
    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    .line 148
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 150
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isPinchZoomEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 151
    const/4 v9, 0x4

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    .line 162
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-static {v9, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->midPoint(Lcom/github/mikephil/charting/utils/MPPointF;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 153
    :cond_6
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v10

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v9

    if-eq v10, v9, :cond_8

    .line 154
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    :goto_3
    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto :goto_2

    :cond_7
    const/4 v9, 0x3

    goto :goto_3

    .line 156
    :cond_8
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    const/4 v9, 0x2

    :goto_4
    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto :goto_2

    :cond_9
    const/4 v9, 0x3

    goto :goto_4

    .line 168
    :pswitch_3
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 170
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 172
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragXEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v10, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v7, v9, v10

    .line 173
    .local v7, "x":F
    :goto_5
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragYEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v10, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v8, v9, v10

    .line 175
    .local v8, "y":F
    :goto_6
    invoke-direct {p0, p2, v7, v8}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_1

    .line 172
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 173
    .restart local v7    # "x":F
    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    .line 177
    .end local v7    # "x":F
    :cond_c
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_d

    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_f

    .line 179
    :cond_d
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->disableScroll()V

    .line 181
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleXEnabled()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isScaleYEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 182
    :cond_e
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performZoom(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 184
    :cond_f
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-nez v9, :cond_4

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v10, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v12, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v12, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v9, v10, v11, v12}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->distance(FFFF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDragTriggerDist:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 188
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 190
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isFullyZoomedOut()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 191
    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->hasNoDragOffset()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_10
    const/4 v3, 0x1

    .line 193
    .local v3, "shouldPan":Z
    :goto_7
    if-eqz v3, :cond_14

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v10, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 196
    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v10, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 199
    .local v1, "distanceY":F
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragXEnabled()Z

    move-result v9

    if-nez v9, :cond_11

    cmpl-float v9, v1, v0

    if-ltz v9, :cond_4

    :cond_11
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 200
    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragYEnabled()Z

    move-result v9

    if-nez v9, :cond_12

    cmpg-float v9, v1, v0

    if-gtz v9, :cond_4

    .line 202
    :cond_12
    sget-object v9, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 203
    const/4 v9, 0x1

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 191
    .end local v0    # "distanceX":F
    .end local v1    # "distanceY":F
    .end local v3    # "shouldPan":Z
    :cond_13
    const/4 v3, 0x0

    goto :goto_7

    .line 208
    .restart local v3    # "shouldPan":Z
    :cond_14
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isHighlightPerDragEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 209
    sget-object v9, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 211
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isHighlightPerDragEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 212
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performHighlightDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 223
    .end local v3    # "shouldPan":Z
    :pswitch_4
    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 224
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 225
    .local v2, "pointerId":I
    const/16 v9, 0x3e8

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMaximumFlingVelocity()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 226
    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 227
    .local v6, "velocityY":F
    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    .line 229
    .local v5, "velocityX":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumFlingVelocity()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_15

    .line 230
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumFlingVelocity()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_16

    .line 232
    :cond_15
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isDragDecelerationEnabled()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 234
    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->stopDeceleration()V

    .line 236
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    .line 238
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 239
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 241
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v5, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 242
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v6, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 244
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 249
    :cond_16
    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_17

    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_17

    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_17

    iget v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_18

    .line 257
    :cond_17
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 258
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 261
    :cond_18
    const/4 v9, 0x0

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    .line 262
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->enableScroll()V

    .line 264
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_19

    .line 265
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 266
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 269
    :cond_19
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 273
    .end local v2    # "pointerId":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":F
    .end local v6    # "velocityY":F
    :pswitch_5
    iget-object v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p2, v9}, Lcom/github/mikephil/charting/utils/Utils;->velocityTrackerPointerUpCleanUpIfNecessary(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V

    .line 275
    const/4 v9, 0x5

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_1

    .line 280
    :pswitch_6
    const/4 v9, 0x0

    iput v9, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    .line 281
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setDragTriggerDist(F)V
    .locals 1
    .param p1, "dragTriggerDistance"    # F

    .prologue
    .line 564
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDragTriggerDist:F

    .line 565
    return-void
.end method

.method public stopDeceleration()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 645
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 646
    return-void
.end method
