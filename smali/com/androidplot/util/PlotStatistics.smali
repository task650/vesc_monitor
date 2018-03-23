.class public Lcom/androidplot/util/PlotStatistics;
.super Ljava/lang/Object;
.source "PlotStatistics.java"

# interfaces
.implements Lcom/androidplot/PlotListener;


# instance fields
.field private annotatePlotEnabled:Z

.field annotationString:Ljava/lang/String;

.field lastAnnotation:J

.field lastLatency:J

.field lastStart:J

.field latencySamples:J

.field latencySum:J

.field longestRenderMs:J

.field private paint:Landroid/graphics/Paint;

.field shortestRenderMs:J

.field updateDelayMs:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "updateDelayMs"    # J
    .param p3, "annotatePlotEnabled"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    .line 35
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 36
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    .line 37
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    .line 39
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 40
    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    invoke-direct {p0}, Lcom/androidplot/util/PlotStatistics;->resetCounters()V

    .line 58
    iput-wide p1, p0, Lcom/androidplot/util/PlotStatistics;->updateDelayMs:J

    .line 59
    iput-boolean p3, p0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    .line 60
    return-void
.end method

.method private annotatePlot(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 76
    .local v6, "nowMs":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->lastAnnotation:J

    sub-long v4, v6, v10

    .line 77
    .local v4, "msSinceUpdate":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->updateDelayMs:J

    cmp-long v10, v4, v10

    if-ltz v10, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    div-long/2addr v10, v12

    long-to-float v2, v10

    .line 80
    .local v2, "avgLatency":F
    :goto_0
    const-string v11, "%.2f"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-lez v10, :cond_3

    const/high16 v10, 0x447a0000    # 1000.0f

    long-to-float v14, v4

    div-float/2addr v10, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    long-to-float v14, v14

    mul-float/2addr v10, v14

    :goto_1
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "overallFPS":Ljava/lang/String;
    const-string v11, "%.2f"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-lez v10, :cond_4

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v10, v2

    :goto_2
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "potentialFPS":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FPS (potential): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " FPS (actual): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Latency (ms) Avg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \nMin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Max: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/androidplot/util/PlotStatistics;->lastAnnotation:J

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/androidplot/util/PlotStatistics;->resetCounters()V

    .line 87
    .end local v2    # "avgLatency":F
    .end local v3    # "overallFPS":Ljava/lang/String;
    .end local v8    # "potentialFPS":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/androidplot/Plot;->getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v10

    iget-object v9, v10, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    .line 88
    .local v9, "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    if-eqz v10, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/androidplot/util/PlotStatistics;->annotationString:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidplot/util/PlotStatistics;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    :cond_1
    return-void

    .line 79
    .end local v9    # "r":Landroid/graphics/RectF;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 80
    .restart local v2    # "avgLatency":F
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 81
    .restart local v3    # "overallFPS":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method private resetCounters()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    .line 68
    const-wide/32 v0, 0x3b9ac9ff

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 69
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 70
    iput-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    .line 71
    return-void
.end method


# virtual methods
.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    .line 101
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->shortestRenderMs:J

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 106
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->longestRenderMs:J

    .line 108
    :cond_1
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    iget-wide v2, p0, Lcom/androidplot/util/PlotStatistics;->lastLatency:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySum:J

    .line 109
    iget-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->latencySamples:J

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/androidplot/util/PlotStatistics;->annotatePlot(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/util/PlotStatistics;->lastStart:J

    .line 96
    return-void
.end method

.method public setAnnotatePlotEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/androidplot/util/PlotStatistics;->annotatePlotEnabled:Z

    .line 64
    return-void
.end method
