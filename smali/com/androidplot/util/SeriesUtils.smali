.class public Lcom/androidplot/util/SeriesUtils;
.super Ljava/lang/Object;
.source "SeriesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getNullRegion(Lcom/androidplot/xy/XYSeries;I)Lcom/androidplot/Region;
    .locals 6
    .param p0, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p1, "index"    # I

    .prologue
    .line 231
    new-instance v1, Lcom/androidplot/Region;

    invoke-direct {v1}, Lcom/androidplot/Region;-><init>()V

    .line 232
    .local v1, "region":Lcom/androidplot/Region;
    invoke-interface {p0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to find null region for non null index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 236
    invoke-interface {p0, v0}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    .line 237
    .local v2, "val":Ljava/lang/Number;
    if-eqz v2, :cond_3

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 243
    .end local v2    # "val":Ljava/lang/Number;
    :cond_1
    add-int/lit8 v0, p1, 0x1

    :goto_1
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 244
    invoke-interface {p0, v0}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v2

    .line 245
    .restart local v2    # "val":Ljava/lang/Number;
    if-eqz v2, :cond_4

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 250
    .end local v2    # "val":Ljava/lang/Number;
    :cond_2
    return-object v1

    .line 235
    .restart local v2    # "val":Ljava/lang/Number;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1
    .param p0, "series"    # Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 289
    instance-of v0, p0, Lcom/androidplot/xy/OrderedXYSeries;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/androidplot/xy/OrderedXYSeries;

    .line 290
    .end local p0    # "series":Lcom/androidplot/xy/XYSeries;
    invoke-interface {p0}, Lcom/androidplot/xy/OrderedXYSeries;->getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object v0

    .line 289
    .restart local p0    # "series":Lcom/androidplot/xy/XYSeries;
    :goto_0
    return-object v0

    .line 290
    :cond_0
    sget-object v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    goto :goto_0
.end method

.method public static iBounds(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/Region;
    .locals 6
    .param p0, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p1, "visibleBounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 138
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_0

    const/high16 v2, 0x42480000    # 50.0f

    .line 139
    .local v2, "step":F
    :goto_0
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {p0, v4, v5, v2}, Lcom/androidplot/util/SeriesUtils;->iBoundsMin(Lcom/androidplot/xy/XYSeries;DF)I

    move-result v1

    .line 140
    .local v1, "iBoundsMin":I
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {p0, v4, v5, v2}, Lcom/androidplot/util/SeriesUtils;->iBoundsMax(Lcom/androidplot/xy/XYSeries;DF)I

    move-result v0

    .line 141
    .local v0, "iBoundsMax":I
    new-instance v3, Lcom/androidplot/Region;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object v3

    .line 138
    .end local v0    # "iBoundsMax":I
    .end local v1    # "iBoundsMin":I
    .end local v2    # "step":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected static iBoundsMax(Lcom/androidplot/xy/XYSeries;DF)I
    .locals 15
    .param p0, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p1, "visibleMax"    # D
    .param p3, "step"    # F

    .prologue
    .line 155
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 156
    .local v5, "max":I
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    .line 157
    .local v6, "seriesSize":I
    int-to-float v12, v6

    div-float v12, v12, p3

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v8, v12

    .line 158
    .local v8, "steps":I
    move v7, v8

    .local v7, "stepIndex":I
    :goto_0
    if-ltz v7, :cond_2

    .line 159
    move/from16 v0, p3

    float-to-int v12, v0

    mul-int v2, v7, v12

    .line 160
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_1
    int-to-float v12, v3

    cmpg-float v12, v12, p3

    if-gez v12, :cond_0

    .line 161
    add-int v4, v2, v3

    .line 162
    .local v4, "iii":I
    if-ge v4, v6, :cond_3

    .line 163
    invoke-interface {p0, v4}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v9

    .line 164
    .local v9, "thisX":Ljava/lang/Number;
    if-eqz v9, :cond_3

    .line 165
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 166
    .local v10, "thisDouble":D
    cmpl-double v12, v10, p1

    if-lez v12, :cond_1

    .line 169
    move v5, v4

    .line 158
    .end local v4    # "iii":I
    .end local v9    # "thisX":Ljava/lang/Number;
    .end local v10    # "thisDouble":D
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 171
    .restart local v4    # "iii":I
    .restart local v9    # "thisX":Ljava/lang/Number;
    .restart local v10    # "thisDouble":D
    :cond_1
    cmpl-double v12, v10, p1

    if-nez v12, :cond_2

    move v5, v4

    .line 180
    .end local v2    # "i":I
    .end local v3    # "ii":I
    .end local v4    # "iii":I
    .end local v5    # "max":I
    .end local v9    # "thisX":Ljava/lang/Number;
    .end local v10    # "thisDouble":D
    :cond_2
    return v5

    .line 160
    .restart local v2    # "i":I
    .restart local v3    # "ii":I
    .restart local v4    # "iii":I
    .restart local v5    # "max":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected static iBoundsMin(Lcom/androidplot/xy/XYSeries;DF)I
    .locals 11
    .param p0, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p1, "visibleMin"    # D
    .param p3, "step"    # F

    .prologue
    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "min":I
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, p3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 196
    .local v5, "steps":I
    const/4 v4, 0x1

    .local v4, "stepIndex":I
    :goto_0
    if-gt v4, v5, :cond_3

    .line 197
    float-to-int v7, p3

    mul-int v0, v4, v7

    .line 198
    .local v0, "i":I
    const/4 v1, 0x1

    .local v1, "ii":I
    :goto_1
    int-to-float v7, v1

    cmpg-float v7, v7, p3

    if-gtz v7, :cond_0

    .line 199
    sub-int v2, v0, v1

    .line 200
    .local v2, "iii":I
    if-gez v2, :cond_1

    .line 196
    .end local v2    # "iii":I
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    .restart local v2    # "iii":I
    :cond_1
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 204
    invoke-interface {p0, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v6

    .line 205
    .local v6, "thisX":Ljava/lang/Number;
    if-eqz v6, :cond_4

    .line 206
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpg-double v7, v8, p1

    if-gez v7, :cond_2

    .line 209
    move v3, v2

    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpl-double v7, v8, p1

    if-nez v7, :cond_3

    move v3, v2

    .line 220
    .end local v0    # "i":I
    .end local v1    # "ii":I
    .end local v2    # "iii":I
    .end local v3    # "min":I
    .end local v6    # "thisX":Ljava/lang/Number;
    :cond_3
    return v3

    .line 198
    .restart local v0    # "i":I
    .restart local v1    # "ii":I
    .restart local v2    # "iii":I
    .restart local v3    # "min":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 265
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v10, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Number;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v11, 0xf4240

    if-ge v1, v11, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/16 v3, 0x14

    .line 270
    .local v3, "numIterations":I
    const-wide/16 v6, 0x0

    .line 271
    .local v6, "sumTime":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v11, 0x14

    if-ge v2, v11, :cond_1

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 273
    .local v4, "startTime":J
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/util/List;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v11}, Lcom/androidplot/util/SeriesUtils;->minMax([Ljava/util/List;)Lcom/androidplot/Region;

    move-result-object v0

    .line 274
    .local v0, "bounds":Lcom/androidplot/Region;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v4

    .line 275
    .local v8, "thisIteration":J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "thisIteration took: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    add-long/2addr v6, v8

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "bounds":Lcom/androidplot/Region;
    .end local v4    # "startTime":J
    .end local v8    # "thisIteration":J
    :cond_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Benchmark avg:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x14

    div-long v14, v6, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static varargs minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;
    .locals 6
    .param p0, "bounds"    # Lcom/androidplot/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/Region;",
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/androidplot/Region;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "lists":[Ljava/util/List;, "[Ljava/util/List<Ljava/lang/Number;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 123
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 124
    .local v0, "i":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    goto :goto_1

    .line 122
    .end local v0    # "i":Ljava/lang/Number;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_1
    return-object p0
.end method

.method public static varargs minMax([Ljava/util/List;)Lcom/androidplot/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/androidplot/Region;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "lists":[Ljava/util/List;, "[Ljava/util/List<Ljava/lang/Number;>;"
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;

    move-result-object v0

    return-object v0
.end method

.method public static minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .param p0, "constraints"    # Lcom/androidplot/xy/XYConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYConstraints;",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/XYSeries;",
            ">;)",
            "Lcom/androidplot/xy/RectRegion;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "seriesList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYSeries;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/androidplot/xy/XYSeries;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYSeries;

    invoke-static {p0, v0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    return-object v0
.end method

.method public static varargs minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 10
    .param p0, "constraints"    # Lcom/androidplot/xy/XYConstraints;
    .param p1, "seriesArray"    # [Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 76
    new-instance v1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    .line 79
    .local v1, "bounds":Lcom/androidplot/xy/RectRegion;
    if-eqz p1, :cond_6

    array-length v6, p1

    if-lez v6, :cond_6

    .line 82
    array-length v7, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v3, p1, v6

    .line 85
    .local v3, "series":Lcom/androidplot/xy/XYSeries;
    instance-of v8, v3, Lcom/androidplot/xy/FastXYSeries;

    if-eqz v8, :cond_3

    .line 86
    check-cast v3, Lcom/androidplot/xy/FastXYSeries;

    .end local v3    # "series":Lcom/androidplot/xy/XYSeries;
    invoke-interface {v3}, Lcom/androidplot/xy/FastXYSeries;->minMax()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 87
    .local v0, "b":Lcom/androidplot/xy/RectRegion;
    if-nez p0, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Lcom/androidplot/xy/RectRegion;->union(Lcom/androidplot/xy/RectRegion;)V

    .line 82
    .end local v0    # "b":Lcom/androidplot/xy/RectRegion;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .restart local v0    # "b":Lcom/androidplot/xy/RectRegion;
    :cond_1
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    goto :goto_1

    .line 98
    .end local v0    # "b":Lcom/androidplot/xy/RectRegion;
    .restart local v3    # "series":Lcom/androidplot/xy/XYSeries;
    :cond_3
    invoke-interface {v3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 100
    invoke-interface {v3, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v4

    .line 101
    .local v4, "xi":Ljava/lang/Number;
    invoke-interface {v3, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v5

    .line 104
    .local v5, "yi":Ljava/lang/Number;
    if-eqz p0, :cond_4

    invoke-virtual {p0, v4, v5}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 105
    :cond_4
    invoke-virtual {v1, v4, v5}, Lcom/androidplot/xy/RectRegion;->union(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 99
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    .end local v2    # "i":I
    .end local v3    # "series":Lcom/androidplot/xy/XYSeries;
    .end local v4    # "xi":Ljava/lang/Number;
    .end local v5    # "yi":Ljava/lang/Number;
    :cond_6
    return-object v1
.end method

.method public static minMax(Ljava/util/List;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/XYSeries;",
            ">;)",
            "Lcom/androidplot/xy/RectRegion;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "seriesList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/XYSeries;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    return-object v0
.end method

.method public static varargs minMax([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 1
    .param p0, "seriesList"    # [Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;[Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    return-object v0
.end method

.method public static varargs minMaxX([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;
    .locals 6
    .param p0, "seriesList"    # [Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 38
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 39
    .local v0, "bounds":Lcom/androidplot/Region;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p0, v3

    .line 40
    .local v2, "series":Lcom/androidplot/xy/XYSeries;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 41
    invoke-interface {v2, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    .end local v2    # "series":Lcom/androidplot/xy/XYSeries;
    :cond_1
    return-object v0
.end method

.method public static varargs minMaxY([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;
    .locals 6
    .param p0, "seriesList"    # [Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 48
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 49
    .local v0, "bounds":Lcom/androidplot/Region;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p0, v3

    .line 50
    .local v2, "series":Lcom/androidplot/xy/XYSeries;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 51
    invoke-interface {v2, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    .end local v2    # "series":Lcom/androidplot/xy/XYSeries;
    :cond_1
    return-object v0
.end method
