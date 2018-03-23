.class public Lcom/androidplot/xy/LTTBSampler;
.super Ljava/lang/Object;
.source "LTTBSampler.java"

# interfaces
.implements Lcom/androidplot/xy/Sampler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 36
    .param p1, "rawData"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "sampled"    # Lcom/androidplot/xy/EditableXYSeries;

    .prologue
    .line 29
    new-instance v7, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v7}, Lcom/androidplot/xy/RectRegion;-><init>()V

    .line 30
    .local v7, "bounds":Lcom/androidplot/xy/RectRegion;
    invoke-interface/range {p2 .. p2}, Lcom/androidplot/xy/EditableXYSeries;->size()I

    move-result v33

    .line 31
    .local v33, "threshold":I
    invoke-interface/range {p1 .. p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v9

    .line 32
    .local v9, "dataLength":I
    const/16 v32, 0x0

    .line 34
    .local v32, "startIndex":I
    move/from16 v0, v33

    if-ge v0, v9, :cond_0

    if-nez v33, :cond_1

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Shouldnt be here!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_1
    const/4 v6, 0x0

    .line 42
    .local v6, "sampledIndex":I
    add-int/lit8 v2, v9, -0x2

    int-to-double v2, v2

    add-int/lit8 v4, v33, -0x2

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 43
    .local v12, "bucketSize":D
    const/4 v8, 0x0

    .line 44
    .local v8, "a":I
    const/16 v18, 0x0

    .line 45
    .local v18, "nextA":I
    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V

    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    add-int/lit8 v2, v33, -0x2

    if-ge v14, v2, :cond_9

    .line 49
    const-wide/16 v28, 0x0

    .line 50
    .local v28, "pointCX":D
    const-wide/16 v30, 0x0

    .line 51
    .local v30, "pointCY":D
    add-int/lit8 v2, v14, 0x1

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v27, v2, 0x1

    .line 52
    .local v27, "pointCStart":I
    add-int/lit8 v2, v14, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v25, v2, 0x1

    .line 53
    .local v25, "pointCEnd":I
    move/from16 v0, v25

    if-ge v0, v9, :cond_4

    .line 54
    :goto_1
    sub-int v26, v25, v27

    .line 55
    .local v26, "pointCSize":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 56
    add-int/lit8 v2, v27, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    add-int/lit8 v2, v27, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double v28, v28, v2

    .line 60
    :cond_2
    add-int/lit8 v2, v27, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 61
    add-int/lit8 v2, v27, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double v30, v30, v2

    .line 55
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .end local v26    # "pointCSize":I
    :cond_4
    move/from16 v25, v9

    .line 53
    goto :goto_1

    .line 64
    .restart local v26    # "pointCSize":I
    :cond_5
    move/from16 v0, v26

    int-to-double v2, v0

    div-double v28, v28, v2

    .line 65
    move/from16 v0, v26

    int-to-double v2, v0

    div-double v30, v30, v2

    .line 66
    add-int/lit8 v2, v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    .line 67
    .local v20, "pointAX":D
    add-int/lit8 v2, v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    .line 69
    .local v22, "pointAY":D
    add-int/lit8 v2, v14, 0x0

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v24, v2, 0x1

    .line 70
    .local v24, "pointBStart":I
    add-int/lit8 v2, v14, 0x1

    int-to-double v2, v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v19, v2, 0x1

    .line 71
    .local v19, "pointBEnd":I
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 72
    .local v16, "maxArea":D
    const/4 v15, 0x0

    .line 73
    .local v15, "maxAreaPoint":Lcom/androidplot/xy/XYCoords;
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 74
    sub-double v2, v20, v28

    add-int/lit8 v4, v24, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double v4, v4, v22

    mul-double/2addr v2, v4

    add-int/lit8 v4, v24, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double v4, v20, v4

    sub-double v34, v30, v22

    mul-double v4, v4, v34

    sub-double/2addr v2, v4

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v10, v2, v4

    .line 78
    .local v10, "area":D
    cmpl-double v2, v10, v16

    if-lez v2, :cond_7

    .line 79
    add-int/lit8 v2, v24, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_6

    .line 80
    const-string v2, "LTTB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null value encountered in raw data at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_6
    move-wide/from16 v16, v10

    .line 83
    new-instance v15, Lcom/androidplot/xy/XYCoords;

    .end local v15    # "maxAreaPoint":Lcom/androidplot/xy/XYCoords;
    add-int/lit8 v2, v24, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    add-int/lit8 v3, v24, 0x0

    .line 84
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 85
    .restart local v15    # "maxAreaPoint":Lcom/androidplot/xy/XYCoords;
    move/from16 v18, v24

    .line 73
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 88
    .end local v10    # "area":D
    :cond_8
    iget-object v4, v15, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v5, v15, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V

    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    move/from16 v8, v18

    .line 47
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 92
    .end local v15    # "maxAreaPoint":Lcom/androidplot/xy/XYCoords;
    .end local v16    # "maxArea":D
    .end local v19    # "pointBEnd":I
    .end local v20    # "pointAX":D
    .end local v22    # "pointAY":D
    .end local v24    # "pointBStart":I
    .end local v25    # "pointCEnd":I
    .end local v26    # "pointCSize":I
    .end local v27    # "pointCStart":I
    .end local v28    # "pointCX":D
    .end local v30    # "pointCY":D
    :cond_9
    add-int/lit8 v2, v9, 0x0

    add-int/lit8 v5, v2, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 94
    return-object v7
.end method

.method protected setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V
    .locals 0
    .param p1, "sampled"    # Lcom/androidplot/xy/EditableXYSeries;
    .param p2, "x"    # Ljava/lang/Number;
    .param p3, "y"    # Ljava/lang/Number;
    .param p4, "sampleIndex"    # I
    .param p5, "bounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 102
    invoke-virtual {p5, p2, p3}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 103
    invoke-interface {p1, p2, p4}, Lcom/androidplot/xy/EditableXYSeries;->setX(Ljava/lang/Number;I)V

    .line 104
    invoke-interface {p1, p3, p4}, Lcom/androidplot/xy/EditableXYSeries;->setY(Ljava/lang/Number;I)V

    .line 105
    return-void
.end method

.method protected setSample(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;IILcom/androidplot/xy/RectRegion;)V
    .locals 6
    .param p1, "raw"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "sampled"    # Lcom/androidplot/xy/EditableXYSeries;
    .param p3, "rawIndex"    # I
    .param p4, "sampleIndex"    # I
    .param p5, "bounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 98
    invoke-interface {p1, p3}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {p1, p3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/LTTBSampler;->setSample(Lcom/androidplot/xy/EditableXYSeries;Ljava/lang/Number;Ljava/lang/Number;ILcom/androidplot/xy/RectRegion;)V

    .line 99
    return-void
.end method
