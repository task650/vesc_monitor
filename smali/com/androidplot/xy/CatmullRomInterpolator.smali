.class public Lcom/androidplot/xy/CatmullRomInterpolator;
.super Ljava/lang/Object;
.source "CatmullRomInterpolator.java"

# interfaces
.implements Lcom/androidplot/xy/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;,
        Lcom/androidplot/xy/CatmullRomInterpolator$Params;,
        Lcom/androidplot/xy/CatmullRomInterpolator$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/xy/Interpolator",
        "<",
        "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static interpolate([D[DD)D
    .locals 20
    .param p0, "p"    # [D
    .param p1, "time"    # [D
    .param p2, "t"    # D

    .prologue
    .line 255
    const/4 v12, 0x0

    aget-wide v12, p0, v12

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    sub-double v14, v14, p2

    mul-double/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, p0, v14

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    sub-double v16, p2, v16

    mul-double v14, v14, v16

    const/16 v16, 0x1

    aget-wide v16, p1, v16

    const/16 v18, 0x0

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v2, v12, v14

    .line 256
    .local v2, "L01":D
    const/4 v12, 0x1

    aget-wide v12, p0, v12

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    sub-double v14, v14, p2

    mul-double/2addr v12, v14

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    const/16 v16, 0x1

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x2

    aget-wide v14, p0, v14

    const/16 v16, 0x1

    aget-wide v16, p1, v16

    sub-double v16, p2, v16

    mul-double v14, v14, v16

    const/16 v16, 0x2

    aget-wide v16, p1, v16

    const/16 v18, 0x1

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v6, v12, v14

    .line 257
    .local v6, "L12":D
    const/4 v12, 0x2

    aget-wide v12, p0, v12

    const/4 v14, 0x3

    aget-wide v14, p1, v14

    sub-double v14, v14, p2

    mul-double/2addr v12, v14

    const/4 v14, 0x3

    aget-wide v14, p1, v14

    const/16 v16, 0x2

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x3

    aget-wide v14, p0, v14

    const/16 v16, 0x2

    aget-wide v16, p1, v16

    sub-double v16, p2, v16

    mul-double v14, v14, v16

    const/16 v16, 0x3

    aget-wide v16, p1, v16

    const/16 v18, 0x2

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v10, v12, v14

    .line 258
    .local v10, "L23":D
    const/4 v12, 0x2

    aget-wide v12, p1, v12

    sub-double v12, v12, p2

    mul-double/2addr v12, v2

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x0

    aget-wide v14, p1, v14

    sub-double v14, p2, v14

    mul-double/2addr v14, v6

    const/16 v16, 0x2

    aget-wide v16, p1, v16

    const/16 v18, 0x0

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v4, v12, v14

    .line 259
    .local v4, "L012":D
    const/4 v12, 0x3

    aget-wide v12, p1, v12

    sub-double v12, v12, p2

    mul-double/2addr v12, v6

    const/4 v14, 0x3

    aget-wide v14, p1, v14

    const/16 v16, 0x1

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    sub-double v14, p2, v14

    mul-double/2addr v14, v10

    const/16 v16, 0x3

    aget-wide v16, p1, v16

    const/16 v18, 0x1

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v8, v12, v14

    .line 260
    .local v8, "L123":D
    const/4 v12, 0x2

    aget-wide v12, p1, v12

    sub-double v12, v12, p2

    mul-double/2addr v12, v4

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    const/16 v16, 0x1

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    sub-double v14, p2, v14

    mul-double/2addr v14, v8

    const/16 v16, 0x2

    aget-wide v16, p1, v16

    const/16 v18, 0x1

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double v0, v12, v14

    .line 261
    .local v0, "C12":D
    return-wide v0
.end method


