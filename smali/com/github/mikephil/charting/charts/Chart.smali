.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "Chart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MPAndroidChart"

.field public static final PAINT_CENTER_TEXT:I = 0xe

.field public static final PAINT_DESCRIPTION:I = 0xb

.field public static final PAINT_GRID_BACKGROUND:I = 0x4

.field public static final PAINT_HOLE:I = 0xd

.field public static final PAINT_INFO:I = 0x7

.field public static final PAINT_LEGEND_LABEL:I = 0x12


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected mData:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

.field protected mDescPaint:Landroid/graphics/Paint;

.field protected mDescription:Lcom/github/mikephil/charting/components/Description;

.field private mDragDecelerationEnabled:Z

.field private mDragDecelerationFrictionCoef:F

.field protected mDrawMarkers:Z

.field private mExtraBottomOffset:F

.field private mExtraLeftOffset:F

.field private mExtraRightOffset:F

.field private mExtraTopOffset:F

.field private mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field protected mHighLightPerTapEnabled:Z

.field protected mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

.field protected mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mInfoPaint:Landroid/graphics/Paint;

.field protected mJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field protected mLogEnabled:Z

.field protected mMarker:Lcom/github/mikephil/charting/components/IMarker;

.field protected mMaxHighlightDistance:F

.field private mNoDataText:Ljava/lang/String;

.field private mOffsetsCalculated:Z

.field protected mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

.field protected mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field protected mTouchEnabled:Z

