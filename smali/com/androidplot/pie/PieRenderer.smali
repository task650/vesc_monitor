.class public Lcom/androidplot/pie/PieRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/pie/PieRenderer$DonutMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/SeriesRenderer",
        "<",
        "Lcom/androidplot/pie/PieChart;",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

.field private donutSize:F

.field private endDeg:F

.field private startDeg:F


# direct methods
.method public constructor <init>(Lcom/androidplot/pie/PieChart;)V
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/pie/PieChart;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidplot/pie/PieRenderer;->startDeg:F

    .line 36
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/androidplot/pie/PieRenderer;->endDeg:F

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    .line 40
    sget-object v0, Lcom/androidplot/pie/PieRenderer$DonutMode;->PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

    iput-object v0, p0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 50
    return-void
.end method


# virtual methods
.method protected calculateLineEnd(FFFF)Landroid/graphics/PointF;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rad"    # F
    .param p4, "deg"    # F

    .prologue
    .line 234
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLineEnd(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 10
    .param p1, "origin"    # Landroid/graphics/PointF;
    .param p2, "rad"    # F
    .param p3, "deg"    # F

    .prologue
    .line 239
    float-to-double v6, p3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v0, v6, v8

    .line 240
    .local v0, "radians":D
    float-to-double v6, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 241
    .local v2, "x":D
    float-to-double v6, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v4, v6, v8

    .line 244
    .local v4, "y":D
    new-instance v6, Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/PointF;->x:F

    double-to-float v8, v2

    add-float/2addr v7, v8

    iget v8, p1, Landroid/graphics/PointF;->y:F

    double-to-float v9, v4

    add-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method protected calculateScale([D)D
    .locals 6
    .param p1, "values"    # [D

    .prologue
    .line 214
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "total":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 216
    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    return-wide v4
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "formatter"    # Lcom/androidplot/pie/SegmentFormatter;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .prologue
    .line 31
    check-cast p3, Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/pie/PieRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/SegmentFormatter;)V

    return-void
.end method

.method protected drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;FFF)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "seg"    # Lcom/androidplot/pie/Segment;
    .param p4, "f"    # Lcom/androidplot/pie/SegmentFormatter;
    .param p5, "rad"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweep"    # F

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialInset()F

    move-result v5

    add-float p6, p6, v5

    .line 86
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialInset()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float p7, p7, v5

    .line 89
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p7, v5

    add-float v16, p6, v5

    .line 92
    .local v16, "halfSweepEndAngle":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOffset()F

    move-result v7

    .line 91
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v6, v7, v1}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v26

    .line 94
    .local v26, "translated":Landroid/graphics/PointF;
    move-object/from16 v0, v26

    iget v13, v0, Landroid/graphics/PointF;->x:F

    .line 95
    .local v13, "cx":F
    move-object/from16 v0, v26

    iget v14, v0, Landroid/graphics/PointF;->y:F

    .line 98
    .local v14, "cy":F
    sget-object v5, Lcom/androidplot/pie/PieRenderer$1;->$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-virtual {v6}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 106
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Not yet implemented."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :pswitch_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    mul-float v15, v5, p5

    .line 109
    .local v15, "donutSizePx":F
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOuterInset()F

    move-result v5

    sub-float v20, p5, v5

    .line 110
    .local v20, "outerRad":F
    const/4 v5, 0x0

    cmpl-float v5, v15, v5

    if-nez v5, :cond_2

    const/16 v17, 0x0

    .line 115
    .local v17, "innerRad":F
    :goto_1
    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v5, p7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 117
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p6

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v23

    .line 118
    .local v23, "r1Outer":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v22

    .line 121
    .local v22, "r1Inner":Landroid/graphics/PointF;
    add-float v5, p6, p7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v14, v1, v5}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v25

    .line 122
    .local v25, "r2Outer":Landroid/graphics/PointF;
    add-float v5, p6, p7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v14, v1, v5}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v24

    .line 124
    .local v24, "r2Inner":Landroid/graphics/PointF;
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 131
    .local v12, "clip":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v6, v20

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v7, v7, v20

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->right:F

    add-float v8, v8, v20

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v9, v9, v20

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v12, v5, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 136
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 140
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 143
    .local v21, "p":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v13, v20

    sub-float v7, v14, v20

    add-float v8, v13, v20

    add-float v9, v14, v20

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v21

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 149
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v13, v17

    sub-float v7, v14, v17

    add-float v8, v13, v17

    add-float v9, v14, v17

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float v6, p6, p7

    move/from16 v0, p7

    neg-float v7, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 160
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 163
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v25

    iget v8, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v25

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    .end local v12    # "clip":Landroid/graphics/Path;
    .end local v21    # "p":Landroid/graphics/Path;
    .end local v22    # "r1Inner":Landroid/graphics/PointF;
    .end local v23    # "r1Outer":Landroid/graphics/PointF;
    .end local v24    # "r2Inner":Landroid/graphics/PointF;
    .end local v25    # "r2Outer":Landroid/graphics/PointF;
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v13, v14, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v13, v14, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    sub-float v5, v20, v17

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v20, v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v5, v1}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v19

    .line 193
    .local v19, "labelOrigin":Landroid/graphics/PointF;
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/androidplot/pie/PieRenderer;->drawSegmentLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V

    .line 196
    :cond_0
    return-void

    .line 103
    .end local v15    # "donutSizePx":F
    .end local v17    # "innerRad":F
    .end local v19    # "labelOrigin":Landroid/graphics/PointF;
    .end local v20    # "outerRad":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    .line 104
    .restart local v15    # "donutSizePx":F
    :goto_3
    goto/16 :goto_0

    .line 103
    .end local v15    # "donutSizePx":F
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    add-float v15, p5, v5

    goto :goto_3

    .line 110
    .restart local v15    # "donutSizePx":F
    .restart local v20    # "outerRad":F
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getInnerInset()F

    move-result v5

    add-float v17, v15, v5

    goto/16 :goto_1

    .line 170
    .restart local v17    # "innerRad":F
    :cond_3
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 171
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 172
    .local v11, "chart":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v20

    invoke-virtual {v11, v13, v14, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 173
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 174
    .local v18, "inside":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v13, v14, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 175
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 176
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawSegmentLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "origin"    # Landroid/graphics/PointF;
    .param p3, "seg"    # Lcom/androidplot/pie/Segment;
    .param p4, "f"    # Lcom/androidplot/pie/SegmentFormatter;

    .prologue
    .line 200
    invoke-virtual {p3}, Lcom/androidplot/pie/Segment;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method public getContainingSegment(Landroid/graphics/PointF;)Lcom/androidplot/pie/Segment;
    .locals 24
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v19

    check-cast v19, Lcom/androidplot/pie/PieChart;

    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/pie/PieChart;->getPie()Lcom/androidplot/pie/PieWidget;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/androidplot/pie/PieWidget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    .line 277
    .local v10, "plotArea":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v19

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 278
    .local v9, "origin":Landroid/graphics/PointF;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    sub-float v4, v19, v20

    .line 279
    .local v4, "dx":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    sub-float v5, v19, v20

    .line 280
    .local v5, "dy":F
    float-to-double v0, v5

    move-wide/from16 v20, v0

    float-to-double v0, v4

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    .line 281
    .local v16, "theta":D
    const-wide v20, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, v16, v20

    .line 282
    .local v2, "angle":D
    const-wide/16 v20, 0x0

    cmpg-double v19, v2, v20

    if-gez v19, :cond_0

    .line 285
    const-wide v20, 0x4076800000000000L    # 360.0

    add-double v2, v2, v20

    .line 290
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v11

    .line 291
    .local v11, "seriesList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;>;"
    const/4 v6, 0x0

    .line 292
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getValues()[D

    move-result-object v18

    .line 293
    .local v18, "values":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/androidplot/pie/PieRenderer;->calculateScale([D)D

    move-result-wide v12

    .line 294
    .local v12, "scale":D
    move-object/from16 v0, p0

    iget v8, v0, Lcom/androidplot/pie/PieRenderer;->startDeg:F

    .line 295
    .local v8, "offset":F
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/androidplot/ui/SeriesBundle;

    .line 296
    .local v14, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    move v7, v8

    .line 297
    .local v7, "lastOffset":F
    aget-wide v20, v18, v6

    mul-double v20, v20, v12

    const-wide v22, 0x4076800000000000L    # 360.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v15, v0

    .line 298
    .local v15, "sweep":F
    add-float/2addr v8, v15

    .line 300
    float-to-double v0, v7

    move-wide/from16 v20, v0

    cmpl-double v20, v2, v20

    if-ltz v20, :cond_1

    float-to-double v0, v8

    move-wide/from16 v20, v0

    cmpg-double v20, v2, v20

    if-gtz v20, :cond_1

    .line 301
    invoke-virtual {v14}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v19

    check-cast v19, Lcom/androidplot/pie/Segment;

    .line 305
    .end local v7    # "lastOffset":F
    .end local v14    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    .end local v15    # "sweep":F
    :goto_1
    return-object v19

    .line 303
    .restart local v7    # "lastOffset":F
    .restart local v14    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    .restart local v15    # "sweep":F
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 304
    goto :goto_0

    .line 305
    .end local v7    # "lastOffset":F
    .end local v14    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    .end local v15    # "sweep":F
    :cond_2
    const/16 v19, 0x0

    goto :goto_1
.end method

.method public getEndDeg()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/androidplot/pie/PieRenderer;->endDeg:F

    return v0
.end method

.method public getRadius(Landroid/graphics/RectF;)F
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 53
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getStartDeg()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/androidplot/pie/PieRenderer;->startDeg:F

    return v0
.end method

.method protected getValues()[D
    .locals 8

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, "seriesList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [D

    .line 225
    .local v1, "result":[D
    const/4 v0, 0x0

    .line 226
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/ui/SeriesBundle;

    .line 227
    .local v3, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    invoke-virtual {v3}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v4

    check-cast v4, Lcom/androidplot/pie/Segment;

    invoke-virtual {v4}, Lcom/androidplot/pie/Segment;->getValue()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 229
    goto :goto_0

    .line 230
    .end local v3    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    :cond_0
    return-object v1
.end method

.method public bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v3, p3

    check-cast v3, Lcom/androidplot/pie/Segment;

    move-object v4, p4

    check-cast v4, Lcom/androidplot/pie/SegmentFormatter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/pie/PieRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "plotArea"    # Landroid/graphics/RectF;
    .param p3, "series"    # Lcom/androidplot/pie/Segment;
    .param p4, "formatter"    # Lcom/androidplot/pie/SegmentFormatter;
    .param p5, "stack"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/androidplot/ui/RenderStack;->disable(Ljava/lang/Class;)V

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/androidplot/pie/PieRenderer;->getRadius(Landroid/graphics/RectF;)F

    move-result v7

    .line 64
    .local v7, "radius":F
    new-instance v12, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v12, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 66
    .local v12, "origin":Landroid/graphics/PointF;
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getValues()[D

    move-result-object v16

    .line 67
    .local v16, "values":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/androidplot/pie/PieRenderer;->calculateScale([D)D

    move-result-wide v14

    .line 68
    .local v14, "scale":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/androidplot/pie/PieRenderer;->startDeg:F

    .line 70
    .local v11, "offset":F
    new-instance v4, Landroid/graphics/RectF;

    iget v2, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v7

    iget v3, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v7

    iget v5, v12, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    iget v6, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    .local v4, "rec":Landroid/graphics/RectF;
    const/4 v10, 0x0

    .line 73
    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/androidplot/ui/SeriesBundle;

    .line 74
    .local v13, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    move v8, v11

    .line 75
    .local v8, "lastOffset":F
    aget-wide v2, v16, v10

    mul-double/2addr v2, v14

    const-wide v18, 0x4076800000000000L    # 360.0

    mul-double v2, v2, v18

    double-to-float v9, v2

    .line 76
    .local v9, "sweep":F
    add-float/2addr v11, v9

    .line 77
    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v5

    check-cast v5, Lcom/androidplot/pie/Segment;

    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v6

    check-cast v6, Lcom/androidplot/pie/SegmentFormatter;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/androidplot/pie/PieRenderer;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;FFF)V

    .line 78
    add-int/lit8 v10, v10, 0x1

    .line 79
    goto :goto_0

    .line 80
    .end local v8    # "lastOffset":F
    .end local v9    # "sweep":F
    .end local v13    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<Lcom/androidplot/pie/Segment;+Lcom/androidplot/pie/SegmentFormatter;>;"
    :cond_0
    return-void
.end method

.method public setDonutSize(FLcom/androidplot/pie/PieRenderer$DonutMode;)V
    .locals 2
    .param p1, "size"    # F
    .param p2, "mode"    # Lcom/androidplot/pie/PieRenderer$DonutMode;

    .prologue
    .line 248
    sget-object v0, Lcom/androidplot/pie/PieRenderer$1;->$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode:[I

    invoke-virtual {p2}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size parameter must be between 0 and 1 when operating in PERCENT mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    :pswitch_1
    iput-object p2, p0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 261
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    .line 262
    return-void

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndDeg(F)V
    .locals 0
    .param p1, "deg"    # F

    .prologue
    .line 317
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->endDeg:F

    .line 318
    return-void
.end method

.method public setStartDeg(F)V
    .locals 0
    .param p1, "deg"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->startDeg:F

    .line 310
    return-void
.end method
