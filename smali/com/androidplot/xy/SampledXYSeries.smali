.class public Lcom/androidplot/xy/SampledXYSeries;
.super Ljava/lang/Object;
.source "SampledXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/FastXYSeries;
.implements Lcom/androidplot/xy/OrderedXYSeries;


# instance fields
.field private activeSeries:Lcom/androidplot/xy/XYSeries;

.field private algorithm:Lcom/androidplot/xy/Sampler;

.field private bounds:Lcom/androidplot/xy/RectRegion;

.field private lastResamplingException:Ljava/lang/Exception;

.field private ratio:F

.field private rawData:Lcom/androidplot/xy/XYSeries;

.field private threshold:I

.field private final xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field private zoomLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/EditableXYSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;FI)V
    .locals 1
    .param p1, "rawData"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "ratio"    # F
    .param p3, "threshold"    # I

    .prologue
    .line 67
    invoke-static {p1}, Lcom/androidplot/util/SeriesUtils;->getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/androidplot/xy/SampledXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/OrderedXYSeries$XOrder;FI)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/OrderedXYSeries$XOrder;FI)V
    .locals 1
    .param p1, "rawData"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "xOrder"    # Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .param p3, "ratio"    # F
    .param p4, "threshold"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/androidplot/xy/LTTBSampler;

    invoke-direct {v0}, Lcom/androidplot/xy/LTTBSampler;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    .line 52
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    .line 53
    iput-object p2, p0, Lcom/androidplot/xy/SampledXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 54
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/SampledXYSeries;->setRatio(F)V

    .line 55
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/SampledXYSeries;->setThreshold(I)V

    .line 56
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->resample()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/XYSeries;
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/xy/SampledXYSeries;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    return-object v0
.end method

.method static synthetic access$100(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/xy/SampledXYSeries;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method static synthetic access$102(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;
    .locals 0
    .param p0, "x0"    # Lcom/androidplot/xy/SampledXYSeries;
    .param p1, "x1"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object p1
.end method

.method static synthetic access$202(Lcom/androidplot/xy/SampledXYSeries;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .param p0, "x0"    # Lcom/androidplot/xy/SampledXYSeries;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    return-object p1
.end method

.method protected static getZoomIndex(DD)I
    .locals 10
    .param p0, "zoomFactor"    # D
    .param p2, "ratio"    # D

    .prologue
    .line 137
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 138
    .local v2, "lhs":D
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 139
    .local v6, "rhs":D
    div-double v4, v2, v6

    .line 140
    .local v4, "log":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 141
    .local v0, "index":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithm()Lcom/androidplot/xy/Sampler;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    return-object v0
.end method

.method public getBounds()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getMaxZoomFactor()D
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/androidplot/xy/SampledXYSeries;->ratio:F

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/EditableXYSeries;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    return-object v0
.end method

.method public minMax()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public resample()V
    .locals 9

    .prologue
    .line 71
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    .line 73
    iget-object v6, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v6}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 74
    .local v1, "t":I
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v5, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    :goto_0
    iget v6, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    if-le v1, v6, :cond_0

    .line 76
    move v3, v1

    .line 77
    .local v3, "thisThreshold":I
    new-instance v2, Lcom/androidplot/xy/FixedSizeEditableXYSeries;

    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v2, "thisSeries":Lcom/androidplot/xy/EditableXYSeries;
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/androidplot/xy/SampledXYSeries$1;

    invoke-direct {v6, p0, v2}, Lcom/androidplot/xy/SampledXYSeries$1;-><init>(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/EditableXYSeries;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getZoomLevels()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 97
    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 98
    goto :goto_0

    .line 99
    .end local v2    # "thisSeries":Lcom/androidplot/xy/EditableXYSeries;
    .end local v3    # "thisThreshold":I
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 101
    .restart local v4    # "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 106
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_1
    iget-object v6, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    if-eqz v6, :cond_2

    .line 107
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Exception encountered during resampling"

    iget-object v8, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 110
    :cond_2
    return-void
.end method

.method public setAlgorithm(Lcom/androidplot/xy/Sampler;)V
    .locals 0
    .param p1, "algorithm"    # Lcom/androidplot/xy/Sampler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    .line 154
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->resample()V

    .line 155
    return-void
.end method

.method public setBounds(Lcom/androidplot/xy/RectRegion;)V
    .locals 0
    .param p1, "bounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 194
    return-void
.end method

.method public setRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput p1, p0, Lcom/androidplot/xy/SampledXYSeries;->ratio:F

    .line 215
    return-void
.end method

.method public setThreshold(I)V
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must be < original series size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput p1, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    .line 186
    return-void
.end method

.method public setZoomFactor(D)V
    .locals 5
    .param p1, "factor"    # D

    .prologue
    .line 123
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v2

    if-gtz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    iput-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v1

    float-to-double v2, v1

    invoke-static {p1, p2, v2, v3}, Lcom/androidplot/xy/SampledXYSeries;->getZoomIndex(DD)I

    move-result v0

    .line 128
    .local v0, "i":I
    iget-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeries;

    iput-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeries;

    iput-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    return v0
.end method