.field private mUnbind:Z

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 102
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 394
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 463
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 709
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1733
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 185
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 102
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 394
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 463
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 709
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1733
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 193
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 84
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 89
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 97
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 102
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 124
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 146
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 175
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 394
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 463
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 709
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1733
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 201
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 202
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1743
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1744
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1746
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1747
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 1748
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    .line 1747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1750
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1752
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addViewportJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1635
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasChartDimens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    .line 1640
    :goto_0
    return-void

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public animateX(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 933
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(I)V

    .line 934
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 902
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 903
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 854
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 855
    return-void
.end method

.method public animateXY(II)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I

    .prologue
    .line 958
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(II)V

    .line 959
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 889
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 890
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/EasingFunction;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 841
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 842
    return-void
.end method

.method public animateY(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 945
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(I)V

    .line 946
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 915
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 916
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 867
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 868
    return-void
.end method

.method protected abstract calcMinMax()V
.end method

.method protected abstract calculateOffsets()V
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 315
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 317
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 318
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 319
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 320
    return-void
.end method

.method public clearAllViewportJobs()V
    .locals 1

    .prologue
    .line 1624
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1625
    return-void
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->clearValues()V

    .line 328
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 329
    return-void
.end method

.method public disableScroll()V
    .locals 2

    .prologue
    .line 1283
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1284
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1285
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1286
    :cond_0
    return-void
.end method

.method protected drawDescription(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 425
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Description;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Description;->getPosition()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 429
    .local v0, "position":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 430
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 431
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 437
    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getXOffset()F

    move-result v4

    sub-float v1, v3, v4

    .line 439
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Description;->getYOffset()F

    move-result v4

    sub-float v2, v3, v4

    .line 445
    .local v2, "y":F
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Description;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    .end local v0    # "position":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    return-void

    .line 441
    .restart local v0    # "position":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_1
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 442
    .restart local v1    # "x":F
    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .restart local v2    # "y":F
    goto :goto_0
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 722
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->isDrawMarkersEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v6

    if-nez v6, :cond_1

    .line 750
    :cond_0
    return-void

    .line 725
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 727
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v6, v3

    .line 729
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v5

    .line 731
    .local v5, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 732
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 735
    .local v1, "entryIndex":I
    if-eqz v0, :cond_2

    int-to-float v6, v1

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 725
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 738
    :cond_3
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v4

    .line 741
    .local v4, "pos":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v7, v4, v9

    aget v8, v4, v10

    invoke-virtual {v6, v7, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 745
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v6, v0, v2}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 748
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    aget v7, v4, v9

    aget v8, v4, v10

    invoke-interface {v6, p1, v7, v8}, Lcom/github/mikephil/charting/components/IMarker;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method public enableScroll()V
    .locals 2

    .prologue
    .line 1292
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1293
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1294
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1295
    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;
    .locals 1

    .prologue
    .line 775
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    return-object v0
.end method

.method public getCenter()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1056
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOfView()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .prologue
    .line 1456
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .prologue
    .line 1068
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1466
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1468
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1470
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1471
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1479
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->draw(Landroid/graphics/Canvas;)V

    .line 1481
    return-object v2

    .line 1477
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1276
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1402
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .locals 1

    .prologue
    .line 985
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    return-object v0
.end method

.method public getDescription()Lcom/github/mikephil/charting/components/Description;
    .locals 1

    .prologue
    .line 1244
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    return v0
.end method

.method public getExtraBottomOffset()F
    .locals 1

    .prologue
    .line 1126
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    .prologue
    .line 1140
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    .prologue
    .line 1112
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    .prologue
    .line 1098
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    return v0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 675
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 676
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x0

    .line 679
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    goto :goto_0
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    return-object v0
.end method

.method public getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;
    .locals 1

    .prologue
    .line 1436
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1649
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 1

    .prologue
    .line 1255
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    return-object v0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/renderer/LegendRenderer;
    .locals 1

    .prologue
    .line 1265
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    return-object v0
.end method

.method public getMarker()Lcom/github/mikephil/charting/components/IMarker;
    .locals 1

    .prologue
    .line 1215
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    return-object v0
.end method

.method protected getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 3
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 760
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawY()F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/IMarker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getMarker()Lcom/github/mikephil/charting/components/IMarker;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHighlightDistance()F
    .locals 1

    .prologue
    .line 467
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    return v0
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .locals 1

    .prologue
    .line 1013
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/github/mikephil/charting/listener/ChartTouchListener;
    .locals 1

    .prologue
    .line 698
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-object v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1355
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1362
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1357
    :sswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1359
    :sswitch_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1355
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1

    .prologue
    .line 1421
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-object v0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .locals 1

    .prologue
    .line 1412
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    return-object v0
.end method

.method public getXAxis()Lcom/github/mikephil/charting/components/XAxis;
    .locals 1

    .prologue
    .line 975
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    .prologue
    .line 1036
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    .prologue
    .line 1041
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    return v0
.end method

.method public getXRange()F
    .locals 1

    .prologue
    .line 1046
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    return v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 1022
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 1031
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v0

    return v0
.end method

.method public highlightValue(FFI)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dataSetIndex"    # I

    .prologue
    .line 575
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FFIZ)V

    .line 576
    return-void
.end method

.method public highlightValue(FFIZ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dataSetIndex"    # I
    .param p4, "callListener"    # Z

    .prologue
    .line 599
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 600
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    invoke-virtual {p0, v0, p4}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    goto :goto_0
.end method

.method public highlightValue(FI)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 563
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FIZ)V

    .line 564
    return-void
.end method

.method public highlightValue(FIZ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "dataSetIndex"    # I
    .param p3, "callListener"    # Z

    .prologue
    .line 586
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(FFIZ)V

    .line 587
    return-void
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1
    .param p1, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 613
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 614
    return-void
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V
    .locals 5
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "callListener"    # Z

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v4, 0x0

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-nez p1, :cond_1

    .line 629
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 650
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v1

    if-nez v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {v1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    .line 661
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 662
    return-void

    .line 632
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_2

    .line 633
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Highlighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 636
    if-nez v0, :cond_3

    .line 637
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 638
    const/4 p1, 0x0

    goto :goto_0

    .line 642
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_0

    .line 656
    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {v1, v0, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_1
.end method

.method public highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0
    .param p1, "highs"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 547
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 549
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 552
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 553
    return-void
.end method

.method protected init()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setWillNotDraw(Z)V

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 213
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-direct {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->init(Landroid/content/Context;)V

    .line 226
    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 228
    new-instance v0, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 229
    new-instance v0, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 231
    new-instance v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 233
    new-instance v0, Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/XAxis;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    goto :goto_0
.end method

.method public isDragDecelerationEnabled()Z
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    return v0
.end method

.method public isDrawMarkerViewsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1367
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->isDrawMarkersEnabled()Z

    move-result v0

    return v0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 1

    .prologue
    .line 1382
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 346
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHighlightPerTapEnabled()Z
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    return v0
.end method

.method public isLogEnabled()Z
    .locals 1

    .prologue
    .line 1159
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    return v0
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1722
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1726
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    if-eqz v0, :cond_0

    .line 1727
    invoke-direct {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    .line 1728
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x1

    .line 400
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v2, :cond_2

    .line 402
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    .local v1, "hasText":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 406
    .local v0, "c":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    .end local v0    # "c":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v1    # "hasText":Z
    :cond_0
    :goto_1
    return-void

    .line 402
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 412
    :cond_2
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    if-nez v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->calculateOffsets()V

    .line 415
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1655
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1656
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1662
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1663
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v0, v1

    .line 1665
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumWidth()I

    move-result v1

    .line 1666
    invoke-static {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v2

    .line 1665
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1668
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1669
    invoke-static {v0, p2}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v3

    .line 1668
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1664
    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setMeasuredDimension(II)V

    .line 1671
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/16 v3, 0x2710

    .line 1675
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_0

    .line 1676
    const-string v1, "MPAndroidChart"

    const-string v2, "OnSizeChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_0
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v3, :cond_3

    if-ge p2, v3, :cond_3

    .line 1679
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_1

    .line 1680
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting chart dimens, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    .line 1689
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 1691
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1692
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1683
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_2

    .line 1684
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*Avoiding* setting chart dimens! width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1695
    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1697
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1698
    return-void
.end method

.method public removeViewportJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1620
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1621
    return-void
.end method

.method public saveToGallery(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1611
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const-string v2, ""

    const-string v3, "MPAndroidChart-Library Save"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/Chart;->saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    return v0
.end method

.method public saveToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 17
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "subFolderPath"    # Ljava/lang/String;
    .param p3, "fileDescription"    # Ljava/lang/String;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "quality"    # I

    .prologue
    .line 1534
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p5, :cond_0

    const/16 v15, 0x64

    move/from16 v0, p5

    if-le v0, v15, :cond_1

    .line 1535
    :cond_0
    const/16 p5, 0x32

    .line 1537
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1539
    .local v4, "currentTime":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1540
    .local v6, "extBaseDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/DCIM/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1542
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1543
    const/4 v15, 0x0

    .line 1598
    :goto_0
    return v15

    .line 1547
    :cond_2
    const-string v9, ""

    .line 1548
    .local v9, "mimeType":Ljava/lang/String;
    sget-object v15, Lcom/github/mikephil/charting/charts/Chart$2;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1561
    const-string v9, "image/jpeg"

    .line 1562
    const-string v15, ".jpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ".jpeg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1563
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1567
    :cond_3
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1568
    .local v8, "filePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1570
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1573
    .local v2, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1575
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 1576
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1584
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 1586
    .local v12, "size":J
    new-instance v14, Landroid/content/ContentValues;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 1589
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "title"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v15, "_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v15, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1592
    const-string v15, "mime_type"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v15, "description"

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v15, "orientation"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1595
    const-string v15, "_data"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v15, "_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1550
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "size":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :pswitch_0
    const-string v9, "image/png"

    .line 1551
    const-string v15, ".png"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1552
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1555
    :pswitch_1
    const-string v9, "image/webp"

    .line 1556
    const-string v15, ".webp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1557
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".webp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1578
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1579
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1581
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1598
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "size":J
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1578
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v12    # "size":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    move-object v10, v11

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveToPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "pathOnSD"    # Ljava/lang/String;

    .prologue
    .line 1496
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1498
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1500
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    .end local v2    # "stream":Ljava/io/OutputStream;
    .local v3, "stream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x28

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1510
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1516
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :goto_0
    return v4

    .line 1511
    :catch_0
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1513
    const/4 v4, 0x0

    goto :goto_0

    .line 1511
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v3    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TT;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 291
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setupDefaultFormatter(FF)V

    .line 298
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 299
    .local v0, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->needsFormatter()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-ne v2, v3, :cond_2

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    goto :goto_1

    .line 304
    .end local v0    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 306
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "MPAndroidChart"

    const-string v2, "Data is set."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDescription(Lcom/github/mikephil/charting/components/Description;)V
    .locals 0
    .param p1, "desc"    # Lcom/github/mikephil/charting/components/Description;

    .prologue
    .line 1234
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 1235
    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 791
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 792
    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 1
    .param p1, "newValue"    # F

    .prologue
    .line 813
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 814
    const/4 p1, 0x0

    .line 816
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 817
    const p1, 0x3f7fbe77    # 0.999f

    .line 819
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 820
    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1372
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    .line 1373
    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1393
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1394
    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1119
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    .line 1120
    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1133
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 1134
    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 1081
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 1082
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 1083
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 1084
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 1085
    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1105
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    .line 1106
    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1091
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    .line 1092
    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v2, 0x0

    .line 1708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1710
    if-eqz p1, :cond_0

    .line 1711
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1718
    :goto_0
    return-void

    .line 1713
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1715
    :cond_1
    const-string v0, "MPAndroidChart"

    const-string v1, "Cannot enable/disable hardware acceleration for devices below API level 11."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 506
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 507
    return-void
.end method

.method public setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V
    .locals 0
    .param p1, "highlighter"    # Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    .prologue
    .line 1446
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    .line 1447
    return-void
.end method

.method protected setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "highs"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 529
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1150
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 1151
    return-void
.end method

.method public setMarker(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0
    .param p1, "marker"    # Lcom/github/mikephil/charting/components/IMarker;

    .prologue
    .line 1206
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    .line 1207
    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0
    .param p1, "v"    # Lcom/github/mikephil/charting/components/IMarker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 1221
    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 1
    .param p1, "distDp"    # F

    .prologue
    .line 477
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 478
    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1169
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 1170
    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1178
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1179
    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 1187
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1188
    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .prologue
    .line 1004
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 1005
    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .prologue
    .line 994
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 995
    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .prologue
    .line 689
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 690
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "which"    # I

    .prologue
    .line 1338
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p2, :sswitch_data_0

    .line 1346
    :goto_0
    return-void

    .line 1340
    :sswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1343
    :sswitch_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1338
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/github/mikephil/charting/renderer/DataRenderer;

    .prologue
    .line 1431
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-eqz p1, :cond_0

    .line 1432
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 1433
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1197
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 1198
    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1763
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 1764
    return-void
.end method

.method protected setupDefaultFormatter(FF)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 376
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 378
    .local v1, "reference":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 380
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 385
    :goto_0
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->getDecimals(F)I

    move-result v0

    .line 388
    .local v0, "digits":I
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->setup(I)V

    .line 389
    return-void

    .line 382
    .end local v0    # "digits":I
    :cond_1
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0
.end method

.method public valuesToHighlight()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