# virtual methods
.method public interpolate(Lcom/androidplot/xy/XYSeries;ILcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;
    .locals 28
    .param p1, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "index"    # I
    .param p3, "params"    # Lcom/androidplot/xy/CatmullRomInterpolator$Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "I",
            "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/XYCoords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 202
    .local v18, "x":[D
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 203
    .local v19, "y":[D
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v11, v0, [D

    .line 204
    .local v11, "time":[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    .line 205
    add-int v24, p2, v8

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    aput-wide v24, v18, v8

    .line 206
    add-int v24, p2, v8

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    aput-wide v24, v19, v8

    .line 207
    int-to-double v0, v8

    move-wide/from16 v24, v0

    aput-wide v24, v11, v8

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 211
    .local v16, "tstart":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 212
    .local v12, "tend":D
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getType()Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-result-object v24

    sget-object v25, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Uniform:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 213
    const-wide/16 v14, 0x0

    .line 214
    .local v14, "total":D
    const/4 v8, 0x1

    :goto_1
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v8, v0, :cond_2

    .line 215
    aget-wide v24, v18, v8

    add-int/lit8 v26, v8, -0x1

    aget-wide v26, v18, v26

    sub-double v4, v24, v26

    .line 216
    .local v4, "dx":D
    aget-wide v24, v19, v8

    add-int/lit8 v26, v8, -0x1

    aget-wide v26, v19, v26

    sub-double v6, v24, v26

    .line 217
    .local v6, "dy":D
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getType()Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-result-object v24

    sget-object v25, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Centripetal:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 218
    mul-double v24, v4, v4

    mul-double v26, v6, v6

    add-double v24, v24, v26

    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v14, v14, v24

    .line 222
    :goto_2
    aput-wide v14, v11, v8

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 220
    :cond_1
    mul-double v24, v4, v4

    mul-double v26, v6, v6

    add-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v14, v14, v24

    goto :goto_2

    .line 224
    .end local v4    # "dx":D
    .end local v6    # "dy":D
    :cond_2
    const/16 v24, 0x1

    aget-wide v16, v11, v24

    .line 225
    const/16 v24, 0x2

    aget-wide v12, v11, v24

    .line 228
    .end local v14    # "total":D
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getPointPerSegment()I

    move-result v24

    add-int/lit8 v10, v24, -0x1

    .line 229
    .local v10, "segments":I
    new-instance v24, Lcom/androidplot/xy/XYCoords;

    add-int/lit8 v25, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v25

    add-int/lit8 v26, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v8, 0x1

    :goto_3
    if-ge v8, v10, :cond_4

    .line 231
    int-to-double v0, v8

    move-wide/from16 v24, v0

    sub-double v26, v12, v16

    mul-double v24, v24, v26

    int-to-double v0, v10

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-double v24, v24, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-static {v0, v11, v1, v2}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate([D[DD)D

    move-result-wide v20

    .line 232
    .local v20, "xi":D
    int-to-double v0, v8

    move-wide/from16 v24, v0

    sub-double v26, v12, v16

    mul-double v24, v24, v26

    int-to-double v0, v10

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-double v24, v24, v16

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-static {v0, v11, v1, v2}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate([D[DD)D

    move-result-wide v22

    .line 233
    .local v22, "yi":D
    new-instance v24, Lcom/androidplot/xy/XYCoords;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 235
    .end local v20    # "xi":D
    .end local v22    # "yi":D
    :cond_4
    new-instance v24, Lcom/androidplot/xy/XYCoords;

    add-int/lit8 v25, p2, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v25

    add-int/lit8 v26, p2, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v9
.end method

.method public interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;
    .locals 26
    .param p1, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "params"    # Lcom/androidplot/xy/CatmullRomInterpolator$Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "Lcom/androidplot/xy/CatmullRomInterpolator$Params;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/XYCoords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->getPointPerSegment()I

    move-result v13

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ge v13, v0, :cond_0

    .line 124
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v22, "pointsPerSegment must be greater than 2, since 2 points is just the linear segment."

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 130
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v13

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 131
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v22, "Cannot interpolate a series with fewer than 3 vertices."

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 135
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    sub-double v2, v22, v24

    .line 136
    .local v2, "dx":D
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    sub-double v4, v22, v24

    .line 139
    .local v4, "dy":D
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    sub-double v14, v22, v2

    .line 140
    .local v14, "x1":D
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    sub-double v18, v22, v4

    .line 143
    .local v18, "y1":D
    new-instance v12, Lcom/androidplot/xy/XYCoords;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v13, v0}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 146
    .local v12, "start":Lcom/androidplot/xy/XYCoords;
    invoke-interface/range {p1 .. p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    .line 147
    .local v9, "n":I
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    sub-double v2, v22, v24

    .line 148
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    sub-double v4, v22, v24

    .line 149
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-double v16, v22, v2

    .line 150
    .local v16, "xn":D
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    add-double v20, v22, v4

    .line 151
    .local v20, "yn":D
    new-instance v6, Lcom/androidplot/xy/XYCoords;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v13, v0}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 162
    .local v6, "end":Lcom/androidplot/xy/XYCoords;
    new-instance v7, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v12, v6}, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V

    .line 165
    .local v7, "extrapolatedXYSeries":Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x3

    if-ge v8, v13, :cond_3

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v8, v1}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate(Lcom/androidplot/xy/XYSeries;ILcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;

    move-result-object v10

    .line 177
    .local v10, "points":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 178
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_2
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 184
    .end local v10    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYCoords;>;"
    :cond_3
    return-object v11
.end method

.method public bridge synthetic interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/InterpolationParams;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lcom/androidplot/xy/CatmullRomInterpolator$Params;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/CatmullRomInterpolator;->interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/CatmullRomInterpolator$Params;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
